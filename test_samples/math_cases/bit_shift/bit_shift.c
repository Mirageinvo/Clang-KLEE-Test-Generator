#include <assert.h>
#include "klee/klee.h"

int main() {
  int d;
  
  klee_make_symbolic(&d, sizeof(d), "d");

  int l = d - 1;
  unsigned long long m = ((unsigned long long) l << 32) / d;
  if (d==2) {
    assert(m == 2147483648u);
  }

  klee_silent_exit(0);

  return 0;
}