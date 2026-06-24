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
#include "hal/pulp.h"
#include "hal/dma/mchan_v7.h"
#include "stdio.h"
#include <stdint.h>
#include "hal_FFT.h"
#include "hal_EQUALIZER.h"
#include "functions_FFT.h"
#include "functions_EQUALIZER.h"
#include "data.c"

#define NUM_CLUSTERS        (   8   )
#define Bytes_Per_Word      (   4   )
#define FFT_Size            (  4096 )
#define FFT_ports           (   8   )
#define EQUALIZER_ports     (   16  )
#define Num_Frames          (   1   )

#define DATA_SIZE           (                  Num_Frames * FFT_Size * Bytes_Per_Word)   // Num of Frames * FFT-Point     * number of bytes in word
#define FFT_BW              (       FFT_ports                        * Bytes_Per_Word)   // number of ports per FFT       * number of bytes in word
#define EQUALIZER_BW        ( EQUALIZER_ports                        * Bytes_Per_Word)   // number of ports per EQUALIZER * number of bytes in word


// Each cluster writes to its OWN output region in L2 (separate arrays per cluster)
   uint32_t data_out_location_l2 [ NUM_CLUSTERS ];
   uint32_t pesudo_location      [ NUM_CLUSTERS ];
   uint32_t Data_location        [ NUM_CLUSTERS ];

// dma of each cluster writes to its OWN output region in L2 (separate arrays per cluster)
   int      dma_in  [ NUM_CLUSTERS ];
   int      dma_out [ NUM_CLUSTERS ];


// Synchonize all Clusters
   volatile uint8_t SYNC_CLUSTER  [ NUM_CLUSTERS ];
   volatile uint8_t ALL_SYNC_CLUSTER = 0          ;

// Each cluster tells Fc that the data is starting to be output
   volatile uint8_t DMA_EXTRACT_DATA_CLUSTER  [ NUM_CLUSTERS ];


