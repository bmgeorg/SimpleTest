#include "Number.h"
#include "Test.h"

TEST_D(testEquals, 
  Number a(3);
  Number b(3);
  Number c(4);
  ASSERT(a==b);
  ASSERT(!(a==c));
)

int main() {
  TEST(testEquals)
  return 0;
}
