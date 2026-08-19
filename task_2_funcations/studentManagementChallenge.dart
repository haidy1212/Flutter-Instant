void printAllStudents(Map<String, int> students) {
  print('All Students:');

  for (var entry in students.entries) {
    print('${entry.key} : ${entry.value}');
  }
}

void findPassedStudents(Map<String, int> students) {
  print('\nPassed Students:');

  for (var entry in students.entries) {
    if (entry.value >= 50) {
      print('${entry.key} : ${entry.value}');
    }
  }
}

void findHighestGrade(Map<String, int> students) {
  String highestStudent = '';
  int highestGrade = 0;

  for (var entry in students.entries) {
    if (entry.value > highestGrade) {
      highestGrade = entry.value;
      highestStudent = entry.key;
    }
  }

  print('\nHighest Grade:');
  print('$highestStudent : $highestGrade');
}

double calculateAverage(Map<String, int> students) {
  int total = 0;

  for (int grade in students.values) {
    total += grade;
  }

  return total / students.length;
}

void main() {
  List<String> studentNames = [
    'Haidy',
    'Mariam',
    'Salma',
    'Sarah',
    'Hassan',
  ];

  Map<String, int> students = {
    'Haidy': 85,
    'Mariam': 72,
    'Salma': 95,
    'Sarah': 48,
    'Hassan': 88,
  };

  print('================================');
  print('      STUDENT MANAGEMENT');
  print('================================');

  printAllStudents(students);

  findPassedStudents(students);

  findHighestGrade(students);

  double average = calculateAverage(students);

  print('\nAverage Grade: ${average.toStringAsFixed(2)}');
}