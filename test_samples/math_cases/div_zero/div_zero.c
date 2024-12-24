#include "klee/klee.h"

int b, a, g;
int *c = &b, *d = &b, *f = &a;

int safe_div(short p1, int p2) { 
  return p2 == 0 ? p1 : p2; 
}

int main() {
  klee_make_symbolic(&b, sizeof b, "b");
  if (safe_div(*c, 0))
    *f = (int)&b % *c;

  safe_div(a && g, *d);
}