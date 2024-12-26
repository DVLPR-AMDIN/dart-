abstract class Animal {
  void slepp() {
    print("Sleep");
  }

  void eating() {
    print("eating");
  }

  void walking() {
    print("Walking");
  }
}

class Human extends Animal {
  void thinking() {
    print("Thinking");
  }

  void overthinking() {
    print("Over");
  }
}

void main() {
  Human s = Human();
  s.overthinking();
  s.slepp();
}
