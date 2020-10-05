import 'dart:io';

main() {
  String capital;

  print('Enter a capital of a country');
  capital = stdin.readLineSync();

  switch (capital) {
    case 'abuja':
      print('Nigeria');
      break;
    case 'accra':
      print('Ghana');
      break;
    case 'cairo':
      print('Egypt');
      break;
    default:
      print('Not a country');
      break;
  }
}
