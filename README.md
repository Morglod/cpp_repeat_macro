# cpp repeat macro

Repeat macro expression X times.  
Works like foreach loop for macros.

Inspired by: https://stackoverflow.com/questions/50957748/passing-a-dynamic-set-of-variadic-arguments-to-a-c-function

Example:

```cpp
#include "stdio.h"
#include "repeat.h"

int main() {
    #define _MAIN_APPEND_TEXT(N) "line" #N "\n"

    const char* text =
        RPCT_REPEAT(10, _MAIN_APPEND_TEXT)
    ;

    #undef _MAIN_APPEND_TEXT

    printf("%s", text);

    return 0;
}
```

Run output:
```
line1
line2
line3
line4
line5
line6
line7
line8
line9
line10
```

## Generate custom repeat.h with generate.sh

```bash
# Tweak generate.sh and:

sh generate.sh > repeat.h
```
