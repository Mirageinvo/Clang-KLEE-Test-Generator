clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone make_symb_after_copy.c
/home/mirage/klee/build/bin/klee make_symb_after_copy.bc