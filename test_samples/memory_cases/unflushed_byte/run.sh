clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone unflushed_byte.c
/home/mirage/klee/build/bin/klee unflushed_byte.bc