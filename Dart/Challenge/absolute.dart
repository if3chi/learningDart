num absolute(num x) {
  var abs = x < 0 ? -x : x;
  return abs;
}

main() {
  var result = absolute(-5);
  print(result);
}
