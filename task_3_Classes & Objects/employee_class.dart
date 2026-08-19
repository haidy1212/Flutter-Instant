class Employee {
  String name;
  int age;
  double salary;
  String department;

  Employee({required this.name, required this.age, required this.salary, required this.department});

  void displayInfo() {
    print('\nName: $name');
    print('Age: $age');
    print('Salary: $salary');
    print('Department: $department');
  }

  void increaseSalary(double percentage) {
    if (percentage > 0) {
      salary += salary * (percentage / 100);
      print('Salary increased by $percentage%.\nNew Salary: $salary');
    } else {
      print('Percentage must be greater than zero.');
    }
  }
}
void main() {
  print('Employee Information:');
  Employee employee1 = Employee(name: 'Haidy', age: 20, salary: 30000.0, department: 'IT');
  employee1.displayInfo();
  print("\n===Increase Salary===");
  employee1.increaseSalary(10.0);

  print("\n=======================================");

  Employee employee2 = Employee(name: 'Salma', age: 20, salary: 25000.0, department: 'Software Development');
  employee2.displayInfo();
  print("\n===Increase Salary===");
  employee2.increaseSalary(15.0);
}