Steps to generate the intermediate files


```
# Generate ssa
mlton -keep ssa vecdotvec.sml

# Generate llvm output
#mlton -verbose 1 -keep g -codegen llvm vecdotvec.sml
mlton -keep g -codegen llvm vecdotvec.sml
mlton -keep g -codegen c vecdotvec.sml
```
