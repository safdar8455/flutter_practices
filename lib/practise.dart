import 'dart:io';

void main() {
  var myC = Human();
  myC.printName("Safdar Hussain");
  myC.printName("Akhtar Hussain");
  myC.printName("Sheryar Khan");
  myC.printName("Shoaib");

  stdout.write("Enter First Number: ");
  int number1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Second Number: ");
  int number2 = int.parse(stdin.readLineSync()!);

  var sum = myC.sum(number1, number2);

  print("Sum of two numbers that you are entered: $sum");
}

class Human {
  void printName(String name) {
    print(name);
  }

  int sum(int num1, int num2) {
    return num1 + num2;
  }
}