#include <assert.h>
#include "klee/klee.h"

int main() {
  char s[5];
  assert(5 != klee_get_obj_size(s));
  return 0;
}