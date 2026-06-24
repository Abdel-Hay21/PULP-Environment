/*
 * hal_FFT.h - Complete Corrected Version for Dual FFT
 */

#include <stdio.h>

#ifndef __HAL_FFT_H__
#define __HAL_FFT_H__

/* REGISTER MAP */

// global address map + event IDs
#define CLUS_CTRL_ADDR_BASE             0x00200000  // Cluster Control Address
#define FFT_ADDR_BASE_0                 0x10201000  // Core 0 / FFT1
#define FFT_ADDR_BASE_1                 0x10201080  // Core 1 / FFT2
#define FFT_ADDR_BASE_2                 0x10201100  // Core 2 / FFT3
#define FFT_ADDR_BASE_3                 0x10201180  // Core 3 / FFT4
#define FFT_ADDR_BASE_4                 0x10201200  // Core 4 / FFT5
#define FFT_ADDR_BASE_5                 0x10201280  // Core 5 / FFT6
#define FFT_ADDR_BASE_6                 0x10201300  // Core 6 / FFT7
#define FFT_ADDR_BASE_7                 0x10201380  // Core 7 / FFT8
#define FFT_EVT0                        12


// commands
#define FFT_COMMIT_AND_TRIGGER          0x00
#define FFT_ACQUIRE                     0x04
#define FFT_FINISHED                    0x08
#define FFT_STATUS                      0x0c
#define FFT_RUNNING_JOB                 0x10
#define FFT_SOFT_CLEAR                  0x14
#define FFT_SWSYNC                      0x18
#define FFT_URISCY_IMEM                 0x1c

// job configuration
#define FFT_REGISTER_OFFS               0x40
#define FFT_REGISTER_CXT0_OFFS          0x80
#define FFT_REGISTER_CXT1_OFFS          0x120
#define FFT_REG_IN_OUT_PTR              0x00
#define FFT_REG_TOT_LEN                 0x04
#define FFT_REG_IN_OUT_D0_LEN           0x08
#define FFT_REG_IN_OUT_D0_STRIDE        0x0c

// cluster controller register offset and bits
#define CLUS_CTRL_FFT_OFFS              0x18
#define CLUS_CTRL_FFT_CG_EN_MASK        0x800
#define CLUS_CTRL_FFT_HCI_PRIO_MASK     0x100
#define CLUS_CTRL_FFT_HCI_MAXSTALL_MASK 0xff

// others
#define FFT_COMMIT_CMD                  1
#define FFT_TRIGGER_CMD                 0
#define FFT_SOFT_CLEAR_ALL              0
#define FFT_SOFT_CLEAR_STATE            1

/* LOW-LEVEL HAL */
#if defined(__riscv__) && !defined(RV_ISA_RV32)
  #define FFT_WRITE_CMD(base, offset, value)        __builtin_pulp_OffsetedWrite(value, (int volatile *)(base), offset)
  #define FFT_WRITE_CMD_BE(base, offset, value, be) *(char volatile *)(base + offset + be) = value
  #define FFT_READ_CMD(base, ret, offset)           ret = (*(int volatile *)(base + offset))

  #define FFT_WRITE_REG(base, offset, value)        __builtin_pulp_OffsetedWrite(value, (int volatile *)(base + FFT_REGISTER_OFFS), offset)
  #define FFT_WRITE_REG_BE(base, offset, value, be) *(char volatile *)(base + FFT_REGISTER_OFFS + offset + be) = value
  #define FFT_READ_REG(base, ret, offset)           ret = (*(int volatile *)(base + FFT_REGISTER_OFFS + offset))

  #define FFT_WRITE_REG_CXT0(base, offset, value)        __builtin_pulp_OffsetedWrite(value, (int volatile *)(base + FFT_REGISTER_CXT0_OFFS), offset)
  #define FFT_WRITE_REG_CXT0_BE(base, offset, value, be) *(char volatile *)(base + FFT_REGISTER_CXT0_OFFS + offset + be) = value
  #define FFT_READ_REG_CXT0(base, ret, offset)           ret = (*(int volatile *)(base + FFT_REGISTER_CXT0_OFFS + offset))

  #define FFT_WRITE_REG_CXT1(base, offset, value)        __builtin_pulp_OffsetedWrite(value, (int volatile *)(base + FFT_REGISTER_CXT1_OFFS), offset)
  #define FFT_WRITE_REG_CXT1_BE(base, offset, value, be) *(char volatile *)(base + FFT_REGISTER_CXT1_OFFS + offset + be) = value
  #define FFT_READ_REG_CXT1(base, ret, offset)           ret = (*(int volatile *)(base + FFT_REGISTER_CXT1_OFFS + offset))
