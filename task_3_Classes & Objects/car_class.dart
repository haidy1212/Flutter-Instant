class Car {
  String brand;
  String model;
  int year;

  Car({required this.brand, required this.model, required this.year});

  void displayInfo() {
    print('\nBrand: $brand');
    print('Model: $model');
    print('Year: $year');
    print('-------------------------');
  }
}
void main() {
  print('Car Information:');
  Car car1 = Car(brand: 'Toyota', model: 'Camry', year: 2025);
  car1.displayInfo();

  Car car2 = Car(brand: 'Honda', model: 'Civic', year: 2021);
  car2.displayInfo();

  Car car3 = Car(brand: 'Ford', model: 'Mustang', year: 2023);
  car3.displayInfo();

  Car car4 = Car(brand: 'BMW', model: 'X6', year: 2022);
  car4.displayInfo();
}