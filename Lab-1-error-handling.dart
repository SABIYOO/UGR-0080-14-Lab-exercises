import 'dart:io';

// Exercise 1: Write a program that takes a user input as a number and converts it to an integer.
void convertToInteger() {
  print('Exercise 1: Convert input to an integer');
  try {
    stdout.write('Enter a number: ');
    String input = stdin.readLineSync()!;
    int number = int.parse(input);
    print('Converted number: $number');
  } catch (e) {
    print('Error: Invalid input. Please enter a valid number.');
  }
  print('');
}

// Exercise 2: Create a function that divides two numbers.
double divideNumbers(double a, double b) {
  if (b == 0) {
    throw DivisionByZeroError();
  }
  return a / b;
}

// Exercise 3: Implement a program that reads a file from disk.
void readFileFromDisk(String filePath) {
  print('Exercise 3: Read a file from disk');
  try {
    File file = File(filePath);
    String contents = file.readAsStringSync();
    print('File contents: $contents');
  } catch (e) {
    if (e is FileSystemException && e.osError?.errorCode == 2) {
      print('Error: File not found.');
    } else {
      print('Error: Failed to read file.');
    }
  }
  print('');
}

void main() {
  convertToInteger();

  // Exercise 2: Create a function that divides two numbers.
  print('Exercise 2: Divide two numbers');
  try {
    double a = 10;
    double b = 0;
    double result = divideNumbers(a, b);
    print('$a divided by $b is $result');
  } catch (e) {
    if (e is DivisionByZeroError) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('Error: An unexpected error occurred.');
    }
  }
  print('');

  readFileFromDisk('path/to/nonexistent/file.txt');
}
