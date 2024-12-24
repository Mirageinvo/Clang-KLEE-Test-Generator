#include "klee/klee.h"

const int c = 23;
int main(int argc, char **argv) {
  klee_make_symbolic(&c, sizeof(c), "c");

  if (c > 20)
    return 0;
  else
    return 1;
}