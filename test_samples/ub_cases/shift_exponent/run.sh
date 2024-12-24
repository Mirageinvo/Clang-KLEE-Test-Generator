clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone shift_exponent.c
/home/mirage/klee/build/bin/klee shift_exponent.bc
