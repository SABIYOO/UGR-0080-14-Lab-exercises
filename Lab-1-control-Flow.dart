import 'dart:io';

void main() {
  // Exercise 1: Check if a given number is even or odd
  
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
  print("");

  // Exercise 2: Print the first 10 natural numbers using a for loop
  print("Exercise 2: Print the first 10 natural numbers");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print("");

  // Exercise 3: Simple calculator using a switch statement
  
  print("Enter number:");
  double firstNumber = double.parse(stdin.readLineSync()!);
  print("Enter the second number:");
  double secondNumber = double.parse(stdin.readLineSync()!);
  print("Enter the operator (+, -, *, /):");
  String operator = stdin.readLineSync()!;
  double result;
  switch (operator) {
    case "+":
      result = firstNumber + secondNumber;
      break;
    case "-":
      result = firstNumber - secondNumber;
      break;
    case "*":
      result = firstNumber * secondNumber;
      break;
    case "/":
      result = firstNumber / secondNumber;
      break;
    default:
      print("Invalid operator.");
      return;
  }
  print("Result: $result");
  print("");

  // Exercise 4: Convert a grade to a letter grade using a switch statement
  
  print("Enter grade:");
  int grade = int.parse(stdin.readLineSync()!);
  String letterGrade;
  switch (grade) {
    case 90:
      letterGrade = "A";
      break;
    case 80:
      letterGrade = "B";
      break;
    case 70:
      letterGrade = "C";
      break;
    case 60:
      letterGrade = "D";
      break;
    default:
      letterGrade = "F";
  }
  print("Your letter grade is: $letterGrade");
}
