clang-13 -I /home/mirage/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone return_sign.c
/home/mirage/klee/build/bin/klee return_sign.bc