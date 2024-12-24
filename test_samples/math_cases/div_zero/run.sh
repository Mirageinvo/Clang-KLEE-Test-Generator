clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone div_zero.c
/home/mirage/klee/build/bin/klee div_zero.bc