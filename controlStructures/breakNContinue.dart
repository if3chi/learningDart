main() {
  var numbers = [23, 45, 57, 100, 55, 90];

  for (var i in numbers) {
    if (i % 2 == 0) {
      continue;
    } else if (i == 55) {
      print('broken: $i');
      break;
    } else {
      print(i);
    }
  }
}
