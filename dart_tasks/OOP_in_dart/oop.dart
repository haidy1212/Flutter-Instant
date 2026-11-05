
class Person {
  String name;
  int age;

  // Default constructor
  Person()
      : name = 'Unknown',
        age = 0;

  // Parameterized constructor
  Person.parameterized(this.name, this.age);

  // Named constructor
  Person.named({required this.name, required this.age});
}

class Student extends Person {
  double _grade;

  // Default constructor
  Student()
      : _grade = 0.0,
        super();

  // Parameterized constructor using super
  Student.parameterized(String name, int age, double grade)
      : _grade = grade,
        super.parameterized(name, age);

  // Getter
  double get grade => _grade;

  // Setter
  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print('Invalid grade! Grade must be between 0 and 100.');
    }
  }

  // Display student information
  void displayInfo() {
    print('Student Name: $name');
    print('Student Age: $age');
    print('Student Grade: $grade');
  }
}

void main() {
  // Create a student object
  Student student = Student.parameterized('Haidy', 21, 95.0);

  // Print student information
  student.displayInfo();

  // Update grade using setter
  print('\nUpdating student grade...');
  student.grade = 98.0;

  // Print updated information
  student.displayInfo();
}
