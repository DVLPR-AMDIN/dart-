void main() {
  Map<int, Map<String, dynamic>> data = {};
  data[0] = {'name': "Shivom", 'email': "Shivom@gmail", 'phone': "930830972"};
  data[1] = {'name': "Sayyed", 'email': "sayyed@gmail", 'phone': "83495634"};
  List students = data.values.toList();
  // for (var student in students) {
  //   print(student['name']);
  // }

  students.forEach((student) {
    print(student['name']);
  });
  //print(data.containsKey(10));
}
