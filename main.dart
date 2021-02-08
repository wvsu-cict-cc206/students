import 'dart:io';

void main() {
  print('Enter First Name: ');
  String fn = stdin.readLineSync();
  print('Enter Middle Name: ');
  String mn = stdin.readLineSync();
  print('Enter Last Name: ');
  String ln = stdin.readLineSync();
  print('Enter Age: ');
  String strAge = stdin.readLineSync();
  int age = int.parse(strAge);
  Student s1 = Student(fn, mn, ln, age);
  print(s1.getFullName());
}

class Student {
  static final String department = 'Computer Science';
  String firstName, middleName, lastName;
  int age = 18;

  Student(this.firstName, this.middleName, this.lastName, this.age);

  String getFullName(){
    return('Hello $firstName $middleName $lastName , $age, from $department department' );
  }
}