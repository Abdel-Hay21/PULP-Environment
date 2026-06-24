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
#include "hal/pulp.h"
#include "hal/dma/mchan_v7.h"
#include "stdio.h"
#include <stdint.h>
#include "hal_FFT.h"
#include "functions_FFT.h"
#include "data.c"

#define TASK_NUM       (   10  )
#define Bytes_Per_Word (   4   )
#define Num_FFT        (   8   )
#define FFT_Size       (  4096 )
#define FFT_ports      (   8   )
#define Num_Frames     (   1   )

#define DATA_SIZE_PER_FFT   (            Num_Frames * FFT_Size * Bytes_Per_Word)   // Num of Frames * FFT-Point * number of bytes in word
#define FFT_BW              ( FFT_ports                        * Bytes_Per_Word)   // number of ports per FFT   * number of bytes in word
#define POINTS_PER_FFT      (            Num_Frames * FFT_Size                 )   // Num of Frames * FFT-Point


uint32_t data_out_location_l2 [ TASK_NUM ];
uint32_t pesudo_location      [     2    ];
uint32_t Data_location        [     2    ];

int      dma_in;
int      dma_out;
volatile uint8_t START_DMA;
volatile uint8_t START_DMA_ACK;


static int cluster_entry()
{
  printf("Entered cluster on cluster %d core %d\n", get_cluster_id(), get_core_id());


  uint32_t core_id           = get_core_id();
  uint32_t FFT_base_Address  = Get_FFT_base_address( 0 );
                                                                                
                                                                                    

  //   ▄    ▄ ▄▄▄▄▄▄ ▄    ▄  ▄▄▄▄  ▄▄▄▄▄ ▄     ▄          ▄▄   ▄      ▄       ▄▄▄▄    ▄▄▄ 
  //   ██  ██ █      ██  ██ ▄▀  ▀▄ █   ▀█ ▀▄ ▄▀           ██   █      █      ▄▀  ▀▄ ▄▀   ▀
  //   █ ██ █ █▄▄▄▄▄ █ ██ █ █    █ █▄▄▄▄▀  ▀█▀           █  █  █      █      █    █ █     
  //   █ ▀▀ █ █      █ ▀▀ █ █    █ █   ▀▄   █            █▄▄█  █      █      █    █ █     
  //   █    █ █▄▄▄▄▄ █    █  █▄▄█  █    ▀   █           █    █ █▄▄▄▄▄ █▄▄▄▄▄  █▄▄█   ▀▄▄▄▀ 
   
     if (core_id == 0)
     {
       for (int i = 0; i < 2; i++)
       {
		   pesudo_location[i]   = (uint32_t) pi_l1_malloc(NULL, (DATA_SIZE_PER_FFT) + 4);   
         Data_location[i]     = (uint32_t)(((uint32_t)pesudo_location[i] + 3) & ~3);
       }
     }
   







  //    ▄▄▄▄ ▄▄▄▄▄▄▄   ▄▄   ▄▄▄▄▄ ▄▄▄▄▄▄▄       ▄     ▄  ▄▄▄▄  ▄▄▄▄▄  ▄    ▄ ▄▄▄▄▄  ▄▄   ▄   ▄▄▄ 
  //   █▀   ▀   █      ██   █   ▀█   █          █  █  █ ▄▀  ▀▄ █   ▀█ █  ▄▀    █    █▀▄  █ ▄▀   ▀
  //   ▀█▄▄▄    █     █  █  █▄▄▄▄▀   █          ▀ █▀█ █ █    █ █▄▄▄▄▀ █▄█      █    █ █▄ █ █   ▄▄
  //       ▀█   █     █▄▄█  █   ▀▄   █           ██ ██▀ █    █ █   ▀▄ █  █▄    █    █  █ █ █    █
  //   ▀▄▄▄█▀   █    █    █ █    ▀   █           █   █   █▄▄█  █    ▀ █   ▀▄ ▄▄█▄▄  █   ██  ▀▄▄▄▀


     if (core_id == 1 && TASK_NUM > 2)
     {
       for(int k=0 ; k<TASK_NUM-2 ; k++)
       {
          START_DMA     = 0;
          START_DMA_ACK = 0;
          FFT_BARRIER_CT(FFT_base_Address);
          for(volatile int kk=0; kk<60; kk++);
          START_DMA = 1;
          for(;;)
          {
            if(START_DMA_ACK == 1)
               break;
          }
       }
     }

     if (core_id == 0)
     {
       // Enable Clock For HWPE 
          // enable clock
             FFT_CG_ENABLE();
          // setup HCI
             FFT_SETPRIORITY_FFT();  // priority to FFT w.r.t. cores, DMA
             FFT_RESET_MAXSTALL();   // reset maximum stall
             FFT_SET_MAXSTALL(8);    // set maximum consecutive stall to 8 cycles for cores, DMA side 
             FFT_WRITE_CMD(FFT_base_Address, FFT_SOFT_CLEAR, FFT_SOFT_CLEAR_ALL); // soft-clear and acquire


       //  _____  _    ____  _  __  _      ___       _____  _    ____  _  __  ____  
       // |_   _|/ \  / ___|| |/ / / |    ( _ )     |_   _|/ \  / ___|| |/ / |___ \ 
       //   | | / _ \ \___ \| ' /  | |    / _ \/\     | | / _ \ \___ \| ' /    __) |
       //   | |/ ___ \ ___) | . \  | |   | (_>  <     | |/ ___ \ ___) | . \   / __/ 
       //   |_/_/   \_\____/|_|\_\ |_|    \___/\/     |_/_/   \_\____/|_|\_\ |_____|
       //                                                                       


        for (int i=0 ; i<2 ; i++)
        {
             // Write the data of the first task    
                dma_in = plp_dma_memcpy(
                                        (uint32_t)   (data_in + 0 * (2 * DATA_SIZE_PER_FFT / Bytes_Per_Word)) , // Data Source         (       L2         )
                                        (uint32_t *) Data_location[i]                                         , // Data Distination    (       L1         )
                                         DATA_SIZE_PER_FFT                                                    , // All data size       (     in bytes     )
                                         1                                                                      // Transfer direction  ( 1 mean L2 --> L1 )
                                       );
             // First Task for FFT and Location i
                FFT_NEW_TASK_NT(FFT_base_Address, (uint32_t *) Data_location[i], DATA_SIZE_PER_FFT, FFT_BW);    

             // Wait DMA Finish to Trigger FFT
                plp_dma_wait(dma_in);
                FFT_TASK_Trigger(FFT_base_Address);
        }


        
       //  _____  _    ____  _  __  _____   _____       _____  _    ____  _  __  _ 
       // |_   _|/ \  / ___|| |/ / |___ /  |_   _|__   |_   _|/ \  / ___|| |/ / (_)
       //   | | / _ \ \___ \| ' /    |_ \    | |/ _ \    | | / _ \ \___ \| ' /  | |
       //   | |/ ___ \ ___) | . \   ___) |   | | (_) |   | |/ ___ \ ___) | . \  | |
       //   |_/_/   \_\____/|_|\_\ |____/    |_|\___/    |_/_/   \_\____/|_|\_\ |_|
       // 
       

       for (int i=2 ; i<TASK_NUM ; i++)
       {
         for(;;)
         {
            if(START_DMA == 1)
            {
               START_DMA_ACK = 1;
               break;
            }
         }
                for(int j=0 ; j<4 ; j++)
                {
                 // Data transfer from  L1 --> L2 
                    dma_out = plp_dma_memcpy(
                                             (uint32_t *) (data_out_location_l2[i-2] +  4 * j * (4096 / 4))        , // Data Distination    (       L2         )
                                             (uint32_t *) (Data_location[i%2]        +  4 * j * (4096 / 4))        , // Data Source         (       L1         )
                                              DATA_SIZE_PER_FFT / 4                                                , // All data size       (     in bytes     )
                                              0                                                                      // Transfer direction  ( 0 mean L1 --> L2 )
                                           );
                    if(j == 1)
                    {
                     // NEW Task for FFT
                        FFT_NEW_TASK_NT(FFT_base_Address, (uint32_t *) Data_location[i%2], DATA_SIZE_PER_FFT, FFT_BW); 
                    } 
                 // Wait DMA Finish Transfer Data L1 --> L2
                    if( j==0 || j==1 )       
                    { 
                       plp_dma_wait(dma_out);
                    }

                 // Write the data of New task  L2 --> L1
                    dma_in = plp_dma_memcpy(
                                            (uint32_t  ) (data_in                   +  2 * j * (4096 / 4))         , // Data Source         (       L2         )
                                            (uint32_t *) (Data_location[i%2]        +  4 * j * (4096 / 4))         , // Data Distination    (       L1         )
                                             DATA_SIZE_PER_FFT / 4                                                 , // All data size       (     in bytes     )
                                             1                                                                       // Transfer direction  ( 1 mean L2 --> L1 )
                                           );
                    if(j == 1)
                    {
                     // Trigger NEW Task for FFT
                        FFT_TASK_Trigger(FFT_base_Address);
                    }

                 // Wait DMA Finish Transfer Data L1 --> L2   
                    if( j==2 || j==3 )       
                    { 
                       plp_dma_wait(dma_out);
                    }

                 // Wait DMA Finish to Trigger FFT
                    plp_dma_wait(dma_in);
                }
             
       }

       // Wait for Finishing all Tasks
          FFT_BARRIER(FFT_base_Address);
          
       // Data transfer from L1 to L2  Last two tasks
          dma_out = plp_dma_memcpy(
                                      (uint32_t *) data_out_location_l2[TASK_NUM-2]                      , // Data Distination    (       L2         )
                                      (uint32_t *) Data_location[TASK_NUM%2]                             , // Data Source         (       L1         )
                                       DATA_SIZE_PER_FFT                                                 , // All data size       (     in bytes     )
                                       0                                                                   // Transfer direction  ( 0 mean L1 --> L2 )
                                     );
           
       // Wait DMA Finish Transfer Data L1 --> L2
          plp_dma_wait(dma_out);
           
       // Data transfer from L1 to L2 
          dma_out = plp_dma_memcpy(
                                      (uint32_t *) data_out_location_l2[TASK_NUM-1]                      , // Data Distination    (       L2         )
                                      (uint32_t *) Data_location[(TASK_NUM-1)%2]                         , // Data Source         (       L1         )
                                       DATA_SIZE_PER_FFT                                                 , // All data size       (     in bytes     )
                                       0                                                                   // Transfer direction  ( 0 mean L1 --> L2 )
                                     );
       // Wait DMA Finish Transfer Data L1 --> L2
          plp_dma_wait(dma_out);
     }


               
     



  //   ▄▄▄▄▄▄ ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄▄   ▄▄▄▄  ▄    ▄       ▄     ▄  ▄▄▄▄  ▄▄▄▄▄  ▄    ▄ ▄▄▄▄▄  ▄▄   ▄   ▄▄▄ 
  //   █        █    █▀▄  █   █    █▀   ▀ █    █       █  █  █ ▄▀  ▀▄ █   ▀█ █  ▄▀    █    █▀▄  █ ▄▀   ▀
  //   █▄▄▄▄▄   █    █ █▄ █   █    ▀█▄▄▄  █▄▄▄▄█       ▀ █▀█ █ █    █ █▄▄▄▄▀ █▄█      █    █ █▄ █ █   ▄▄
  //   █        █    █  █ █   █        ▀█ █    █        ██ ██▀ █    █ █   ▀▄ █  █▄    █    █  █ █ █    █
  //   █      ▄▄█▄▄  █   ██ ▄▄█▄▄  ▀▄▄▄█▀ █    █        █   █   █▄▄█  █    ▀ █   ▀▄ ▄▄█▄▄  █   ██  ▀▄▄▄▀
                                                                                                  
     if (core_id == 0)
     {
       // disable clock
       FFT_CG_DISABLE();

       // set priority to core side
       FFT_SETPRIORITY_CORE();
     }
    
  
  synch_barrier();
  return 1;
}




int main()
{
  printf("Entering main controller\n");
  for (int i =0 ; i<TASK_NUM ; i++)
  {
   data_out_location_l2[i] = 0x1c030000 + i * 0x00004000;
  }

  cluster_start(0, cluster_entry);

  int retval = cluster_wait(0);

  printf("Got retval from cluster %d\n", retval);

  // HWPE Self-Checking
     for(int i=0 ; i<TASK_NUM ; i++)
     {
      Check_correctness(i+1, DATA_SIZE_PER_FFT, 0, (data_out + 0 * (2 * DATA_SIZE_PER_FFT/Bytes_Per_Word)) , (uint32_t  ) data_out_location_l2[i]);
     }
  return 0;
}
