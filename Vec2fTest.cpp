#include "Vec2f.h"
#include "Test.h"

TEST_D(testAdd, 
  Vec2f a(1, 1);
  Vec2f b(2, 2);

  Vec2f result(3, 3);
  ASSERT(false)
)

int main() {
  TEST(testAdd)
  return 0;
}