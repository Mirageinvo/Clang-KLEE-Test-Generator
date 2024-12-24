#include "klee/klee.h"

void f(int *addr) {
  klee_make_symbolic(addr, sizeof *addr, "moo");
}

int main() {
  int x;
  f(&x);
  return x;
}