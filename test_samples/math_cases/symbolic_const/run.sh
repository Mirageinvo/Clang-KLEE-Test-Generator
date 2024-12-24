clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone symbolic_const.c
/home/mirage/klee/build/bin/klee symbolic_const.bc