void cluster_core_task(void)
{
  uint32_t cluster_id  = get_cluster_id ();
  uint32_t core_id     = get_core_id    ();

  if (core_id == 0)
  {
    printf("Entered cluster %d core %d\n", cluster_id, core_id);
  }

  uint32_t FFT_base_Address = Get_FFT_base_address(0);
  
  
  
  //   ▄    ▄ ▄▄▄▄▄▄ ▄    ▄  ▄▄▄▄  ▄▄▄▄▄ ▄     ▄          ▄▄   ▄      ▄       ▄▄▄▄    ▄▄▄ 
  //   ██  ██ █      ██  ██ ▄▀  ▀▄ █   ▀█ ▀▄ ▄▀           ██   █      █      ▄▀  ▀▄ ▄▀   ▀
  //   █ ██ █ █▄▄▄▄▄ █ ██ █ █    █ █▄▄▄▄▀  ▀█▀           █  █  █      █      █    █ █     
  //   █ ▀▀ █ █      █ ▀▀ █ █    █ █   ▀▄   █            █▄▄█  █      █      █    █ █     
  //   █    █ █▄▄▄▄▄ █    █  █▄▄█  █    ▀   █           █    █ █▄▄▄▄▄ █▄▄▄▄▄  █▄▄█   ▀▄▄▄▀ 
  
  
  if (core_id == 0)
  {
    pesudo_location [cluster_id] = (uint32_t) pi_l1_malloc(cluster_id, DATA_SIZE + 4)           ;
    Data_location   [cluster_id] = (uint32_t)(((uint32_t)pesudo_location[cluster_id] + 3) & ~3) ;
  }

 








  //    ▄▄▄▄ ▄▄▄▄▄▄▄   ▄▄   ▄▄▄▄▄ ▄▄▄▄▄▄▄       ▄     ▄  ▄▄▄▄  ▄▄▄▄▄  ▄    ▄ ▄▄▄▄▄  ▄▄   ▄   ▄▄▄ 
  //   █▀   ▀   █      ██   █   ▀█   █          █  █  █ ▄▀  ▀▄ █   ▀█ █  ▄▀    █    █▀▄  █ ▄▀   ▀
  //   ▀█▄▄▄    █     █  █  █▄▄▄▄▀   █          ▀ █▀█ █ █    █ █▄▄▄▄▀ █▄█      █    █ █▄ █ █   ▄▄
  //       ▀█   █     █▄▄█  █   ▀▄   █           ██ ██▀ █    █ █   ▀▄ █  █▄    █    █  █ █ █    █
  //   ▀▄▄▄█▀   █    █    █ █    ▀   █           █   █   █▄▄█  █    ▀ █   ▀▄ ▄▄█▄▄  █   ██  ▀▄▄▄▀



  if (core_id == 0)
  {
    // Enable Clock For HWPE 
       // enable clock
          FFT_CG_ENABLE();
       // setup HCI
          FFT_SETPRIORITY_FFT( );      // priority to FFT w.r.t. cores, DMA
          FFT_RESET_MAXSTALL ( );      // reset maximum stall
          FFT_SET_MAXSTALL   (8);      // set maximum consecutive stall to 8 cycles for cores, DMA side  (to avoid starvation)
          FFT_WRITE_CMD(FFT_base_Address, FFT_SOFT_CLEAR, FFT_SOFT_CLEAR_ALL);  // soft-clear and acquire


                                                                                           
    //  _____                     __              ___                   _          _       _           _           _     _ 
    // |_   _| __ __ _ _ __  ___ / _| ___ _ __   |_ _|_ __  _ __  _   _| |_     __| | __ _| |_ __ _   | |_ ___    | |   / |
    //   | || '__/ _` | '_ \/ __| |_ / _ \ '__|   | || '_ \| '_ \| | | | __|   / _` |/ _` | __/ _` |  | __/ _ \   | |   | |
    //   | || | | (_| | | | \__ \  _|  __/ |      | || | | | |_) | |_| | |_   | (_| | (_| | || (_| |  | || (_) |  | |___| |
    //   |_||_|  \__,_|_| |_|___/_|  \___|_|     |___|_| |_| .__/ \__,_|\__|   \__,_|\__,_|\__\__,_|   \__\___/   |_____|_|
    //                                                     |_|                                                              



       // Write the input data
          dma_in[cluster_id] = plp_dma_memcpy(
                                              (uint32_t)  (data_in + 100)                                  ,  // Data Source         (       L2         ) (same for both clusters)
                                              (uint32_t *) Data_location[cluster_id]                       ,  // Data Distination    (       L1         )
                                              DATA_SIZE                                                    ,  // All data size       (     in bytes     )
                                              1                                                               // Transfer direction  ( 1 mean L2 --> L1 )
          );
  
        // Wake up the FFT accelerator
           FFT_NEW_TASK_NT(FFT_base_Address                         ,
                           (uint32_t *) Data_location[cluster_id]   ,
                           DATA_SIZE                                ,
                           FFT_BW
           );
        // Wait DMA Finish to Trigger FFT
           plp_dma_wait(dma_in[cluster_id])      ;
  
        // Sync all cluster at that point
           SYNC_CLUSTER[cluster_id] = 1          ;
           while (!ALL_SYNC_CLUSTER)             ;
    
        // Trigger FFT  
           FFT_TASK_Trigger(FFT_base_Address)    ;
  
  
        // Wait for Finishing the FFT  
           FFT_BARRIER(FFT_base_Address)         ;
  
        // some delay  
           for(volatile int kk=0; kk<300; kk++)  ;
    //  _____                     __               ___        _               _          _       _           _           _     ____  
    // |_   _| __ __ _ _ __  ___ / _| ___ _ __    / _ \ _   _| |_ _ __  _   _| |_     __| | __ _| |_ __ _   | |_ ___    | |   |___ \ 
    //   | || '__/ _` | '_ \/ __| |_ / _ \ '__|  | | | | | | | __| '_ \| | | | __|   / _` |/ _` | __/ _` |  | __/ _ \   | |     __) |
    //   | || | | (_| | | | \__ \  _|  __/ |     | |_| | |_| | |_| |_) | |_| | |_   | (_| | (_| | || (_| |  | || (_) |  | |___ / __/ 
    //   |_||_|  \__,_|_| |_|___/_|  \___|_|      \___/ \__,_|\__| .__/ \__,_|\__|   \__,_|\__,_|\__\__,_|   \__\___/   |_____|_____|
    //                                                          |_|                                                              



    // Outputting data from the cluster to L2 memory
       // Data transfer from L1 to L2
          dma_out[cluster_id] = plp_dma_memcpy(
                                               (uint32_t *) data_out_location_l2[cluster_id]   , // Data Distination    (       L2         )
                                               (uint32_t *) Data_location       [cluster_id]   , // Data Source         (       L1         )
                                               DATA_SIZE                                       , // All data size       (     in bytes     )
                                               0                                                 // Transfer direction  ( 0 mean L1 --> L2 )
          );
   
       // some delay
          for(volatile int kk=0; kk<100; kk++)     ;

       // DMA start on transfer from L1 to L2
          DMA_EXTRACT_DATA_CLUSTER[cluster_id] = 1 ;
   
       // Wait DMA Finish Transfer Data L1 --> L2
          plp_dma_wait(dma_out[cluster_id])        ;

    








  //   ▄▄▄▄▄▄ ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄▄   ▄▄▄▄  ▄    ▄       ▄     ▄  ▄▄▄▄  ▄▄▄▄▄  ▄    ▄ ▄▄▄▄▄  ▄▄   ▄   ▄▄▄ 
  //   █        █    █▀▄  █   █    █▀   ▀ █    █       █  █  █ ▄▀  ▀▄ █   ▀█ █  ▄▀    █    █▀▄  █ ▄▀   ▀
  //   █▄▄▄▄▄   █    █ █▄ █   █    ▀█▄▄▄  █▄▄▄▄█       ▀ █▀█ █ █    █ █▄▄▄▄▀ █▄█      █    █ █▄ █ █   ▄▄
  //   █        █    █  █ █   █        ▀█ █    █        ██ ██▀ █    █ █   ▀▄ █  █▄    █    █  █ █ █    █
  //   █      ▄▄█▄▄  █   ██ ▄▄█▄▄  ▀▄▄▄█▀ █    █        █   █   █▄▄█  █    ▀ █   ▀▄ ▄▄█▄▄  █   ██  ▀▄▄▄▀
                                                                                                  
    // disable clock
       FFT_CG_DISABLE()        ;

    // set priority to core side
       FFT_SETPRIORITY_CORE()  ;
  }

  synch_barrier();
}


