import 'dart:math';

// Exercise 1: Create a list of your favorite hobbies and use various list methods to manage the list contents.
void manageHobbiesList() {
  print('Exercise 1: Manage list of hobbies');

  List<String> hobbies = ['Reading', 'running', 'watching movie'];
  print('Initial hobbies list: $hobbies');

  hobbies.add('Painting');
  print('Hobbies after adding "Painting": $hobbies');

  hobbies.remove('running');
  print('Hobbies after removing "running": $hobbies');

  hobbies.sort();
  print('Sorted hobbies list: $hobbies');

  print('Is hobbies list empty? ${hobbies.isEmpty}');
  print('');
}

// Exercise 2: Generate a list of random numbers and use a Set to remove duplicate elements.
void removeDuplicatesFromList() {
  print('Exercise 2: Remove duplicates from a list');

  List<int> numbers = List.generate(10, (_) => Random().nextInt(10));
  print('Generated numbers list: $numbers');

  Set<int> uniqueNumbers = numbers.toSet();
  print('Unique numbers list: $uniqueNumbers');
  print('');
}

// Exercise 3: Create a Map<String, int> to store student names and their corresponding marks.
void manageStudentMarksMap() {
  print('Exercise 3: Manage student marks map');

  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('John', () => 90);
  studentMarks.putIfAbsent('Emily', () => 85);
  studentMarks.putIfAbsent('Daniel', () => 95);

  print('Student marks map:');
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  String studentName = 'Emily';
  if (studentMarks.containsKey(studentName)) {
    print('$studentName\'s marks: ${studentMarks[studentName]}');
  } else {
    print('$studentName not found in the map.');
  }
  print('');
}

// Exercise 4: Simulate a shopping cart using a list.
class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

void simulateShoppingCart() {
  print('Exercise 4: Simulate a shopping cart');

  List<Product> cart = [];

  cart.add(Product('Shirt', 29.99, 2));
  cart.add(Product('Jeans', 49.99, 1));
  cart.add(Product('Shoes', 79.99, 1));

  double totalPrice = 0;
  cart.forEach((product) {
    totalPrice += product.price * product.quantity;
  });

  print('Shopping cart:');
  cart.forEach((product) {
    print('${product.name} (${product.quantity}): \$${product.price * product.quantity}');
  });

  print('Total price: \$${totalPrice.toStringAsFixed(2)}');
  print('');

  cart.removeWhere((product) => product.name == 'Shoes');
  print('Updated shopping cart:');
  cart.forEach((product) {
    print('${product.name} (${product.quantity}): \$${product.price * product.quantity}');
  });
  print('');
}

// Exercise 5: Define a class Student to find the average mark using list methods.
class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double getAverageMark() {
    int sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}

void main() {
  manageHobbiesList();

  removeDuplicatesFromList();

  manageStudentMarksMap();

  simulateShoppingCart();

  // Exercise 5: Define a class Student to find the average mark using list methods.
  print('Exercise 5: Calculate average mark of a student');
  Student student = Student('John Doe', [85, 90, 95, 80, 88]);
  double averageMark = student.getAverageMark();
  print('Student: ${student.name}');
  print('Average mark: $averageMark');
}
