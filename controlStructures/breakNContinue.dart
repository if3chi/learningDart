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

// break and continue with labels

  myLabel:
  for (var n in numbers) {
    for (int i = 1; i < n; i++) {
      if (n == 45) {
        print('continue at $n : $i');
        continue myLabel;
      } else if (i == 2) {
        continue;
      } else if (i == 10) {
        break;
      } else if (n == 100) {
        print('break at $n : $i');
        break myLabel;
      }
      print(i);
    }
  }
}
