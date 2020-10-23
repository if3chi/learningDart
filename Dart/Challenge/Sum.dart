int sum(List<int> numList, int i) {
  return numList[i] + (i > 0 ? sum(numList, --i) : 0);
}

main() {
  print(sum([1, 2, 3, 4, 5, 6, 6, 7], 7));
}
