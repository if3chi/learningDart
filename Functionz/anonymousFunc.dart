main() {
  var _list = ['a', 'b', 'c', 'd', 'e'];

  _list.forEach((i) {
    // closure or anonymous function
    print('${_list.indexOf(i)} : $i');
  });
  _list.forEach((item) => print(item));

// higher order function
  _list.forEach(print);
}
