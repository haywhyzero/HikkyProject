 import 'dart:io';
String Winner(String HikmatChoice, String ComputerChoice) {
  if (HikmatChoice == 'rock' && ComputerChoice == 'scissors') {
    return 'Hikmat';
  }
  if (ComputerChoice == 'rock' && HikmatChoice == 'scissors') {
    return 'Computer';
  }
  if (HikmatChoice == 'paper' && ComputerChoice == 'rock') {
    return 'Hikmat';
  }
  if (ComputerChoice == 'paper' && HikmatChoice == 'rock') {
    return 'Computer';
  }
  if (HikmatChoice == 'scissors' && ComputerChoice == 'paper') {
    return 'Hikmat';
  }
  if (ComputerChoice == 'scissor' && HikmatChoice == 'paper') {
    return 'Computer';
  }
  return 'Computer';
}

void main () {
  String name = stdin.readLineSync()!;
  print ('Enter your name: ');

  String HikmatChoice = stdin.readLineSync()!;
  print ('Hikmat; rock, paper or scissors?');

}