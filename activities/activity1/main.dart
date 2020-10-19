import 'dart:io';

void main() {

  print("Enter First Name: ");
  String fn = stdin.readLineSync();
  print("Enter Middle Name: ");
  String mn = stdin.readLineSync();
  print("Enter Last Name: ");
  String ln = stdin.readLineSync();
  print("Enter Age: ");
  String strAge = stdin.readLineSync();
  int age = int.parse(strAge);
  Person p3 = Person(fn,mn,ln,age);
  print(p3.getFullName());
}

class Person {
  static String department = 'Computer Science Department';
  String firstName, middleName, lastName;
  int age = 0;
  String _dept;

  String get dept => _dept;

  Person(this.firstName, this.middleName, this.lastName,  this.age);

  //named constructor
  Person.withLNandAgeOnly(this.lastName, this.age);

  //Person p = Person();
  //p.getFullName();
  String getFullName() {
    return ("$firstName $middleName $lastName, $age, from $department");
  }

  //Person.getInfo()
  static String getInfo() {
    return 'This is a Person class';
  }

  //
  @override
  String toString() {
    return lastName;
  }

  void setLastName(String lastName) {
    this.lastName = lastName;
  }
}
