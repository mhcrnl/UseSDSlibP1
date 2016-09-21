Simple Dynamic Strings (SDS)
===
SDS is a string library for C designed to augment the limited libc string
handling functionalities by adding heap allocated strings that are:

* Simpler to use.
* Binary safe.
* Computationally more efficient.
* But yet... Compatible with normal C string functions.

[https://github.com/antirez/sds](https://github.com/antirez/sds)

Embedding SDS into your project
===
This is as simple as copying the following files inside your project:

sds.c

sds.h

sdsalloc.h

The source code is small and every C99 compiler should deal with it without issues.

```
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


```
This project is write with: Code::Blocks 13.10 system: Ubuntu 16.10.

Download: ``` git clone https://github.com/mhcrnl/UseSDSlibP1 ```

Run: 
```
gcc main.c sds.c -o proiect

./proiect 

```

Or Run: 
```
make

./sdshello
```
