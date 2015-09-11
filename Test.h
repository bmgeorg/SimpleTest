#include <iostream>
using std::cout;
using std::cerr;
using std::endl;

// Run a test
#define TEST(testName) \
    if(testName()) \
      cout << #testName << " passed" << endl; \
    else \
      cerr << #testName << " failed" << endl;

// Define new test
#define TEST_D(testName, body) \
    bool testName() { body return true; }

#define ASSERT(statement) \
    if(!(statement)) { \
      cerr << "Assertion (" << #statement << ") failed" << endl; \
      return false; \
    }
