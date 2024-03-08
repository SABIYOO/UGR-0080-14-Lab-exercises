import 'dart:io';

void main() {
  const int speedOfLight = 299792458; // meters per second

  
  print("Enter the distance in meters:");
  String input = stdin.readLineSync()!;
  int distance = int.parse(input);

  double time = distance / speedOfLight;

  print("The time taken for light to travel $distance meters is $time seconds.");
}
