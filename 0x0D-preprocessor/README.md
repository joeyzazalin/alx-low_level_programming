Project by: Joseph Anateyi 
Project:  0x0D-preprocessor
Course: ALX SOFTWARE ENGINEERING

#ifndef OBJECT_LIKE_MACRO_H // include guard
#define OBJECT_LIKE_MACRO_H 

#define SIZE 1024 // macro definition

#endif


// This defines the macro `SIZE` with the value `1024`. The `#ifndef` and `#define` ensure this is only defined once.

*1. Pi*

Create a header file `1-pi.h` that defines a macro named `PI` as an abbreviation for the token `3.14159265359`.

*Answer:* 

c
#ifndef PI_H // include guard
#define PI_H

#define PI 3.14159265359 // macro definition

#endif


// This defines the macro `PI` with the value `3.14159265359`. The `#ifndef` and `#define` ensure this is only defined once.

*2. File name* 

Write a program that prints the name of the file it was compiled from, followed by a new line.

*Answer:*

c  
#include <stdio.h> // include stdio.h 

/**
 * main - prints the name of the file
 * 
 * Return: Always 0 (Success)
 */
int main(void)  
{
	printf("%s\n", __FILE__); // use __FILE__ macro
	return (0);
}


// This uses the predefined `_FILE_` macro to print the current file name.

*3. Function-like macro*

Write a function-like macro `ABS(x)` that computes the absolute value of a number `x`.

*Answer:*

c
#ifndef FUNCTION_LIKE_MACRO_H // include guard
#define FUNCTION_LIKE_MACRO_H

#define ABS(x) ((x) < 0 ? -(x) : (x)) // macro definition

#endif 


// This defines a macro `ABS(x)` that uses a ternary operator to return either the negative or positive version of `x`, implementing the absolute value function.

*4. SUM*  

Write a function-like macro `SUM(x, y)` that computes the sum of the numbers `x` and `y`.

*Answer:*

c
#ifndef SUM_H // include guard
#define SUM_H 

#define SUM(x, y) ((x) + (y)) // macro definition

#endif


// This defines a simple macro `SUM(x, y)` that adds `x` and `y` together to compute the sum.

FILENAME: 0-object_like_macro.h


#ifndef OBJECT_LIKE_MACRO_H
#define OBJECT_LIKE_MACRO_H

#define SIZE 1024

#endif

FILENAME: 1-pi.h

#ifndef PI_H
#define PI_H

#define PI 3.14159265359

#endif

FILENAME: 2-main.c

#include <stdio.h>

/**
 * main - prints the name of the file
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	printf("%s\n", _FILE_);
	return (0);
}

FILENAME: 3-function_like_macro.h

#ifndef FUNCTION_LIKE_MACRO_H
#define FUNCTION_LIKE_MACRO_H

#define ABS(x) ((x) < (0) ? -(x) : (x))

#endif

FILENAME: 4-sum.h

TASKS = 

Tasks
0. Object-like Mac
