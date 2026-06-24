#!/bin/bash
# gen_link.sh — generates link.ld for N clusters
# Usage: ./gen_link.sh <NB_CLUSTERS> > link.ld

N=${1:-1}

cat << 'EOF_HEADER'
MEMORY
{
  L2      : ORIGIN = 0x1c000004, LENGTH = 0x0007fffc
  L1      : ORIGIN = 0x10000004, LENGTH = 0x0000fffc
EOF_HEADER

for ((cl=1; cl<N; cl++)); do
    addr=$(printf "0x%08X" $((0x10000004 + cl * 0x00400000)))
    echo "  L1_CL${cl}  : ORIGIN = ${addr}, LENGTH = 0x0000fffc"
done

echo "}"
echo ""

for ((cl=1; cl<N; cl++)); do
    cat << EOF_SECTION
.l1cluster_g_cl${cl} : {
    . = ALIGN(4);
    *(.l1cluster_g_cl${cl})
    *(.l1cluster_g_cl${cl}.*)
    *(.data_l1_cl${cl})
    . = ALIGN(4);
} > L1_CL${cl}

.bss_l1_cl${cl} : {
    . = ALIGN(4);
    *(.bss_l1_cl${cl})
    . = ALIGN(4);
} > L1_CL${cl}

__l1_cl${cl}_end        = ALIGN(4);
__l1_cl${cl}_heap_start = ALIGN(4);
__l1_cl${cl}_heap_size  = LENGTH(L1_CL${cl}) - (__l1_cl${cl}_heap_start - ORIGIN(L1_CL${cl}));

EOF_SECTION
done
