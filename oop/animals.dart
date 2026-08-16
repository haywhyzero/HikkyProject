class Animals {
  final String name;
  final String sound;

  Animals({this.name = "Unknown", this.sound = "Unknown"});

  void speak() => print("This Animal is named $name and can $sound");
}

class Dogs extends Animals {
  Dogs({required String name, required String sound}) : super(name: name, sound: sound);

  void eat() => print("$name is eating dog food.");

}

class DogWife extends Dogs {
  DogWife({required String name, required String sound}) : super(name: name, sound: sound);

  void sleep() => print("$name is sleeping.");
}





void main() {
  // Animals dog = Animals(name: "bingo", sound: "bark");
  // dog.speak();

  // Dogs bingoDog = Dogs(name: "Bingo", sound: "bark");
  // bingoDog.speak();
  // bingoDog.eat();

  DogWife dogWife = DogWife(name: "Luna", sound: "woof");
  dogWife.speak();
  dogWife.eat();
  dogWife.sleep();

}