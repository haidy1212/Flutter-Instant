bool searchForAStudent(String studentName, List<String> studentList) {
  for (String name in studentList) {
    if (name.toLowerCase() == studentName.toLowerCase()) {
      return true; // Student found
    }
  }
  return false; // Student not found
}
void main() {
  List<String> students = ["Haidy", "Salma", "Mariam", "Ahmed", "Bavly"];
  String searchName = "Salma";
  print("students: $students");
  bool result = searchForAStudent(searchName, students);
  if (result) {
    print("$searchName is in the student list.");
  } else {
    print("$searchName is not in the student list.");
  }
}