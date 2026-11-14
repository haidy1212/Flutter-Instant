class Student {
  String? name ;
  int? age ;

  void study() {
    print('$name is studying');
  }
}

void main() {
  Student student1 = Student();

  student1.name = 'Ahmed';
  student1.age = 21;

  student1.study();
}