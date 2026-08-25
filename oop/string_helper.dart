extension StringExtension on String {
  String toTitleCase() {
    if (this.isEmpty) return this;
    return this.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }


  bool get isValidEmail => contains('@') && contains('.');
}







void main() {
  String name = "lawal adejumoke";
  String email = "lawal@example.#com";
  print(name.toTitleCase());
  print(email.isValidEmail);
}