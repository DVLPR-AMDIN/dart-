import 'dart:async';

class Animal {
  String name;
  Animal(this.name);
  void display() {
    print("Moti");
  }
}

class Dog extends Animal {
  String breed;
  Dog(this.breed, name) : super(name);
  showbreed() {
    print("anbc");
  }
}

void main() {
  Dog s = Dog("abs", "Moti");
  s.display();
}
