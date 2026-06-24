/*
 * Multi-cluster boot API for PULP
 * Builds on top of existing hal/cluster_ctrl/cluster_ctrl_v2.h
 * Uses ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(cid) which already
 * encodes: 0x10000000 + cid * 0x00400000 + 0x00200000
 */

#ifndef __HAL_CLUSTER_BOOT_H__
#define __HAL_CLUSTER_BOOT_H__

#include "archi/chips/pulp_cluster/memory_map.h"
#include "archi/chips/pulp_cluster/properties.h"
#include "hal/cluster_ctrl/cluster_ctrl_v2.h"
#include "archi/pulp_defs.h"

/*
 * Boot a single cluster by cluster ID.
 *
 * cid       : cluster index (0 .. ARCHI_NB_CLUSTER-1)
 * boot_addr : address all cores jump to on fetch enable
 *             typically the cluster entry point in L2 shared
 */
static inline void cluster_boot_remote(int cid, unsigned int boot_addr)
{
    int core;

    /* Step 1: Write boot address into every core's boot address register.
     * Uses the existing HAL function which writes to:
     *   ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(cid)

     *     + ARCHI_CLUSTER_CTRL_OFFSET
     *     + 0x40 + core*4
     */
    for (core = 0; core < ARCHI_CLUSTER_NB_PE; core++)
    {
        plp_ctrl_core_bootaddr_set_remote(cid, core, boot_addr);
    }

    /* Step 2: Clear EOC flag before enabling fetch */
    hal_cluster_ctrl_eoc_set_remote(cid, 0);

    /* Step 3: Enable fetch for all cores (one bit per core, 8 cores = 0xFF) */
    eoc_fetch_enable_remote(cid, (1 << ARCHI_CLUSTER_NB_PE) - 1);
}

/*
 * Boot all clusters to the same entry point.
 * Call this from FC after L2 is loaded and cluster code is ready.
 */
static inline void cluster_boot_all(unsigned int boot_addr)
{
    int cid;
    for (cid = 0; cid < ARCHI_NB_CLUSTER; cid++)
        cluster_boot_remote(cid, boot_addr);
}

/*
 * Poll until a specific cluster sets its EOC (end-of-computation) flag.
 * The cluster signals done by calling hal_cluster_ctrl_eoc_set_remote
 * with bit 31 set (ARCHI_CLUSTER_CTRL_RETURN_SHIFT_BITS = 31).
 */
static inline void cluster_wait_eoc(int cid)
{
    /* Read EOC register at:
     *   ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(cid) + ARCHI_CLUSTER_CTRL_OFFSET
     * Bit 0 = EOC done flag (set by cluster core 0 when finished)
     */
    volatile unsigned int *eoc_reg =
        (volatile unsigned int *)
        (ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(cid) + ARCHI_CLUSTER_CTRL_OFFSET
         + ARCHI_CLUSTER_CTRL_EOC);

    while (!(*eoc_reg & 0x1));
}

/*
 * Block FC until ALL clusters have set their EOC flag.
 */
static inline void cluster_wait_all_eoc(void)
{
    int cid;
    for (cid = 0; cid < ARCHI_NB_CLUSTER; cid++)
        cluster_wait_eoc(cid);
}

/*
 * Halt a cluster after EOC: disable fetch, then clock-gate.
 */
static inline void cluster_halt_remote(int cid)
{
    /* Disable fetch for all cores */
    eoc_fetch_enable_remote(cid, 0);

    /* Clock gate the cluster */
    pulp_write32(
        ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(cid)
        + ARCHI_CLUSTER_CTRL_OFFSET
        + ARCHI_CLUSTER_CTRL_CLUSTER_CLK_GATE,
        1);
}

/*
 * Wait for EOC then halt — the normal shutdown sequence.
 */
static inline void cluster_wait_and_halt(int cid)
{
    cluster_wait_eoc(cid);
    cluster_halt_remote(cid);
}

static inline void cluster_wait_and_halt_all(void)
{
    int cid;
    for (cid = 0; cid < ARCHI_NB_CLUSTER; cid++)
        cluster_wait_and_halt(cid);
}

#endif /* __HAL_CLUSTER_BOOT_H__ */


