class Student {
  String? name;
  String? city;
  int? age;
  String? grade;

  // Student(name, city, age, grade) {
  //   this.name = name;
  //   this.city = city;
  //   this.age = age;
  //   this.grade = grade;
  // }
  //Student({this.name, this.city, this.age, this.grade});

  toJson() => {'name': name, 'city': city, 'age': age, 'grade': grade};
  Student.fromjson(Map<String, dynamic> data) {
    name = data['name'];
    city = data['city'];
    age = data['age'];
    grade = data['grade'];
  }
}

void main() {
  // Student shivom = Student(name: 'Shivom', city: 'Nashik', age: 20, grade: 'A');
  //  print(shivom.toJson());
  // var data = shivom.toJson();
  // print(data['name']);
  Student sh = Student.fromjson(
      {'name': "Shivom", 'city': "nashik", 'age': 20, 'garde': "A"});
  print(sh.age);
}
