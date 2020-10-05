main() {
  print(addNum(23, 109));
  print(addNums(23, 109));
}

// normal method.
int addNums(num a, num b) {
  return a + b;
}

// syntatic sugar
int addNum(num a, num b) => a + b;
