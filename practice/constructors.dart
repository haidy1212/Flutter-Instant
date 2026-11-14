class Student {
  final String? name;
  final int? age;
  final int? rollNumber;

  // 1- Default Constructor
  Student() : name = "Unknown",age = 0,rollNumber = 0 {
    print("This is a default constructor");
  }

  // 2- Parameterized Constructor
  Student.parameterized(this.name, this.age, this.rollNumber) {
    print("This is a parameterized constructor");
  }

  // 3- Named Constructor
  Student.namedConstructor(this.name, this.age, this.rollNumber) {
    print("This is a named constructor");
  }

  // 4- Constant Constructor
  const Student.constant({this.name, this.age, this.rollNumber});
}

void main() {
  // 1- Default
  Student s1 = Student();
  print("Default -> Name: ${s1.name}, Age: ${s1.age}\n");

  // 2- Parameterized
  Student s2 = Student.parameterized("Ahmed", 22, 10);
  print("Parameterized -> Name: ${s2.name}, Age: ${s2.age}, Roll: ${s2.rollNumber}\n");

  // 3- Named
  Student s3 = Student.namedConstructor("John", 20, 1);
  print("Named -> Name: ${s3.name}, Age: ${s3.age}, Roll: ${s3.rollNumber}\n");

  // 4- Constant
  const Student s4 = Student.constant(name: "Sara", age: 21, rollNumber: 2);
  print("Constant -> Name: ${s4.name}, Age: ${s4.age}, Roll: ${s4.rollNumber}");
}