import 'dart:io';

void main() {
  
  print("Enter number:");
  int number = int.parse(stdin.readLineSync()!);

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}
