#include "pulp.h"
#include <stdio.h>

// Shared flags in L2 — visible to FC and all clusters via AXI
__attribute__((section(".l2_data"))) volatile int cl_done[8] = {0};

/* ── Cluster entry (one per cluster, same pattern as your original) ── */

void cluster0_entry(void) {
    int cid = hal_cluster_id();
    int core = hal_core_id();
    if (core == 0) {
        printf("[CL%d PE%d] hello from cluster 0\n", cid, core);
        cl_done[0] = 1;
        __asm__ __volatile__ ("" : : : "memory");
    }
}

void cluster1_entry(void) {
    int cid = hal_cluster_id();
    int core = hal_core_id();
    if (core == 0) {
        if (cid != 1)
            printf("[CL%d PE%d] ERROR: expected cid=1, got %d\n", cid, core, cid);
        else
            printf("[CL%d PE%d] hello from cluster 1\n", cid, core);
        cl_done[1] = 1;
        __asm__ __volatile__ ("" : : : "memory");
    }
}

void cluster2_entry(void) {
    int cid = hal_cluster_id();
    int core = hal_core_id();
    if (core == 0) {
        if (cid != 2)
            printf("[CL%d PE%d] ERROR: expected cid=2, got %d\n", cid, core, cid);
        else
            printf("[CL%d PE%d] hello from cluster 2\n", cid, core);
        cl_done[2] = 1;
        __asm__ __volatile__ ("" : : : "memory");
    }
}

void cluster3_entry(void) {
    int cid = hal_cluster_id();
    int core = hal_core_id();
    if (core == 0) {
        if (cid != 3)
            printf("[CL%d PE%d] ERROR: expected cid=3, got %d\n", cid, core, cid);
        else
            printf("[CL%d PE%d] hello from cluster 3\n", cid, core);
        cl_done[3] = 1;
        __asm__ __volatile__ ("" : : : "memory");
    }
}

void cluster4_entry(void) {
    int cid = hal_cluster_id();
    int core = hal_core_id();
    if (core == 0) {
        if (cid != 4)
            printf("[CL%d PE%d] ERROR: expected cid=4, got %d\n", cid, core, cid);
        else
            printf("[CL%d PE%d] hello from cluster 4\n", cid, core);
        cl_done[4] = 1;
        __asm__ __volatile__ ("" : : : "memory");
    }
}

void cluster5_entry(void) {
    int cid = hal_cluster_id();
    int core = hal_core_id();
    if (core == 0) {
        if (cid != 5)
            printf("[CL%d PE%d] ERROR: expected cid=5, got %d\n", cid, core, cid);
        else
            printf("[CL%d PE%d] hello from cluster 5\n", cid, core);
        cl_done[5] = 1;
        __asm__ __volatile__ ("" : : : "memory");
    }
}

void cluster6_entry(void) {
    int cid = hal_cluster_id();
    int core = hal_core_id();
    if (core == 0) {
        if (cid != 6)
            printf("[CL%d PE%d] ERROR: expected cid=6, got %d\n", cid, core, cid);
        else
            printf("[CL%d PE%d] hello from cluster 6\n", cid, core);
        cl_done[6] = 1;
        __asm__ __volatile__ ("" : : : "memory");
    }
}

void cluster7_entry(void) {
    int cid = hal_cluster_id();
    int core = hal_core_id();
    if (core == 0) {
        if (cid != 7)
            printf("[CL%d PE%d] ERROR: expected cid=7, got %d\n", cid, core, cid);
        else
            printf("[CL%d PE%d] hello from cluster 7\n", cid, core);
        cl_done[7] = 1;
        __asm__ __volatile__ ("" : : : "memory");
    }
}

/* ── FC main ─────────────────────────────────────────────────────── */

// Table so we can loop over them
static void (*cluster_entries[8])(void) = {
    cluster0_entry,
    cluster1_entry,
    cluster2_entry,
    cluster3_entry,
    cluster4_entry,
    cluster5_entry,
    cluster6_entry,
    cluster7_entry,
};

int main(void)
{
    printf("FC: ARCHI_NB_CLUSTER = %d\n", ARCHI_NB_CLUSTER);

    // Boot and wait for each cluster one at a time (same as your original)
    for (int cid = 0; cid < 8; cid++) {

        // Read CTRL register before starting (same debug print as your original)
        volatile unsigned int *ctrl = (volatile unsigned int *)(0x1A104100 + cid * 0x10);

        printf("FC: CL%d CTRL reg = 0x%08x (bit3=rstn)\n", cid, *ctrl);

        cluster_start(cid, cluster_entries[cid]);

        volatile int timeout = 0;
        while (!cl_done[cid]) {
            __asm__ __volatile__ ("" : : : "memory");
            if (++timeout > 5000000) {
                printf("FC: TIMEOUT — cluster %d never finished\n", cid);
                return 1;
            }
        }
        cluster_wait(cid);
        printf("FC: Cluster %d done\n", cid);
    }

    printf("FC: all 8 clusters done — test PASS\n");
    return 0;
}