#include "klee/klee.h"

signed int convert_unsigned_int_to_signed_int(unsigned int x) {
  return x;
}

int main() {
  unsigned int x;
  volatile signed int result;

  klee_make_symbolic(&x, sizeof(x), "x");

  result = convert_unsigned_int_to_signed_int(x);
  return 0;
}