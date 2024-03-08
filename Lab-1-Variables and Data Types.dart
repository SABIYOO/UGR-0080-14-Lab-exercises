import 'dart:io';
//exercise 1
name = "Nardos Seyfu"
age = 20
favorite_color = "grey"

print(f"My name is {name}.")
print(f"I am {age} years old.")
print(f"My favorite color is {favorite_color}.")

//exercise 2


void main() {
  const int speedOfLight = 299792458; // meters per second

  
  print("Enter the distance:");
  String input = stdin.readLineSync()!;
  int distance = int.parse(input);

  
  double time = distance / speedOfLight;

  print("The time taken for light to travel $distance meters is $time seconds.");
}
