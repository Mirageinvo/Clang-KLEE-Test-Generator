#include "klee/klee.h"

int no_return() {
}

int main() {
  volatile int result = no_return();
  return 0;
}