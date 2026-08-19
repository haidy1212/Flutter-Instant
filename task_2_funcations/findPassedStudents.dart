void findPassedStudents(Map<String, int> students, int passingGrade) {
  List<String> passedStudents = [];
  for (var entry in students.entries) {
    if (entry.value >= passingGrade) {
      passedStudents.add(entry.key);
    }
  }
  print("Passed students: $passedStudents");
}
void main() {
  Map<String, int> students = {
    "Haidy": 85,
    "Salma": 70,
    "Mariam": 90,
    "Ahmed": 60,
    "Bavly": 45
  };
  int passingGrade = 50;
  print("students: $students");
  findPassedStudents(students, passingGrade);
}