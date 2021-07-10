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

## REPEAT inside REPEAT

You will get error if you will try to nest same REAPAT macro.

You should generate multiple REAPEAT with different names:

```
REPEAT_X(Num, Expr)
REPEAT_Y(Num, Expr)
REPEAT_Z(Num, Expr)
```

Then you could easily nest it
