#ifndef NUMBER_H
#define NUMBER_H

class Number {
 public:
  Number(int x) : x(x) { }
  bool operator==(Number other);
 private:
  int x;
};

#endif
