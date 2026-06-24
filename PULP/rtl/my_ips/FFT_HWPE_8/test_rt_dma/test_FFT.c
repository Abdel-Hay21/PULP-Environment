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
#include "functions_FFT.h"

#define Bytes_Per_Word (   4   )
#define Num_FFT        (   8   )
#define FFT_Size       (   8   )
#define FFT_ports      (   16  )
#define Num_Frames     (   2   )

#define DATA_SIZE_PER_FFT   (            Num_Frames * FFT_Size * Bytes_Per_Word)   // Num of Frames * FFT-Point * number of bytes in word
#define FFT_BW              ( FFT_ports                        * Bytes_Per_Word)   // number of ports per FFT   * number of bytes in word
#define POINTS_PER_FFT      (            Num_Frames * FFT_Size                 )   // Num of Frames * FFT-Point


uint32_t pesudo_location_1[8];
uint32_t pesudo_location_2[8];

uint32_t Data_location_1[8];
uint32_t Data_location_2[8];

int      dma_id_1[8];
int      dma_id_2[8];

uint16_t data_in [] = {
  0b111010101100,
  0b111001011001,
  0b001110000110,
  0b000010011110,
  0b100000010100,
  0b111010110101,
  0b110011010110,
  0b001011110110,
  0b101001011001,
  0b101101000101,
  0b100101111010,
  0b011000001100,
  0b101011111010,
  0b100001110000,
  0b110110000111,
  0b001010111010,
  
  0b111011111001,
  0b110011001011,
  0b100001101010,
  0b110001000100,
  0b000011001011,
  0b000111110000,
  0b111011110111,
  0b000001110111,
  0b111010111001,
  0b101000100111,
  0b110101001001,
  0b000000110111,
  0b101101000110,
  0b101011110011,
  0b000111101000,
  0b010010010000
 
};


uint16_t data_out [] = {
  0b110001101101,
  0b111110100011,
  0b111010010111,
  0b110010001101,
  0b000011011110,
  0b111111111011,
  0b000010100000,
  0b000010100011,
  0b000111001111,
  0b111101101010,
  0b000011010101,
  0b001000010100,
  0b111001011000,
  0b111110110011,
  0b000100101010,
  0b000001011001,
  
  0b111000001001,
  0b111010101001,
  0b000001100111,
  0b111001001011,
  0b111100100010,
  0b000010101000,
  0b000101000110,
  0b110111011100,
  0b000000000100,
  0b000001011000,
  0b000111001010,
  0b111011110000,
  0b111010011101,
  0b000110110011,
  0b111110110011,
  0b000001010111
};



static int cluster_entry()
{
  printf("Entered cluster on cluster %d core %d\n", get_cluster_id(), get_core_id());


  uint32_t core_id           = get_core_id();
  uint32_t FFT_base_Address  = Get_FFT_base_address( core_id );
  

  
  // Memory Allocation for all FFTs using Core 0 only
     if (core_id == 0)
     {
       for (int i = 0; i < 8; i++)
       {

		 pesudo_location_1[i]   = (uint32_t) pi_l1_malloc(NULL, (DATA_SIZE_PER_FFT) + 4);
		 pesudo_location_2[i]   = (uint32_t) pi_l1_malloc(NULL, (DATA_SIZE_PER_FFT) + 4);     

		  
         Data_location_1[i]     = (uint32_t)(((uint32_t)pesudo_location_1[i] + 3) & ~3);
         Data_location_2[i]     = (uint32_t)(((uint32_t)pesudo_location_2[i] + 3) & ~3);
 
              
         // printf("Core = %d, Data_location = %x\n", i, Data_location_1[i]);
       }
     }


  synch_barrier();
  
  
  // Each Core Write it's own data for own FFT
     if (core_id == 1)
     {
     printf("\nCore %d Start DMA\n",get_core_id());
  
     for(int i=0 ; i<8 ; i++)
     {
     dma_id_1[i] = plp_dma_memcpy(
                                        (uint32_t)   (data_in + 0 * (2 * DATA_SIZE_PER_FFT / Bytes_Per_Word)) , // Data source
                                        (uint32_t *) Data_location_1[i]                                       , // Data Distination
                                         DATA_SIZE_PER_FFT                                                    , // All data size (in bytes)
                                         1                                                                      // Transfer direction  (1 mean L2 --> L1)

     );
     
     dma_id_2[i] = plp_dma_memcpy(
                                        (uint32_t)   (data_in + 0 * (2 * DATA_SIZE_PER_FFT / Bytes_Per_Word)) , // Data source
                                        (uint32_t *) Data_location_2[i]                                       , // Data Distination
                                         DATA_SIZE_PER_FFT                                                    , // All data size (in bytes)
                                         1                                                                      // Transfer direction  (1 mean L2 --> L1)
     );
    // plp_dma_wait(dma_id_2[core_id]);
    }
    
     plp_dma_barrier();
     
     printf("\nCore %d Finish DMA\n",get_core_id());   
     }



  // Enable Clock For HWPE using Core 0 only
     if (core_id == 0)
     {
       // enable clock
       FFT_CG_ENABLE();

       // setup HCI
       FFT_SETPRIORITY_FFT();  // priority to FFT w.r.t. cores, DMA
       FFT_RESET_MAXSTALL();   // reset maximum stall
       FFT_SET_MAXSTALL(8);    // set maximum consecutive stall to 8 cycles for cores, DMA side
     }

  
 
  synch_barrier();

  
  
  // soft-clear and acquire
     FFT_WRITE_CMD(FFT_base_Address, FFT_SOFT_CLEAR, FFT_SOFT_CLEAR_ALL);

  // NEW Task for each FFT
     FFT_NEW_TASK(FFT_base_Address, (uint32_t *) Data_location_1[core_id], DATA_SIZE_PER_FFT, FFT_BW);
     FFT_NEW_TASK(FFT_base_Address, (uint32_t *) Data_location_2[core_id], DATA_SIZE_PER_FFT, FFT_BW);

          
  // Wait for Finishing Task
     FFT_BARRIER(FFT_base_Address); 



  synch_barrier();



  // Disable Clock For HWPE using Core 0 only
     if (core_id == 0)
     {
       // disable clock
       FFT_CG_DISABLE();

       // set priority to core side
       FFT_SETPRIORITY_CORE();
     }
    
    
 
  // Multi-HWPE Self-Checking
     Check_correctness(1, DATA_SIZE_PER_FFT, core_id, (data_out + 0 * (2 * DATA_SIZE_PER_FFT/Bytes_Per_Word)) , (uint32_t *) Data_location_1[core_id]);
     Check_correctness(2, DATA_SIZE_PER_FFT, core_id, (data_out + 0 * (2 * DATA_SIZE_PER_FFT/Bytes_Per_Word)) , (uint32_t *) Data_location_2[core_id]);

          
  return 1;
}


int main()
{
  printf("Entering main controller\n");

  cluster_start(0, cluster_entry);

  int retval = cluster_wait(0);

  printf("Got retval from cluster %d\n", retval);

  return 0;
}
