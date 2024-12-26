class Animal {
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

class Human implements Animal {
  @override
  void slepp() {
    print("Sleep");
  }

  @override
  void eating() {
    print("eating");
  }

  @override
  void walking() {
    print("Walking");
  }

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
