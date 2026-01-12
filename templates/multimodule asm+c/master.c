#include <stdio.h>

void printmythings(char str[]);
char str[] = "Goodbye World!";


int main()
{
	char localstring[] = "Hello World!\n";
	printmythings(localstring);
	return 0;
}

