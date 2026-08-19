double calculateAverage(List<double> grades) {
  if (grades.isEmpty) {
    return 0.0; 
  }
  double sum = 0.0;
  for (double grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}
void main() {
  List<double> grades = [85.5, 70.0, 90.0, 60.5, 75.0];
  print("grades: $grades");
  double result = calculateAverage(grades);
  print("average: $result");
}