int main()
{
 // int all_ready = 0;
  printf("Entering main controller\n");

 // Write data in in memory using FC
    for (int j=0 ; j<(FFT_Size) ; j++)
      {
         data_in[j+100] = (j << 16) | j;
      }



  for (int c = 0; c < NUM_CLUSTERS; c++)
  {
    SYNC_CLUSTER             [c] = 0                           ;
    DMA_EXTRACT_DATA_CLUSTER [c] = 0                           ;
    data_out_location_l2     [c] = 0x1c030000 + c * 0x00004000 ;
  }

   // Launch all clusters
      for (int c = 0; c < NUM_CLUSTERS; c++)
      {
        cluster_start(c, cluster_core_task);
      }
        
        
    while (!(SYNC_CLUSTER[0] && SYNC_CLUSTER[1] && 
             SYNC_CLUSTER[2] && SYNC_CLUSTER[3] && 
             SYNC_CLUSTER[4] && SYNC_CLUSTER[5] &&
             SYNC_CLUSTER[6] && SYNC_CLUSTER[7]
            ));
             
    ALL_SYNC_CLUSTER = 1; 

    while (!(DMA_EXTRACT_DATA_CLUSTER[0] && DMA_EXTRACT_DATA_CLUSTER[1] && 
             DMA_EXTRACT_DATA_CLUSTER[2] && DMA_EXTRACT_DATA_CLUSTER[3] && 
             DMA_EXTRACT_DATA_CLUSTER[4] && DMA_EXTRACT_DATA_CLUSTER[5] &&
             DMA_EXTRACT_DATA_CLUSTER[6] && DMA_EXTRACT_DATA_CLUSTER[7]
            ));

   // Wait for all to finish
      cluster_wait(0); 
      cluster_wait(1); 
      cluster_wait(2); 
      cluster_wait(3);
      cluster_wait(4); 
      cluster_wait(5); 
      cluster_wait(6); 
      cluster_wait(7);
      
    //      
    //  ███████ ████████  █████  ██████  ████████     ███████  ██████  ██    ██  █████  ██      ██ ███████ ███████ ██████  
    //  ██         ██    ██   ██ ██   ██    ██        ██      ██    ██ ██    ██ ██   ██ ██      ██    ███  ██      ██   ██ 
    //  ███████    ██    ███████ ██████     ██        █████   ██    ██ ██    ██ ███████ ██      ██   ███   █████   ██████  
    //       ██    ██    ██   ██ ██   ██    ██        ██      ██ ▄▄ ██ ██    ██ ██   ██ ██      ██  ███    ██      ██   ██ 
    //  ███████    ██    ██   ██ ██   ██    ██        ███████  ██████   ██████  ██   ██ ███████ ██ ███████ ███████ ██   ██ 
    //                                                            ▀▀                                                       
                                                                                                                   
    EQUALIZER_WRITE_CMD(EQUALIZER_SOFT_CLEAR, EQUALIZER_SOFT_CLEAR_ALL); // soft-clear and acquire
                           

    EQUALIZER_NEW_TASK((uint32_t *) data_out_location_l2 ,
                       DATA_SIZE                         ,
                       EQUALIZER_BW
    );  

    // Wait for Finishing Equalizer
       EQUALIZER_BARRIER(); 


    printf("EQUALIZER FINISH\n");

    
  // Verify results from all clusters
     printf("Checking Final System Result ...\n\n");
     for (int c = 0; c < NUM_CLUSTERS; c++)
     {
       printf("USER %d ...\n", c);
       // Call Check_correctness Function
          EQUALIZER_Check_correctness(c                                       ,
                                      DATA_SIZE                               ,
                                      (uint32_t  ) data_out_location_l2[c]
          );
     }

  return 0;
}
