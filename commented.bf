[/*
 * Copyright (c) 2018, 2019 PlusPlusUltra
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */]

									//"array" and "pointer" are the fundamental values that a brainf*ck program needs
,------------------------------------------------ 	//takes as input a single digit number (can be modified to take multiple digit numbers as well) and converts it from ASCII to integer
[->+>+<<] 							//makes two copies of the input and puts it in array[1] and array[2]. From now on array[2] stores the total.
>>--[-<<+>>]<< 					//array[3] is now equal to 0 and array[0] now stores the remaining number of iterations of the loop
[  									//here starts the loop of the factorial
[->>>>>>>+>+<<<<<<<<] 			//puts the remaining iterations of the loop in array[7] and array[8]. From now on array[8] is used to remember the number of multiplications that still need to be done
>>>>>>> 							//pointer is now equal to 7. From now on array[7] will be used to store the sums that need to be done to do the multiplication
<<<<<<[->+>+<<]>>[-<<+>>]>>>> //copies the value of array [1] (the total) into array[2]. array[2] now stores the next number that needs to be summed to do the multiplication. I will call it toSum
[ 									//here starts the loop of the multiplication
<<<<<[->+>+<<] 					//saves toSum in 2 places to avoid losing it. It is now stored in array[3] and array[4]
>[-<<+>>]							 //sums toSum to the total and array[3] is now equal to 0
>[-<<+>>]							 //toSum is now stored in array[2] again and array[4] is now equal to 0
>>>-]								 //decrements array[7] (the remaining iterations) by one and closes the multiplication loop
<<<<<[-]							 //gets rid of toSum because it will be calculated again in the next iteration
>>>>>>-[-<<<<<<<<+>>>>>>>>]<<<<<<<< //decrements the number of remaining multiplications by one and it puts the in array[0] again
] 									//ends the loop of the factorial
> 									//the pointer now points at the result
[>>+>+<<<-]>>>[<<<+>>>-]<<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]
  ++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]< //converts the result in ASCII and prints it
[-]++++++++++. 					//prints \n
