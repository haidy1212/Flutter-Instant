List<int> filterPassedGrades(List<int> grades, int passingGrade) {
  List<int> passedGrades = [];
  for (int grade in grades) {
    if (grade >= passingGrade) {
      passedGrades.add(grade);
    }
  }
  return passedGrades;
}
void main() {
  List<int> grades = [85, 70, 90, 60, 75, 50, 45, 30];
  int passingGrade = 50;
  print("grades: $grades");
  List<int> result = filterPassedGrades(grades, passingGrade);
  print("passed grades: $result");
}