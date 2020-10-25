/** 
 * John has invited some friends. His list is:

s = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;
Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";
Could you make a program that

makes this string uppercase
gives it sorted in alphabetical order by last name.
When the last names are the same, sort them by first name. Last name and first 
name of a guest come in the result between parentheses separated by a comma.

So the result of function meeting(s) will be:

"(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)
(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"
It can happen that in two distinct families with the same family name two people 
have the same first name too.

https://www.codewars.com/kata/59df2f8f08c6cec835000012/train/dart
*/

String meeting(String s) {
  var str = [];
  var sort = [];
  str = s.split(';');
  str.forEach((name) {
    sort.add('(${name.split(':').reversed.join(', ')})');
  });

  // str.sort();
  // print(str);
  // str.forEach((element) {
  //   sort += "(${element.replaceAll(':', ', ').toUpperCase()})";
  // });
  // val list = s.split(";").map { it.toUpperCase().split(":").reversed().toString() }.sorted();
  return sort.toString();
}

main() {
  String s =
      "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";

  print(meeting(s));
}