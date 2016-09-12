#include <stdio.h>
#include "hello.h"
#include "bye.h"
int main()
{
	printf("%s%s",hello_func(),bye_func());
	return (0);
}

