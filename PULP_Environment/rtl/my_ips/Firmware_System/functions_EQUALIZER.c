/*
 * Copyright (C) 2019-2020 ETH Zurich and University of Bologna
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

/*
 * Authors:  Mohamed Abdelhay <abdelhaymohamed21@gmail.com>
             Sama Zayed       <samazayed2003@gmail.com>
 */

#include "pulp.h"
#include "stdio.h"
#include <stdint.h>
#include "hal_EQUALIZER.h"



void EQUALIZER_NEW_TASK(uint32_t *Base_Address[8], int SIZE, int BW)
{
   // acquire job First job
   int job_id = -1;
   EQUALIZER_BARRIER_ACQUIRE(job_id);

   // set up EQUALIZER
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_0,    Base_Address[0]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_1,    Base_Address[1]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_2,    Base_Address[2]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_3,    Base_Address[3]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_4,    Base_Address[4]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_5,    Base_Address[5]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_6,    Base_Address[6]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_7,    Base_Address[7]);

   EQUALIZER_WRITE_REG(EQUALIZER_REG_TOT_LEN,            SIZE / BW);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_D0_LEN,      SIZE / BW); 
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_D0_STRIDE,   BW);

   // commit and trigger EQUALIZER operation
   EQUALIZER_WRITE_CMD(EQUALIZER_COMMIT_AND_TRIGGER,     EQUALIZER_TRIGGER_CMD);
}



void EQUALIZER_NEW_TASK_NT(uint32_t *Base_Address, int SIZE, int BW)
{
   // acquire job First job
   int job_id = -1;
   EQUALIZER_BARRIER_ACQUIRE(job_id);

   // set up EQUALIZER
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_0,    Base_Address[0]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_1,    Base_Address[1]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_2,    Base_Address[2]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_3,    Base_Address[3]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_4,    Base_Address[4]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_5,    Base_Address[5]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_6,    Base_Address[6]);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_PTR_7,    Base_Address[7]);

   EQUALIZER_WRITE_REG(EQUALIZER_REG_TOT_LEN,            SIZE / BW);
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_D0_LEN,      SIZE / BW); 
   EQUALIZER_WRITE_REG(EQUALIZER_REG_IN_OUT_D0_STRIDE,   BW);
}



void EQUALIZER_TASK_Trigger()
{
   // commit and trigger EQUALIZER operation
   EQUALIZER_WRITE_CMD(EQUALIZER_COMMIT_AND_TRIGGER,     EQUALIZER_TRIGGER_CMD);
}



void EQUALIZER_Check_correctness(int USER_NUM, int SIZE, uint32_t *my_output)
{
   int error = 0;
    
   for (int i = 0; i < SIZE/4 ; i++)
   {
	   
	 uint32_t word = my_output[i]; 
    uint16_t real = word & 0xFFF; 
    uint16_t imag = (word >> 16) & 0xFFF;
	 uint16_t real_correct = i + 2;
	 uint16_t imag_correct = i + 2;
    
    if (real_correct != real || imag_correct != imag)
    {
       error++;
    }
   }
   printf("\nEQUALIZER USER %d: Total errors = %d\n\n", USER_NUM, error);
}