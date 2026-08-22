// Future - async and await


Future<Map<String, dynamic>> fetchUserData() async {
  
  await Future.delayed(Duration(seconds: 20));

  // final data = await http.post(Uri.parse('https://localhost/edubridge/auth/login.php'), body: {'username': 'john', 'password': 'password123', 'role': 'admin'});

  return {
    'name': 'John Doe',
    'age': 30,
    'email': 'john.doe@example.com'
  };
}


void main() async {
  // ignore: unused_local_variable
  var userDataFuture = await fetchUserData();

  generateNumbers().listen((event) => print(event),);

  // await for(var number in generateNumbers()) {
  //   print(number);
  // }
  // print(userDataFuture);
}



// Stream - async*, await and yield - listen()

Stream<int> generateNumbers() async* {
  for (int i = 1; i <= 20; i++) {
    await Future.delayed(Duration(seconds: 5));
    yield i;
  }
}
