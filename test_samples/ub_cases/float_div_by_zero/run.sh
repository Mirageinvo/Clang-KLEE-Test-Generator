clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone float_div_by_zero.c
/home/mirage/klee/build/bin/klee float_div_by_zero.bc
