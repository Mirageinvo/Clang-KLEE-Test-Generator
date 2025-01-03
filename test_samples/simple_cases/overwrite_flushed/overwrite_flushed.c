#include <assert.h>
#include <stdio.h>
#include "klee/klee.h"

int main() {  
  unsigned char x;

  klee_make_symbolic(&x, sizeof x, "x");
  if (x >= 2) klee_silent_exit(0);

  char delete[2] = {0,1};

  char tmp = delete[ x ];
  char tmp2 = delete[0];
  delete[ x ] = tmp2;

  if (x==1) {
    assert(delete[1] == 0);
    return 0;
  }

  return 0;
}