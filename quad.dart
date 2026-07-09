
import 'dart:math';
List<double>quadraticEquation (int a, int b, int c) {
  int discriminant = (b * b) - (4 * a * c); 
  if (discriminant < 0) {
    print ('No solution.');
    return [0];
  }
  double sqrtDiscriminant = sqrt(discriminant);
  double X = (-b + sqrtDiscriminant)/ (2 * a); 
  double X2 = (-b - sqrtDiscriminant)/ (2 * a);
  
 return [X, X2];
 
 
}
void main() {
  List<double> solution = quadraticEquation(2, -5, 6);
  print ("$solution");
}

