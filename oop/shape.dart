class Shape {
  void draw() {
    print("Drawing a shape");
  }

}

class Circle extends Shape {
  @override
  void draw({String shapeType = "Shape"}) {
    print("Drawing a circle");
  }
}

class Pyramid extends Shape {
  @override
  void draw({int size = 20}) {
    print("Drawing a pyramid");
  }

}









void main() {
  Shape shape = Shape();
  shape.draw();
}