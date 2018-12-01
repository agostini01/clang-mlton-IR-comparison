Steps to generate the intermediate files


```
# Generate ssa
mlton -keep ssa vecdotvec.sml

# Generate llvm output

# Assebly
mlton -keep g  vecdotvec.sml

# LLVM
mlton -keep g -codegen llvm vecdotvec.sml

# C
mlton -keep g -codegen c vecdotvec.sml
```
