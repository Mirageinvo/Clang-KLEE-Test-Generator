#include <stdlib.h>
#include "klee/klee.h"

int main(int argc, char **argv) {
  unsigned char *buf = malloc(3);
  klee_make_symbolic(buf, 3, "buf");
  if (buf[0] > 4)
    klee_silent_exit(0);
  unsigned char x = buf[1];
  free(buf);
  if (x) {
    // use after free
    return buf[2];
  }
  klee_silent_exit(0);
  return 0;
}