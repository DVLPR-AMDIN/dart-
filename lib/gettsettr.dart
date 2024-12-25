class Student {
  String? _name;
  String? get name => _name;
  set setName(String value) {
    _name = value;
  }
}

void main() {
  Student N = Student();
  N.setName = "Shivom";
  print(N.name);
}
