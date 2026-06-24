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
 */
 
#ifndef FUNCTIONS_EQUALIZER_H
#define FUNCTIONS_EQUALIZER_H

#include <stdint.h>


void EQUALIZER_NEW_TASK(uint32_t *Base_Address, int SIZE, int BW);


void EQUALIZER_NEW_TASK_NT(uint32_t *Base_Address, int SIZE, int BW);


void EQUALIZER_TASK_Trigger();


void EQUALIZER_Check_correctness(int USER_NUM, int SIZE, uint32_t *my_output);


#endif
