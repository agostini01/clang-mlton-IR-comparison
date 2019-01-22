#!/bin/bash

# In order to call a external C function, the following steps are required:

# 1. Write your source/header file and compile into a static library
gcc -c print-static.c
ar rcs libmylib.a print-static.o

# 2. Write the ffi-import.c wrapper file and call the exposed function 
#    that has a call to your static library functions (including the header 
#    file)
# > needs an import.c file and a program in sml that makes use of the function
#   exposed.

# 3. Generate the c intermedia files
mlton -keep g -codegen c -default-ann 'allowFFI true' -export-header export.h import.sml ffi-import.c

# 4. Compile the c files and the wrapper using MLTON libs
gcc -c -fPIC -DPIC -I/usr/local/lib/mlton/targets/self/include -std=gnu11 -fno-common -O1 -fomit-frame-pointer -fno-strict-aliasing -w -I/usr/local/lib/mlton/include -m64 -o output.1.o import.1.c
gcc -c -fPIC -DPIC -I/usr/local/lib/mlton/targets/self/include -std=gnu11 -fno-common -O1 -fomit-frame-pointer -fno-strict-aliasing -w -I/usr/local/lib/mlton/include -m64 -o output.0.o import.0.c
gcc -c -fPIC -DPIC -I/usr/local/lib/mlton/targets/self/include -std=gnu11 -fno-common -O1 -fomit-frame-pointer -fno-strict-aliasing -w -I/usr/local/lib/mlton/include -m64 -o output-tolink.o ffi-import.c

# 5. Link the compiled files against the MLton libs and your static library
gcc -o import output-tolink.o output.0.o output.1.o -L. -lmylib -L/usr/local/lib/mlton/targets/self -lmlton-pic -lgdtoa-pic -lm -lgmp -m64 -Wl,-znoexecstack

# 6. Run the code