#else
  #define FFT_WRITE_CMD(base, offset, value)        *(int volatile *)(base + offset) = value
  #define FFT_WRITE_CMD_BE(base, offset, value, be) *(char volatile *)(base + offset + be) = value
  #define FFT_READ_CMD(base, ret, offset)             ret = (*(int volatile *)(base + offset))
  #define FFT_WRITE_REG(base, offset, value)        *(int volatile *)(base + FFT_REGISTER_OFFS + offset) = value
  #define FFT_WRITE_REG_BE(base, offset, value, be) *(char volatile *)(base + FFT_REGISTER_OFFS + offset + be) = value
  #define FFT_READ_REG(base, ret, offset)             ret = (*(int volatile *)(base + FFT_REGISTER_OFFS + offset))

  #define FFT_WRITE_REG_CXT0(base, offset, value)   *(int volatile *)(base + FFT_REGISTER_CXT0_OFFS + offset) = value
  #define FFT_READ_REG_CXT0(base, ret, offset)        ret = (*(int volatile *)(base + FFT_REGISTER_CXT0_OFFS + offset))
  #define FFT_WRITE_REG_CXT1(base, offset, value)   *(int volatile *)(base + FFT_REGISTER_CXT1_OFFS + offset) = value
  #define FFT_READ_REG_CXT1(base, ret, offset)        ret = (*(int volatile *)(base + FFT_REGISTER_CXT1_OFFS + offset))
#endif

#define FFT_CG_ENABLE()        *(volatile int*) (CLUS_CTRL_ADDR_BASE + CLUS_CTRL_FFT_OFFS) |=  CLUS_CTRL_FFT_CG_EN_MASK
#define FFT_CG_DISABLE()       *(volatile int*) (CLUS_CTRL_ADDR_BASE + CLUS_CTRL_FFT_OFFS) &= ~CLUS_CTRL_FFT_CG_EN_MASK

#define FFT_SETPRIORITY_CORE() *(volatile int*) (CLUS_CTRL_ADDR_BASE + CLUS_CTRL_FFT_OFFS) &= ~CLUS_CTRL_FFT_HCI_PRIO_MASK
#define FFT_SETPRIORITY_FFT()  *(volatile int*) (CLUS_CTRL_ADDR_BASE + CLUS_CTRL_FFT_OFFS) |=  CLUS_CTRL_FFT_HCI_PRIO_MASK

#define FFT_RESET_MAXSTALL()   *(volatile int*) (CLUS_CTRL_ADDR_BASE + CLUS_CTRL_FFT_OFFS) &= ~CLUS_CTRL_FFT_HCI_MAXSTALL_MASK
#define FFT_SET_MAXSTALL(val)  *(volatile int*) (CLUS_CTRL_ADDR_BASE + CLUS_CTRL_FFT_OFFS) |=  (val & CLUS_CTRL_FFT_HCI_MAXSTALL_MASK)

#define FFT_BUSYWAIT(base)  do { } while((*(int volatile *)(base + FFT_STATUS)) != 0)
#define FFT_BARRIER(base)   do { eu_evt_maskWaitAndClr (1 << FFT_EVT0); } while((*(int volatile *)(base + FFT_STATUS)) != 0)

#define FFT_BARRIER_ACQUIRE(base, job_id) \
                            FFT_READ_CMD(base, job_id, FFT_ACQUIRE); \
                            while(job_id < 0) { \
                            eu_evt_maskWaitAndClr (1 << FFT_EVT0); \
                            FFT_READ_CMD(base, job_id, FFT_ACQUIRE); \
                            }


#endif /* __HAL_FFT_H__ */
