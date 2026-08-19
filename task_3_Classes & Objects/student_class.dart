class Student {
  String name;
  int age;
  String grade;

  Student({required this.name, required this.age, required this.grade});

  void displayInfo() {
    print('\nName: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('-------------------------');
  }
}
void main() {
  print('Student Information:');
  Student student1 = Student(name: 'Haidy', age: 20, grade: 'A');
  student1.displayInfo();

  Student student2 = Student(name: 'Salma', age: 20, grade: 'A+');
  student2.displayInfo();

  Student student3 = Student(name: 'Ahmed', age: 21, grade: 'B+');
  student3.displayInfo();
  
}