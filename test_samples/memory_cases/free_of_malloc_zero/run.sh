clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone free_of_malloc_zero.c
/home/mirage/klee/build/bin/klee free_of_malloc_zero.bc