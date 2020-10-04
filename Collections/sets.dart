main() {
  var setOfFruits = <String>{
    'apples',
    'bananas',
    'oranges',
    'watermelon',
    'grapes',
    'apples'
  };

  setOfFruits.add('mangoes');
  setOfFruits.addAll({'cashews', 'oranges', 'lemons'});

  print(setOfFruits);
  print('the lenght is ${setOfFruits.length}');

  // contains or containsAll
  print('the set contains ${setOfFruits.contains('mangoes')}');

  // remove an item
  setOfFruits.remove('apples');
  print(setOfFruits);

  var setOfMoreFruits = {'oranges', 'kiwi', 'bananas'};

  print(setOfFruits.intersection(setOfMoreFruits));
  print(setOfFruits.union(setOfMoreFruits));
}
