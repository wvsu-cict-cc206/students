
import 'dart:io';

void main() {
  String fn, mn, ln;
  int age;
  
  print('Enter First Name: ');
  fn = stdin.readLineSync();
  print('Enter Middle Name: ');
  mn = stdin.readLineSync();
  print('Enter Last Name: ');
  ln = stdin.readLineSync();
  print('Enter Age: ');
  age = int.parse(stdin.readLineSync());
  Student s1 = Student(fn, mn, ln, age);
  print(s1.getFullName());
}

class Student {
  static final String department = 'Computer Science';
  String firstName, middleName, lastName;
  int age = 18;

  Student(this.firstName, this.middleName, this.lastName, this.age);

 // Student.withFullName(this.firstName, this.middleName, this.lastName, this.age);


String getFullName(){
  return('Hello $firstName $middleName $lastName , $age, from $department department' );
}
}
