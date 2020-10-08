import 'dart:io';

void main (){
  print("Enter First Name: ");
  String fn = stdin.readLineSync();
  print("Enter Middle Name: ");
  String mn = stdin.readLineSync();
  print("Enter Last Name: ");
  String ln = stdin.readLineSync();
  print("Enter Age: ");
  int age = int.parse(stdin.readLineSync());
  Student s1 = Student(fn, mn, ln, age);
  print('Hello ' + s1.getFullInfo() + 'department');
}

class Student {
  static String company = 'ABC Company';
  String firstName, middleName, lastName;
  int age;

  static String _dept = 'Computer Science';

  String get dept => _dept;

  Student(this.firstName, this.middleName, this.lastName, this.age);

  String getFullInfo(){
    return ("$firstName $middleName $lastName, $age, from $dept ");
  }


  @override
  String toString(){
    return (lastName);
  }

  void setLastName(String lastName){
    this.lastName = lastName;
  }
}