import 'dart:io';

void main() {
  Person p1 = Person('Jane','Alba', 25);
  print(p1.getFullName());
  print(Person.getInfo());
  Person p2 = Person.withLNandAgeOnly('Villaruel', 23);
  print(p2.getFullName());

  print("Enter First Name: ");
  String fn = stdin.readLineSync();
  print("Enter Last Name: ");
  String ln = stdin.readLineSync();
  print("Enter Age: ");
  String strAge = stdin.readLineSync();
  int age = int.parse(strAge);
  Person p3 = Person(fn,ln,age);
  print(p3.getFullName());
}

class Person {
  static String company = 'ABC Company';
  String firstName, lastName;

  class Student {
    static String department = "Computer Science";
    String firstName, lastName, midName;
    int age = 18;
    String _dept;
  
  String get dept => _dept;

  Person(this.firstName, this.lastName, this.age);
  Student (this.firstName, this.midName, this.lastName, this.age)

  //named constructor
  Person.withLNandAgeOnly(this.lastName, this.age);

  //Person p = Person();
  //p.getFullName();
  String getFullName() {
    return ("$firstName $lastName age is $age");
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
}