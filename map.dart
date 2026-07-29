import 'input.dart';
void main () {

List<Map<String, dynamic>> students = [
 {"name": "Hikky", "class": "SWE", "age": 16},
 {"name": "Ayomide", "class": "SWE", "age": 12},
 {"name": "Ade", "class": "UI/UX", "age": 14}
];
Map<String, List<String>> groupedByClass = {};
for (var student in students) {
  String studentName = student["name"];
  String studentClass = student["class"];

  studentClass= input("Enter your class: ");
  studentName= input("Enter your name: ");

   groupedByClass.putIfAbsent(studentClass, ()=>[]);
   groupedByClass[studentClass]!.add(studentName);
   print(groupedByClass);
}
}