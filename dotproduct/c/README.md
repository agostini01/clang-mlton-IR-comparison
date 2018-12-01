Run this commands:

```
# LLVM
clang -O0 -S -emit-llvm dot-product.c -o dot-product-o0.ll

# Assembly
clang -O0 -S dot-product.c -o dot-product-o0.ll

# PNG files
mkdir -p /root/Development/sdh-algs/dot-product/c/dots
cd /root/Development/sdh-algs/dot-product/c/dots
opt --dot-cfg ../dot-product-o0.ll
dot -Tpng cfg.<func-name>.dot > cfg.<func-name>.png
```
