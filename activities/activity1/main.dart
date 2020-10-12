import 'dart:io';

void main(){
  print('Enter First Name: ');
  String first = stdin.readLineSync();
  print('Enter Middle Name: ');
  String mid = stdin.readLineSync();
  print('Enter Last Name: ');
  String last = stdin.readLineSync();
  print('Enter Age: ');
  String agee = stdin.readLineSync();
  var ageint = int.parse(agee);
  Student s = Student(first, mid, last, ageint);
  print(s.getFullName());
}
class Student{
  String fn, mn, ln;
  int age;
  static final String department = 'Computer Science';

  Student(this.fn, this.mn, this.ln, this.age);

  String getFullName(){
    return ('Hello $fn $mn $ln, $age, from $department department.'); 
  }
}