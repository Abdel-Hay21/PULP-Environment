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
             Marwan Khaled    <khaledryad816@gmail.com>
 */

#include "pulp.h"
#include "stdio.h"
#include <stdint.h>
#include "hal_FFT.h"


void print_bin12(uint16_t v)
{
  for (int i = 11; i >= 0; i--)
    printf("%d", (v >> i) & 1);
}


void FFT_NEW_TASK(uint32_t my_base_addr, uint32_t *Base_Address, int SIZE, int BW)
{
   // acquire job First job
   int job_id = -1;
   FFT_BARRIER_ACQUIRE(my_base_addr, job_id);

   // set up FFT
   FFT_WRITE_REG(my_base_addr, FFT_REG_IN_OUT_PTR,         Base_Address);
   FFT_WRITE_REG(my_base_addr, FFT_REG_TOT_LEN,            SIZE / BW);
   FFT_WRITE_REG(my_base_addr, FFT_REG_IN_OUT_D0_LEN,      SIZE / BW); 
   FFT_WRITE_REG(my_base_addr, FFT_REG_IN_OUT_D0_STRIDE,   BW);

   // commit and trigger FFT operation
   FFT_WRITE_CMD(my_base_addr, FFT_COMMIT_AND_TRIGGER,     FFT_TRIGGER_CMD);
}



void FFT_NEW_TASK_NT(uint32_t my_base_addr, uint32_t *Base_Address, int SIZE, int BW)
{
   // acquire job First job
   int job_id = -1;
   FFT_BARRIER_ACQUIRE(my_base_addr, job_id);

   // set up FFT
   FFT_WRITE_REG(my_base_addr, FFT_REG_IN_OUT_PTR,         Base_Address);
   FFT_WRITE_REG(my_base_addr, FFT_REG_TOT_LEN,            SIZE / BW);
   FFT_WRITE_REG(my_base_addr, FFT_REG_IN_OUT_D0_LEN,      SIZE / BW); 
   FFT_WRITE_REG(my_base_addr, FFT_REG_IN_OUT_D0_STRIDE,   BW);
}



void FFT_TASK_Trigger(uint32_t my_base_addr)
{
   // commit and trigger FFT operation
   FFT_WRITE_CMD(my_base_addr, FFT_COMMIT_AND_TRIGGER,     FFT_TRIGGER_CMD);
}



void Write_Data(int SIZE, uint16_t *data, uint32_t *input_location)
{
    for (int j = 0; j < SIZE/4; j++)
      {
         input_location[j] = ((data[2 * j + 1] & 0xFFF) << 16) | (data[2 * j] & 0xFFF); 
      }
}


void Check_correctness(int task_num, int SIZE, int core_id, uint16_t *Golden_output, uint32_t *my_output)
{
   int error = 0;
    
   for (int i = 0; i < SIZE/4 ; i++)
   {
	   
	 uint32_t word = my_output[i]; 
    uint16_t real = word & 0xFFF; 
    uint16_t imag = (word >> 16) & 0xFFF;
	 uint16_t real_correct = Golden_output[2 * i] & 0xFFF;
	 uint16_t imag_correct = Golden_output[2 * i + 1] & 0xFFF;
    
    if (real_correct != real || imag_correct != imag)
    {
       error++;
       /*
       printf("\Task %d: At subcarrier number = %d",  task_num, i+1);
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
   printf("\nFFT%d Task %d: Total errors = %d\n", core_id, task_num, error);
}


uint32_t Get_FFT_base_address(uint32_t core_id)
{
   uint32_t FFT_ADDR_BASE = FFT_ADDR_BASE_0 + ( (core_id) * 0x80 );
   return FFT_ADDR_BASE;
}

