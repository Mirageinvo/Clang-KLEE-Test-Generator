#include "klee/klee.h"

int main() {
  float x = 1.0;
  volatile float result = x / 0;
}