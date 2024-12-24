clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone obj_size.c
/home/mirage/klee/build/bin/klee obj_size.bc