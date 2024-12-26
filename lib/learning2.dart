class Student {
  String? name;
  int? age;
  String? grade;
  String? city;

  Student(this.age, this.city, this.grade, this.name);

  Student.fromJson(Map<String, dynamic> data) {
    name = data['name'];
    age = data['age'];
    grade = data['grade'];
    city = data['city'];
  }
  toJson() => {
        'name': name,
        'age': age,
        'grade': grade,
        'city': city,
      };
}

void main() {
  Map<String, Map<String, dynamic>> students = {
    'S001': {'name': 'Alice', 'age': 20, 'grade': 'A', 'city': 'New York'},
    'S002': {'name': 'Bob', 'age': 21, 'grade': 'B', 'city': 'Los Angeles'},
    'S003': {'name': 'Charlie', 'age': 22, 'grade': 'A', 'city': 'Chicago'},
    'S004': {'name': 'Diana', 'age': 20, 'grade': 'C', 'city': 'Houston'},
    'S005': {'name': 'Edward', 'age': 23, 'grade': 'B', 'city': 'Phoenix'},
    'S006': {'name': 'Fiona', 'age': 21, 'grade': 'A', 'city': 'Philadelphia'},
    'S007': {'name': 'George', 'age': 22, 'grade': 'C', 'city': 'San Antonio'},
    'S008': {'name': 'Hannah', 'age': 20, 'grade': 'B', 'city': 'San Diego'},
    'S009': {'name': 'Ian', 'age': 24, 'grade': 'A', 'city': 'Dallas'},
    'S010': {'name': 'Jane', 'age': 19, 'grade': 'A', 'city': 'San Jose'},
    'S011': {'name': 'Kyle', 'age': 22, 'grade': 'B', 'city': 'Austin'},
    'S012': {'name': 'Lara', 'age': 20, 'grade': 'A', 'city': 'Jacksonville'},
    'S013': {'name': 'Mike', 'age': 21, 'grade': 'C', 'city': 'Fort Worth'},
    'S014': {'name': 'Nina', 'age': 23, 'grade': 'B', 'city': 'Columbus'},
    'S015': {'name': 'Oscar', 'age': 20, 'grade': 'A', 'city': 'San Francisco'},
    'S016': {'name': 'Paula', 'age': 21, 'grade': 'C', 'city': 'Charlotte'},
    'S017': {'name': 'Quinn', 'age': 22, 'grade': 'B', 'city': 'Indianapolis'},
    'S018': {'name': 'Rachel', 'age': 19, 'grade': 'A', 'city': 'Seattle'},
    'S019': {'name': 'Sam', 'age': 24, 'grade': 'B', 'city': 'Denver'},
    'S020': {'name': 'Tina', 'age': 20, 'grade': 'A', 'city': 'Washington'},
  };
  List values = students.values.toList();
  List<Student> data = values.map((e) => Student.fromJson(e)).toList();
  data.sort((a, b) => a.grade!.compareTo(b.grade!));
  data.forEach((e) {
    print(e.toJson());
  });
}

//   List values = students.values.toList();
//   List<Student> data = values.map((e) => Student.fromJson(e)).toList();
//   data.sort((a, b) => a.grade!.compareTo(b.grade!));
//   data.forEach((e) {
//     print(e.toJson());
//   });
