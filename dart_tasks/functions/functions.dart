void printWelcomeMessage(){
  print("\n Welcome to the student grade system. ");
}

double calculateAverage(double grade1, double grade2, double grade3){
  return (grade1 + grade2 + grade3) / 3;
}

void displayStudentResult(String name, double average, [String? notes]){
  print("\nStudent Name: $name");
  print("Average Grade: ${average.toStringAsFixed(2)}");
  print("Notes: ${notes ?? 'No additional notes.'}");
}

void main(){
  printWelcomeMessage();

  double averageGrade = calculateAverage(85.0, 90.0, 78.0);
  
  displayStudentResult("Haidy", averageGrade, "Excellent performance!");
  print("================================");
  displayStudentResult("Salma", averageGrade);
}
