class Cars {
  String? brand;
  String? model;
  String? color;
  int? year;

  Cars(this.brand, this.model, this.color, this.year);

  factory Cars.towhatever() {
    return Cars("Toyota", "Camry", "Silver", 2022);
  }

  factory Cars.fromJson(Map<String, dynamic> json) {
    return Cars(
      json['brand'] as String,
      json['model'] as String,
      json['color'] as String,
      json['year'] as int,
    );
  }

  Cars.hikmatManufacturer()
      : brand = "Hikmat Motors",
        model = "Hikmat Sedan",
        color = "Red",
        year = 2023;

  @override
  String toString() => "Car Details:\nBrand: $brand\nModel: $model\nColor: $color\nYear: $year";

  String get Brand => brand ?? "Unknown Brand";

  set Brand(String value) {
    brand = value;
  }

  _Cars anotherP = _Cars();
  

  static void displayCarDetails(Cars car) {
    print("Car Details:\nBrand: ${car.brand}\nModel: ${car.model}\nColor: ${car.color}\nYear: ${car.year}");
  }



}


void main() {
  Cars myBenz = Cars("Mercedes-Benz", "G-Class", "Black", 2026); // Instantiation
  Cars myToyota = Cars.towhatever(); // Using factory constructor
  Cars myHikmat = Cars.hikmatManufacturer(); // Using named constructor

  // print(myBenz);
  // print(myToyota);
  // print(myHikmat);

  myBenz.Brand = "BMW";

  Cars.displayCarDetails(myBenz);
}




class _Cars {

}


