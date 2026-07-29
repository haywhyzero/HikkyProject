
// ignore_for_file: unused_element, unused_local_variable

void main() {

 List<Map<String, dynamic>> student = [{
  "name" : "Hikky",
  "age"  : 16,
  "class": "SS2",
  "List of man" : ["Ayomide", "Opps"], 
 },
  {
  "name" : "Ayomide",
  "age"  : 12,
  "class": "SWE",
  "List of women" : ["Adejumoke"],
  }
 ];

 for (int i = 0; i < student.length; i++) {
  final individualMap = student[i];
  if (individualMap.values.contains("Hikky")) {
    print(individualMap["List of man"]);
  }
 }


}

