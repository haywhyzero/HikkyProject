// Enumeration

// ignore_for_file: unused_local_variable, dead_code

enum Status { active, inactive, pending }

// enhanced enumeration
enum Role {
  admin('Administrator', 'Admin'),
  user('Regular User', 'User'),
  guest('Guest User', 'Guest');

  final String description;
  final String name;

  const Role(this.description, this.name);
}


typedef IntList = List<int>;

void main() {
  // bool loginStatus = true;
  // if (loginStatus) {
  //   Status currentStatus = Status.active;
  // } else { 
  //    Status currentStatus = Status.inactive;
  // }

  // String roleDescription = Role.admin.description;
  // String roleName = Role.admin.name;


  var integerBox = Box<int>(42);
  var stringBox = Box<String>('Hello, Dart!');

  var mapBox = Box<Map<String, int>>({'one': 1, 'two': 2});


  
  IntList numbers = [1, 2, 3, 4, 5];
  
  
}



class Box<T> {
  T value;
  Box(this.value);


  void updateValue(T newValue) => value = newValue;

  T firstElement(List<T> list) => list.first;

 
}