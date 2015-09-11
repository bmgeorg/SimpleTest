CC=clang++
FLAGS= -std=c++11 -Wall
OBJS= Vec2f.o Entity.o
TESTS= Vec2fTest.test EntityTest.test

%.o: %.cpp
	$(CC) $< -o $@ -c $(FLAGS)

%.test: %.cpp $(OBJS)
	$(CC) $^ -o $@ $(FLAGS)

.SECONDARY: $(OBJS)
.PHONY: clean test

# runs all tests, showing only failures
test: $(TESTS)
	for test in $(TESTS); do ./$$test > /dev/null; done

# runs all tests, showing all output
testv: $(TESTS)
	for test in $(TESTS); do ./$$test; done

clean:
	rm -rf *.o
	rm -rf *.test
	rm -rf a.out