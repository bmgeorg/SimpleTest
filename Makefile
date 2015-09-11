CC=clang++
FLAGS= -Wall
OBJS= Number.o
TESTS= TestNumber.test

# pattern rule for object files
%.o: %.cpp
	$(CC) $< -o $@ -c $(FLAGS)

# pattern rule for test files
%.test: %.cpp $(OBJS)
	$(CC) $^ -o $@ $(FLAGS)

# Force make to keep intermediate OBJS files
.SECONDARY: $(OBJS)
.PHONY: clean test

# runs all tests
test: $(TESTS)
	for test in $(TESTS); do ./$$test; done

clean:
	rm -rf *.o
	rm -rf *.test
	rm -rf a.out
