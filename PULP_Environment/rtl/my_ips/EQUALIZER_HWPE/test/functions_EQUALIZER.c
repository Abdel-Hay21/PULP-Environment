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


void print_bin12(uint16_t v)
{
  for (int i = 11; i >= 0; i--)
    printf("%d", (v >> i) & 1);
}


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



void Write_Data(int SIZE, uint16_t *data, uint32_t *input_location)
{
    for (int j = 0; j < SIZE/4; j++)
      {
         input_location[j] = ((data[2 * j + 1] & 0xFFF) << 16) | (data[2 * j] & 0xFFF); 
      }
}


void Check_correctness(int USER_NUM, int SIZE, uint16_t *Golden_output, uint32_t *my_output)
{
   int error = 0;
    
   for (int i = 0; i < SIZE/4 ; i++)
   {
	   
	 uint32_t word = my_output[i]; 
    uint16_t real = word & 0xFFFF; 
    uint16_t imag = (word >> 16) & 0xFFFF;
	 uint16_t real_correct = Golden_output[2 * i] & 0xFFFF;
	 uint16_t imag_correct = Golden_output[2 * i + 1] & 0xFFFF;
    
    if (real_correct != real || imag_correct != imag)
    {
       error++;
       /*
       printf("\Task %d: At subcarrier number = %d",  USER_NUM, i+1);
       printf("\nyour output = ");
       print_bin12(real);
       printf("  ");
       print_bin12(imag);
       printf("\nCorrect output = ");
       print_bin12(real_correct);
       printf("  ");
       print_bin12(imag_correct);
       printf("\n");
       */
    }
   }
   printf("\nEQUALIZER USER %d: Total errors = %d\n", USER_NUM, error);
}