#include <stdio.h>
#include <stdlib.h>

#include "sds.h"
#include "sdsalloc.h"

int main()
{
    printf("Hello world!\n");

    sds myString = sdsnew("Salut, ROMANIA!");
    printf("%s\n", myString);
    sdsfree(myString);

    return 0;
}
