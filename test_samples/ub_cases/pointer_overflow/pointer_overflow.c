#include <stdio.h>
#include "klee/klee.h"

int main() {
  size_t address;
  volatile char *result;

  klee_make_symbolic(&address, sizeof(address), "address");
  klee_assume(address != 0);

  char *ptr = (char *)address;

  result = ptr + 1;
  return 0;
}