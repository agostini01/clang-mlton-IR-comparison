
Commands to run: 

```
# Generates a binary that is instrumentend
clang -O1 -pg dot-product.c

# Get the profiling data
./a.out

# Print profiling data
gprof a.out gmon.out
```

This is the expected output for the dot product of 10^9 numbers

```
Flat profile:

Each sample counts as 0.01 seconds.
 %   cumulative   self              self     total           
time   seconds   seconds    calls   s/call   s/call  name    
75.00      3.54     3.54        2     1.77     1.77  populate_array
25.85      4.76     1.22        1     1.22     1.22  dot_product
```

