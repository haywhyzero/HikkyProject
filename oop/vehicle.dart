 
import 'engine.dart';



class Vehicle extends Engine {
  final String name;
  final String type;

  Vehicle({this.name = "Unknown", this.type = "Unknown"});

  @override
  void start() => print("$name is starting.");

  @override
  void stop() => print("$name is stopping.");
 
}

class MyVehicle implements Engine {
  @override
  void start() {
    print("MyVehicle is starting.");
  }

  @override
  void stop() {
    print("MyVehicle is stopping.");
  }

  @override
  void displayEngineDetails() {
    print("Engine details: This is a specific engine for MyVehicle.");
  }
}

