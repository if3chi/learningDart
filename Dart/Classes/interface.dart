class Mouse {
  var name = 'mouse';
  void moveUp() {
    print('Mouse moving Up');
  }

  void moveDown() {
    print('Mouse moving Down');
  }
}

class Keyboard {
  void keyA() {
    print('A pressed on main.');
  }
}

class Pc implements Mouse, Keyboard {
  // must implement all methods and variables in the [Mouse] and [Keyboard] class.

  var name;
  void moveUp() {
    print('Pc moving up');
  }

  String moveDown() {
    print('Pc moving Down');
    return '';
  }

  void keyA() {
    print('Key A pressed');
  }
}

void main(List<String> args) {
  var pc = Pc();
  pc.moveDown();
  pc.moveUp();
  pc.keyA();

  var mouse = Mouse();
  mouse.moveDown();
  mouse.moveUp();

  var keyboard = Keyboard();
  keyboard.keyA();
}
