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
  student details = student(fn,mn,ln,age);
  print(details.getFullName());
}

class student {
  static final String _dept = 'Computer Science Department';
  String firstName, lastName, middlename;
  int age;

  student(this.firstName, this.middlename, this.lastName, this.age);

  String getFullName() {
    return ("Hello $firstName $middlename $lastName , $age , from $_dept");

  }
  @override
  String toString() {
    return lastName;
  }

  void setLastName(String lastName) {
    this.lastName = lastName;
  }
}

