class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  void displayInfo() {
    print('''
    Name: $name,
    Age: $age,
    Grade: $grade''');
  }

  void checkPassed() {
    if (grade >= 50) {
      print('    $name has passed the course.');
    } else {
      print('    $name has failed the course.');
    }
  }
}
void main() {
  Student student1 = Student('haidy', 20, 45.5);
  Student student2 = Student('salma', 20, 98.0);

  student1.displayInfo();
  student1.checkPassed();

  print("================================");

  student2.displayInfo();
  student2.checkPassed();
}
  