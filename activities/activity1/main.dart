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
  Student p = Student(fn, mn, ln, age);
  print(p.getFullName());
}

class Student {
  static String department = 'Computer Science';
  String firstName, lastName, middleName;
  int age = 18;
  String _dept;

  String get dept => _dept;

  Student(this.firstName, this.middleName, this.lastName, this.age);

  //named constructor
  Student.withLNandAgeOnly(this.lastName, this.age);

  //Person p = Person();
  //p.getFullName();
  String getFullName() {
    return ("Hello $firstName $middleName $lastName, $age, from $department department");
  }
  //Person.getInfo()
  //
  @override
  String toString() {
    return lastName;
  }

  void setLastName(String lastName) {
    this.lastName = lastName;
  }
}
