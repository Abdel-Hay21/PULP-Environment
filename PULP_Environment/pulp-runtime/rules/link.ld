MEMORY
{
  L2      : ORIGIN = 0x1c000004, LENGTH = 0x0007fffc
  L1      : ORIGIN = 0x10000004, LENGTH = 0x0000fffc
  L1_CL1  : ORIGIN = 0x10400004, LENGTH = 0x0000fffc
  L1_CL2  : ORIGIN = 0x10800004, LENGTH = 0x0000fffc
  L1_CL3  : ORIGIN = 0x10C00004, LENGTH = 0x0000fffc
  L1_CL4  : ORIGIN = 0x11000004, LENGTH = 0x0000fffc
  L1_CL5  : ORIGIN = 0x11400004, LENGTH = 0x0000fffc
  L1_CL6  : ORIGIN = 0x11800004, LENGTH = 0x0000fffc
  L1_CL7  : ORIGIN = 0x11C00004, LENGTH = 0x0000fffc
}

.l1cluster_g_cl1 : {
    . = ALIGN(4);
    *(.l1cluster_g_cl1)
    *(.l1cluster_g_cl1.*)
    *(.data_l1_cl1)
    . = ALIGN(4);
} > L1_CL1

.bss_l1_cl1 : {
    . = ALIGN(4);
    *(.bss_l1_cl1)
    . = ALIGN(4);
} > L1_CL1

__l1_cl1_end        = ALIGN(4);
__l1_cl1_heap_start = ALIGN(4);
__l1_cl1_heap_size  = LENGTH(L1_CL1) - (__l1_cl1_heap_start - ORIGIN(L1_CL1));

.l1cluster_g_cl2 : {
    . = ALIGN(4);
    *(.l1cluster_g_cl2)
    *(.l1cluster_g_cl2.*)
    *(.data_l1_cl2)
    . = ALIGN(4);
} > L1_CL2

.bss_l1_cl2 : {
    . = ALIGN(4);
    *(.bss_l1_cl2)
    . = ALIGN(4);
} > L1_CL2

__l1_cl2_end        = ALIGN(4);
__l1_cl2_heap_start = ALIGN(4);
__l1_cl2_heap_size  = LENGTH(L1_CL2) - (__l1_cl2_heap_start - ORIGIN(L1_CL2));

.l1cluster_g_cl3 : {
    . = ALIGN(4);
    *(.l1cluster_g_cl3)
    *(.l1cluster_g_cl3.*)
    *(.data_l1_cl3)
    . = ALIGN(4);
} > L1_CL3

.bss_l1_cl3 : {
    . = ALIGN(4);
    *(.bss_l1_cl3)
    . = ALIGN(4);
} > L1_CL3

__l1_cl3_end        = ALIGN(4);
__l1_cl3_heap_start = ALIGN(4);
__l1_cl3_heap_size  = LENGTH(L1_CL3) - (__l1_cl3_heap_start - ORIGIN(L1_CL3));

.l1cluster_g_cl4 : {
    . = ALIGN(4);
    *(.l1cluster_g_cl4)
    *(.l1cluster_g_cl4.*)
    *(.data_l1_cl4)
    . = ALIGN(4);
} > L1_CL4

.bss_l1_cl4 : {
    . = ALIGN(4);
    *(.bss_l1_cl4)
    . = ALIGN(4);
} > L1_CL4

__l1_cl4_end        = ALIGN(4);
__l1_cl4_heap_start = ALIGN(4);
__l1_cl4_heap_size  = LENGTH(L1_CL4) - (__l1_cl4_heap_start - ORIGIN(L1_CL4));

.l1cluster_g_cl5 : {
    . = ALIGN(4);
    *(.l1cluster_g_cl5)
    *(.l1cluster_g_cl5.*)
    *(.data_l1_cl5)
    . = ALIGN(4);
} > L1_CL5

.bss_l1_cl5 : {
    . = ALIGN(4);
    *(.bss_l1_cl5)
    . = ALIGN(4);
} > L1_CL5

__l1_cl5_end        = ALIGN(4);
__l1_cl5_heap_start = ALIGN(4);
__l1_cl5_heap_size  = LENGTH(L1_CL5) - (__l1_cl5_heap_start - ORIGIN(L1_CL5));

.l1cluster_g_cl6 : {
    . = ALIGN(4);
    *(.l1cluster_g_cl6)
    *(.l1cluster_g_cl6.*)
    *(.data_l1_cl6)
    . = ALIGN(4);
} > L1_CL6

.bss_l1_cl6 : {
    . = ALIGN(4);
    *(.bss_l1_cl6)
    . = ALIGN(4);
} > L1_CL6

__l1_cl6_end        = ALIGN(4);
__l1_cl6_heap_start = ALIGN(4);
__l1_cl6_heap_size  = LENGTH(L1_CL6) - (__l1_cl6_heap_start - ORIGIN(L1_CL6));

.l1cluster_g_cl7 : {
    . = ALIGN(4);
    *(.l1cluster_g_cl7)
    *(.l1cluster_g_cl7.*)
    *(.data_l1_cl7)
    . = ALIGN(4);
} > L1_CL7

.bss_l1_cl7 : {
    . = ALIGN(4);
    *(.bss_l1_cl7)
    . = ALIGN(4);
} > L1_CL7

__l1_cl7_end        = ALIGN(4);
__l1_cl7_heap_start = ALIGN(4);
__l1_cl7_heap_size  = LENGTH(L1_CL7) - (__l1_cl7_heap_start - ORIGIN(L1_CL7));

