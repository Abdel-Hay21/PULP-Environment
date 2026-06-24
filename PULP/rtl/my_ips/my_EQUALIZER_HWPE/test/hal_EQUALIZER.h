/*
 * hal_EQUALIZER.h - Complete Corrected Version for Dual EQUALIZER
 */

#include <stdio.h>

#ifndef __HAL_EQUALIZER_H__
#define __HAL_EQUALIZER_H__

/* REGISTER MAP */

// global address map + event IDs
#define EQUALIZER_ADDR_BASE                   0x1A10C000  // EQUALIZER
#define EQUALIZER_EVT0                        140


// commands
#define EQUALIZER_COMMIT_AND_TRIGGER          0x00
#define EQUALIZER_ACQUIRE                     0x04
#define EQUALIZER_FINISHED                    0x08
#define EQUALIZER_STATUS                      0x0c
#define EQUALIZER_RUNNING_JOB                 0x10
#define EQUALIZER_SOFT_CLEAR                  0x14
#define EQUALIZER_SWSYNC                      0x18
#define EQUALIZER_URISCY_IMEM                 0x1c

// job configuration
#define EQUALIZER_REGISTER_OFFS               0x40
#define EQUALIZER_REGISTER_CXT0_OFFS          0x80
#define EQUALIZER_REGISTER_CXT1_OFFS          0x120

#define EQUALIZER_REG_IN_OUT_PTR_0            0x00
#define EQUALIZER_REG_IN_OUT_PTR_1            0x04
#define EQUALIZER_REG_IN_OUT_PTR_2            0x08
#define EQUALIZER_REG_IN_OUT_PTR_3            0x0c
#define EQUALIZER_REG_IN_OUT_PTR_4            0x10
#define EQUALIZER_REG_IN_OUT_PTR_5            0x14
#define EQUALIZER_REG_IN_OUT_PTR_6            0x18
#define EQUALIZER_REG_IN_OUT_PTR_7            0x1c

#define EQUALIZER_REG_TOT_LEN                 0x20
#define EQUALIZER_REG_IN_OUT_D0_LEN           0x24
#define EQUALIZER_REG_IN_OUT_D0_STRIDE        0x28


// others
#define EQUALIZER_COMMIT_CMD                  1
#define EQUALIZER_TRIGGER_CMD                 0
#define EQUALIZER_SOFT_CLEAR_ALL              0
#define EQUALIZER_SOFT_CLEAR_STATE            1

/* LOW-LEVEL HAL */
#if defined(__riscv__) && !defined(RV_ISA_RV32)
  #define EQUALIZER_WRITE_CMD(offset, value)        __builtin_pulp_OffsetedWrite(value, (int volatile *)(EQUALIZER_ADDR_BASE), offset)
  #define EQUALIZER_WRITE_CMD_BE(offset, value, be) *(char volatile *)(EQUALIZER_ADDR_BASE + offset + be) = value
  #define EQUALIZER_READ_CMD(ret, offset)           ret = (*(int volatile *)(EQUALIZER_ADDR_BASE + offset))

  #define EQUALIZER_WRITE_REG(offset, value)        __builtin_pulp_OffsetedWrite(value, (int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_OFFS), offset)
  #define EQUALIZER_WRITE_REG_BE(offset, value, be) *(char volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_OFFS + offset + be) = value
  #define EQUALIZER_READ_REG(ret, offset)           ret = (*(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_OFFS + offset))

  #define EQUALIZER_WRITE_REG_CXT0(offset, value)        __builtin_pulp_OffsetedWrite(value, (int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT0_OFFS), offset)
  #define EQUALIZER_WRITE_REG_CXT0_BE(offset, value, be) *(char volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT0_OFFS + offset + be) = value
  #define EQUALIZER_READ_REG_CXT0(ret, offset)           ret = (*(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT0_OFFS + offset))

  #define EQUALIZER_WRITE_REG_CXT1(offset, value)        __builtin_pulp_OffsetedWrite(value, (int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT1_OFFS), offset)
  #define EQUALIZER_WRITE_REG_CXT1_BE(offset, value, be) *(char volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT1_OFFS + offset + be) = value
  #define EQUALIZER_READ_REG_CXT1(ret, offset)           ret = (*(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT1_OFFS + offset))
#else
  #define EQUALIZER_WRITE_CMD(offset, value)        *(int volatile *)(EQUALIZER_ADDR_BASE + offset) = value
  #define EQUALIZER_WRITE_CMD_BE(offset, value, be) *(char volatile *)(EQUALIZER_ADDR_BASE + offset + be) = value
  #define EQUALIZER_READ_CMD(ret, offset)             ret = (*(int volatile *)(EQUALIZER_ADDR_BASE + offset))
  #define EQUALIZER_WRITE_REG(offset, value)        *(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_OFFS + offset) = value
  #define EQUALIZER_WRITE_REG_BE(offset, value, be) *(char volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_OFFS + offset + be) = value
  #define EQUALIZER_READ_REG(ret, offset)             ret = (*(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_OFFS + offset))

  #define EQUALIZER_WRITE_REG_CXT0(offset, value)   *(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT0_OFFS + offset) = value
  #define EQUALIZER_READ_REG_CXT0(ret, offset)        ret = (*(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT0_OFFS + offset))
  #define EQUALIZER_WRITE_REG_CXT1(offset, value)   *(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT1_OFFS + offset) = value
  #define EQUALIZER_READ_REG_CXT1(ret, offset)        ret = (*(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_REGISTER_CXT1_OFFS + offset))
#endif

#define EQUALIZER_BUSYWAIT()     do { } while((*(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_STATUS)) != 0)
#define EQUALIZER_BARRIER()      do { eu_evt_maskWaitAndClr (1 << EQUALIZER_EVT0); } while((*(int volatile *)(EQUALIZER_ADDR_BASE + EQUALIZER_STATUS)) != 0)
#define EQUALIZER_BARRIER_CT()        eu_evt_maskWaitAndClr (1 << EQUALIZER_EVT0)

#define EQUALIZER_BARRIER_ACQUIRE(job_id) \
                            EQUALIZER_READ_CMD(job_id, EQUALIZER_ACQUIRE); \
                            while(job_id < 0) { \
                            eu_evt_maskWaitAndClr (1 << EQUALIZER_EVT0); \
                            EQUALIZER_READ_CMD(job_id, EQUALIZER_ACQUIRE); \
                            }


#endif /* __HAL_EQUALIZER_H__ */
