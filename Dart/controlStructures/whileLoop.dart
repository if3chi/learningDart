main() {
  num count = 0;

  print('while less than 10');
  while (count < 10) {
    print(count);
    count++;
  }

  print('\ndo while greater than or equal to 0');

  do {
    print(count);
    count--;
  } while (count >= 0);
}
