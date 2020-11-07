import 'dart:io';

void main() {
  print("Enter first name: ");
  String fn = stdin.readLineSync();

  print("Enter middle name: ");
  String mn = stdin.readLineSync();

  print("Enter last name: ");
  String ln = stdin.readLineSync();

  print("Enter age ");
  int age = int.parse(stdin.readLineSync());

  Student stu = Student(fn, mn, ln, age);

  print(stu.getFullDetails());
}

class Student {
  String firstName, middleName, lastName;
  int age;
  static final String department = "Computer Science";

  Student(this.firstName, this.middleName, this.lastName, this.age);

  String getFullDetails() {
    return ("Hello $firstName $middleName $lastName, $age, from $department department");
  }
}
