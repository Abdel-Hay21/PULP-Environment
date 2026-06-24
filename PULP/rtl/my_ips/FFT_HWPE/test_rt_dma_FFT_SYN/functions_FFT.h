/*
 * Copyright (C) 2020 ETH Zurich and University of Bologna
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
 *           Sama Zayed       <samazayed2003@gmail.com>
 *           Marwan Khaled    <khaledryad816@gmail.com>
 */
 
#ifndef FUNCTIONS_FFT_H
#define FUNCTIONS_FFT_H

#include <stdint.h>

void print_bin12(uint16_t v);


void FFT_NEW_TASK(uint32_t my_base_addr, uint32_t *Base_Address, int SIZE, int BW);


void FFT_NEW_TASK_NT(uint32_t my_base_addr, uint32_t *Base_Address, int SIZE, int BW);


void FFT_TASK_Trigger(uint32_t my_base_addr);


void Write_Data(int SIZE, uint16_t *data, uint32_t *input_location);


void Check_correctness(int task_num, int SIZE, int core_id, uint16_t *Golden_output, uint32_t *my_output);


uint32_t Get_FFT_base_address(uint32_t core_id);

#endif
