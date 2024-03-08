class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    double average = total / marks.length;
    return average;
  }
}

void main() {
  // Exercise 1: Create objects of Person class and access/modify their attributes
  
  Person person1 = Person("alem", 23, "4kilo");
  person1.displayDetails();
  print("");

  Person person2 = Person("selam", 30, "5kilo");
  person2.age = 35;
  person2.displayDetails();
  print("");

  // Exercise 2: Create Student objects and calculate total marks or average
  print("Exercise 2: Create Student objects and calculate total marks or average");
  List<int> marks1 = [80, 85, 90, 95, 92];
  Student student1 = Student("matiyos", 20, "6kilo", 1, marks1);
  student1.displayDetails();
  int totalMarks1 = student1.calculateTotalMarks();
  print("Total Marks: $totalMarks1");
  double averageMarks1 = student1.calculateAverageMarks();
  print("Average Marks: $averageMarks1");
  print("");

  List<int> marks2 = [75, 82, 88, 91, 86];
  Student student2 = Student("kaleb", 22, "shiro-meda", 2, marks2);
  student2.displayDetails();
  int totalMarks2 = student2.calculateTotalMarks();
  print("Total Marks: $totalMarks2");
  double averageMarks2 = student2.calculateAverageMarks();
  print("Average Marks: $averageMarks2");
}
