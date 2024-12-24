clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone bad_alloc_free.c
/home/mirage/klee/build/bin/klee bad_alloc_free.bc