clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone bit_shift.c
/home/mirage/klee/build/bin/klee bit_shift.bc
