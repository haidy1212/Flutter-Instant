class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print("Animal makes a sound.");
  }
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print("Dog $name says: hwwwww hwwww!");
  }
}

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print("Cat $name says: Meow Meow!");
  }
}

class Bird extends Animal {
  Bird(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print("Bird $name says: swww swww!");
  }
}

void main() {
  Dog dog = Dog("Max", 3);
  Cat cat = Cat("Luna", 2);
  Bird bird = Bird("Rio", 1);

  dog.makeSound();
  cat.makeSound();
  bird.makeSound();
}