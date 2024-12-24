clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone pointer_overflow.c
/home/mirage/klee/build/bin/klee pointer_overflow.bc
