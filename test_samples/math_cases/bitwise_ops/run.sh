clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone bitwise_ops.c
/home/mirage/klee/build/bin/klee bitwise_ops.bc
