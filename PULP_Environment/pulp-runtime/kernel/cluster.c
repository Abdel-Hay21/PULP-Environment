/*
 * Copyright (C) 2019 ETH Zurich, University of Bologna
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "pulp.h"
#include <stdio.h>
#include <stdlib.h>

/* Per-cluster entry point and stack base.
 * Placed in L2 shared so all clusters can read via AXI.              */
__attribute__((section(".l2_data"))) volatile void *cluster_entry[ARCHI_NB_CLUSTER];
__attribute__((section(".l2_data"))) char          *cluster_stacks[ARCHI_NB_CLUSTER];

/* Per-cluster sync state.                                             */
__attribute__((section(".l2_data"))) static volatile int cluster_running[ARCHI_NB_CLUSTER];
__attribute__((section(".l2_data"))) static volatile int cluster_retval[ARCHI_NB_CLUSTER];

/* ── internal helpers ─────────────────────────────────────────────── */

static void pos_wait_forever(void)
{
    eu_evt_maskClr(0xffffffff);
    eu_evt_wait();
    while (1);
}

static void cluster_core_init(void)
{
    eu_evt_maskSet(  (1 << PULP_DISPATCH_EVENT)
                   | (1 << PULP_MUTEX_EVENT)
                   | (1 << PULP_HW_BAR_EVENT));
    eu_bar_setup(eu_bar_addr(0), (1 << ARCHI_CLUSTER_NB_PE) - 1);
}

/* ── cluster_entry_stub ────────────────────────────────────────────── */

void cluster_entry_stub(void)
{
    cluster_core_init();
    synch_barrier();                         /* all 8 cores reach stacks */

    int cid = hal_cluster_id();

    /* Cast stored pointer to void(*)(void) for the actual call.
     * The entry function may have a different signature (e.g. main)
     * but in ARCHI_NO_FC mode that is intentional.                   */
    ((void (*)(void))cluster_entry[cid])();

    synch_barrier();                         /* all 8 cores finished */

    if (hal_core_id() == 0)
    {
        cluster_retval[cid] = 0;
        __asm__ __volatile__ ("" : : : "memory");   /* fence */
        cluster_running[cid] = 0;

#ifdef ARCHI_NO_FC
        hal_cluster_ctrl_return_set_remote(cid, 0);
        hal_cluster_ctrl_eoc_set_remote(cid, 1);
        exit(0);
#endif
    }

    pos_wait_forever();
}

/* ── Public API ────────────────────────────────────────────────────── */

/* Unprototyped int(*)() matches any function pointer passed by callers
 * (init.c passes main, bench.c passes int(*)(), main.c passes
 * void(*)(void)). Stored as void* and cast in cluster_entry_stub.    */
void cluster_start(int cid, int (*entry)())
{
  //  printf("[CS%d] 1: storing entry\n", cid);
    cluster_entry[cid] = (void *)entry;
    __asm__ __volatile__ ("" : : : "memory");

#ifndef ARCHI_NO_FC
   // printf("[CS%d] 2: pos_fll_init\n", cid);
    pos_fll_init(POS_FLL_CL);
  //  printf("[CS%d] 2: done\n", cid);
#endif

  //  printf("[CS%d] 3: alloc_init_l1\n", cid);
    alloc_init_l1(cid);
   // printf("[CS%d] 3: done\n", cid);

   // printf("[CS%d] 4: hal_icache_cluster_enable\n", cid);
    hal_icache_cluster_enable(cid);
   // printf("[CS%d] 4: done\n", cid);

   // printf("[CS%d] 5: pi_l1_malloc\n", cid);
    cluster_stacks[cid] = pi_l1_malloc(cid,
                              ARCHI_CLUSTER_NB_PE * CLUSTER_STACK_SIZE);
  //  printf("[CS%d] 5: stack=%p\n", cid, cluster_stacks[cid]);

    if (cluster_stacks[cid] == NULL) {
        printf("[CS%d] ERROR: stack alloc failed — aborting\n", cid);
        return;
    }

    cluster_running[cid] = 1;
    __asm__ __volatile__ ("" : : : "memory");

#ifndef ARCHI_NO_FC
  //  printf("[CS%d] 6: setting boot addrs\n", cid);
    for (int i = 0; i < ARCHI_CLUSTER_NB_PE; i++) {
    //    printf("[CS%d] 6: core %d\n", cid, i);
        plp_ctrl_core_bootaddr_set_remote(cid, i, (unsigned int)_start);
      //  printf("[CS%d] 6: core %d done\n", cid, i);
    }
//    printf("[CS%d] 7: eoc_fetch_enable_remote\n", cid);
    eoc_fetch_enable_remote(cid, (1 << ARCHI_CLUSTER_NB_PE) - 1);
  //  printf("[CS%d] 7: done\n", cid);
#endif
    printf("[CS%d] cluster_start complete\n", cid);
}

int cluster_wait(int cid)
{
    while (cluster_running[cid])
        __asm__ __volatile__ ("" : : : "memory");
    return cluster_retval[cid];
}

int cluster_wait_all(void)
{
    int retval = 0;
    for (int cid = 0; cid < ARCHI_NB_CLUSTER; cid++)
        retval |= cluster_wait(cid);
    return retval;
}

void synch_barrier(void)
{
#ifdef ARCHI_FC_CID
    if (hal_cluster_id() != ARCHI_FC_CID)
#endif
    {
        eu_bar_trig_wait_clr(eu_bar_addr(0));
    }
}
