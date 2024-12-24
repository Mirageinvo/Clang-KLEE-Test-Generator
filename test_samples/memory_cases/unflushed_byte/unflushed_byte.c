#include "klee/klee.h"
#include <assert.h>

int main() {
  char i, x[3];

  klee_make_symbolic(&i, sizeof i, "i");

  x[0] = i;

  char y =  x[1];

  return 0;
}