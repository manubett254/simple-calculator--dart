import 'dart:io';
import 'userInput.dart';
double? numInput() {
  
  return double.tryParse(stdin.readLineSync()!);
}

String? operandChoice() {
  print("Enter the operand eg '+', '-', '/', '*'");
  return stdin.readLineSync();
}

void main() {
  print("Enter 1st number:");
  double? num1 = numInput();
  print("Enter 2nd number:");
  double? num2 = numInput();
  String? choice = operandChoice();
  double? sol;

  switch (choice) {
    case "/":
      {
        if (num2 != 0) {
          sol = num1! / num2!;
          print("The result of $num1 $choice $num2 is: $sol");
        } else {
          print("Cannot divide by zero");
        }
        break;
      }
    case "+":
      {
        sol = num1! + num2!;
        print("The result of $num1 $choice $num2 is: $sol");
        break;
      }
    case "-":
      {
        sol = num1! - num2!;
        print("The result of $num1 $choice $num2 is: $sol");
        break;
      }
    case "*":
      {
        sol = num1! * num2!;
        print("The result of $num1 $choice $num2 is: $sol");
        break;
      }
    default:
      {
        print("Invalid operand choice");
      }
  }
}
