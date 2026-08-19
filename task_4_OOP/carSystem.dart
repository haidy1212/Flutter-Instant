class Car {
  String brand;
  String model;
  int year;
  double price;
  bool isRunning = false;
  double speed = 0.0;

  Car(this.brand, this.model, this.year, this.price,this.isRunning, this.speed);

  void start() {
    isRunning = true;
    print('The $brand $model is starting.');
  }

  void stop() {
    isRunning = false;
    print('The $brand $model is stopping.');
  }

  void accelerate(double amount) {
    if (isRunning) {
      speed += amount;
      print('The $brand $model is accelerating. Current speed: $speed km/h');
    } else {
      print('The $brand $model must be started before accelerating.');
    }
  }

  void brake(double amount) {
    if (isRunning) {
      speed -= amount;
      if (speed < 0) speed = 0;
      print('The $brand $model is braking. Current speed: $speed km/h');
    } else {
      print('The $brand $model must be started before braking.');
    }
  }

  void displayInfo() {
    print('''
    Brand: $brand,
    Model: $model,
    Year: $year,
    Price: $price,
    Is Running: $isRunning,
    Speed: $speed km/h''');
  }
}
void main() {
  Car car1 = Car('Toyota', 'Camry', 2020, 25000.0, true, 120.0);
  Car car2 = Car('BMW', 'X6', 2019, 22000.0, false, 0.0);

  car1.displayInfo();
  car1.start();
  car1.accelerate(60.0);
  car1.brake(20.0);
  car1.stop();

  print("================================");

  car2.displayInfo();
  car2.start();
  car2.accelerate(80.0);
  car2.brake(30.0);
  car2.stop();
}