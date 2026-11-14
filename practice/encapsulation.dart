class Student {
  String name;
  double _grade;

  //Parameterized Constructor
  Student(this.name, this._grade);

  // Getter
  double get grade {
    return _grade;
  }

  // Setter
  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print('Invalid grade!');
    }
  }
}

void main() {
  Student student = Student('Ahmed', 85.0);

  print('${student.name} has a grade of ${student.grade}');

  student.grade = 95.0;
  print('${student.name} has a new grade of ${student.grade}');

  student.grade = 105.0; // Invalid grade
}