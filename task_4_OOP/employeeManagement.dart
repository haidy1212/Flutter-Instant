class Employee {
  String name;
  double salary;
  String department;

  Employee(this.name, this.salary, this.department);

  double calculateAnnualSalary() {
    return salary * 12;
  }

  void increaseSalary(double percentage) {
    salary += salary * (percentage / 100);
  }

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
    print("Department: $department");
    print("Annual Salary: \$${calculateAnnualSalary()}");
  }
}

void main() {
  Employee employee =
      Employee("Mariam", 10000, "IT");

  employee.displayInfo();

  print("----------------");

  employee.increaseSalary(10);

  print("After 10% increase:");

  employee.displayInfo();
}
 