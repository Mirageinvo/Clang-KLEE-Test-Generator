clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone overwrite_flushed.c
/home/mirage/klee/build/bin/klee overwrite_flushed.bc