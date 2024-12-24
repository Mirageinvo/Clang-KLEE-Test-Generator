#include <stdlib.h>
#include "klee/klee.h"

int main() {
  // concrete case
  void *p = malloc(0);
  free(p);

  p = malloc(0);
  void *arr[4] = { p, 0, 0, 0 };

  // symbolic case
  free(arr[klee_range(0, 4, "range")]);
}