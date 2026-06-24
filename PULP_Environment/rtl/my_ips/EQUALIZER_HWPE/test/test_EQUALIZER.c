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
#include "hal_EQUALIZER.h"
#include "functions_EQUALIZER.h"
#include "data.c"

#define TASK_NUM          (   1   )
#define Bytes_Per_Word    (   4   )
#define EQUALIZER_Size    (  256  )
#define N_FFT             (   8   )
#define EQUALIZER_ports   (   16  ) //
#define Num_Frames        (   1   )
#define N_LOC             (   1   )

#define DATA_SIZE_PER_EQUALIZER   (                  Num_Frames * EQUALIZER_Size * Bytes_Per_Word)   // Num of Frames * EQUALIZER-Point * number of bytes in word
#define EQUALIZER_BW              ( EQUALIZER_ports                              * Bytes_Per_Word)   // number of ports per EQUALIZER   * number of bytes in word
#define POINTS_PER_EQUALIZER      (                  Num_Frames * EQUALIZER_Size                 )   // Num of Frames * EQUALIZER-Point


uint32_t data_out_location_l2 [    TASK_NUM   ];
uint32_t Data_location        [ N_LOC * N_FFT ];




int main()
{
  printf("Entering main controller\n");
  for (int i =0 ; i<TASK_NUM ; i++)
 
  //   ▄    ▄ ▄▄▄▄▄▄ ▄    ▄  ▄▄▄▄  ▄▄▄▄▄ ▄     ▄          ▄▄   ▄      ▄       ▄▄▄▄    ▄▄▄ 
  //   ██  ██ █      ██  ██ ▄▀  ▀▄ █   ▀█ ▀▄ ▄▀           ██   █      █      ▄▀  ▀▄ ▄▀   ▀
  //   █ ██ █ █▄▄▄▄▄ █ ██ █ █    █ █▄▄▄▄▀  ▀█▀           █  █  █      █      █    █ █     
  //   █ ▀▀ █ █      █ ▀▀ █ █    █ █   ▀▄   █            █▄▄█  █      █      █    █ █     
  //   █    █ █▄▄▄▄▄ █    █  █▄▄█  █    ▀   █           █    █ █▄▄▄▄▄ █▄▄▄▄▄  █▄▄█   ▀▄▄▄▀ 


  for (int i = 0; i < N_LOC * N_FFT; i++)
  {
    Data_location[i]     = 0x1c030000 + i * 0x00001000;
  } 

  for (int i = 0; i < N_FFT; i++)
  {
    Write_Data(DATA_SIZE_PER_EQUALIZER, (data_in), (uint32_t *) Data_location[i]);
  }

  //    ▄▄▄▄ ▄▄▄▄▄▄▄   ▄▄   ▄▄▄▄▄ ▄▄▄▄▄▄▄       ▄     ▄  ▄▄▄▄  ▄▄▄▄▄  ▄    ▄ ▄▄▄▄▄  ▄▄   ▄   ▄▄▄ 
  //   █▀   ▀   █      ██   █   ▀█   █          █  █  █ ▄▀  ▀▄ █   ▀█ █  ▄▀    █    █▀▄  █ ▄▀   ▀
  //   ▀█▄▄▄    █     █  █  █▄▄▄▄▀   █          ▀ █▀█ █ █    █ █▄▄▄▄▀ █▄█      █    █ █▄ █ █   ▄▄
  //       ▀█   █     █▄▄█  █   ▀▄   █           ██ ██▀ █    █ █   ▀▄ █  █▄    █    █  █ █ █    █
  //   ▀▄▄▄█▀   █    █    █ █    ▀   █           █   █   █▄▄█  █    ▀ █   ▀▄ ▄▄█▄▄  █   ██  ▀▄▄▄▀

  EQUALIZER_WRITE_CMD(EQUALIZER_SOFT_CLEAR, EQUALIZER_SOFT_CLEAR_ALL); // soft-clear and acquire



  //  _____  _    ____  _  __  _  
  // |_   _|/ \  / ___|| |/ / / |
  //   | | / _ \ \___ \| ' /  | |
  //   | |/ ___ \ ___) | . \  | |
  //   |_/_/   \_\____/|_|\_\ |_|
  //                              

  EQUALIZER_NEW_TASK((uint32_t *) Data_location, DATA_SIZE_PER_EQUALIZER, EQUALIZER_BW);  

  // Wait for Finishing Task
     EQUALIZER_BARRIER(); 


  printf("Got retval from SOC\n");



  //   ▄▄▄▄▄▄ ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄▄   ▄▄▄▄  ▄    ▄       ▄     ▄  ▄▄▄▄  ▄▄▄▄▄  ▄    ▄ ▄▄▄▄▄  ▄▄   ▄   ▄▄▄ 
  //   █        █    █▀▄  █   █    █▀   ▀ █    █       █  █  █ ▄▀  ▀▄ █   ▀█ █  ▄▀    █    █▀▄  █ ▄▀   ▀
  //   █▄▄▄▄▄   █    █ █▄ █   █    ▀█▄▄▄  █▄▄▄▄█       ▀ █▀█ █ █    █ █▄▄▄▄▀ █▄█      █    █ █▄ █ █   ▄▄
  //   █        █    █  █ █   █        ▀█ █    █        ██ ██▀ █    █ █   ▀▄ █  █▄    █    █  █ █ █    █
  //   █      ▄▄█▄▄  █   ██ ▄▄█▄▄  ▀▄▄▄█▀ █    █        █   █   █▄▄█  █    ▀ █   ▀▄ ▄▄█▄▄  █   ██  ▀▄▄▄▀


     for(int i=0 ; i<N_LOC * N_FFT ; i++)
     {
      Check_correctness(i, DATA_SIZE_PER_EQUALIZER, (data_out) , (uint32_t  ) Data_location[i]);
     }
  return 0;
}
