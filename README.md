# cpp repeat macro

Repeat macro expression X times.  
Works like foreach loop for macros.

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

## Generate custom repeat.h with generate.sh

```bash
# Tweak generate.sh and:

sh generate.sh > repeat.h
```
