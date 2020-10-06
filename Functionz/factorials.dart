Object factorial(int i) {
  return i == 1 ? 1 : i * factorial(i - 1);
}

main() {
  print(factorial(4));
}
