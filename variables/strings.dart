main() {
  String hello = "Am ";
  String firstName = 'Jaspar ';
  String lastName = "ifechi, ";
  String country = "Nigeria.";
  // declaring a string with an escape character.
  String qoute = 'Believe you can and you\'re half way there.';

  // string interpolation
  String phrase = "I'm from $country";

  print(hello +
      firstName +
      lastName +
      phrase +
      "\nMy favourite qoute is: " +
      qoute);

// type inferrence
  var s1 = '\nString '
      'concatenation'
      " works even over line breaks.";

  print(s1);
}
