class Car {
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) => milesDriven += miles;

  double getMilesDriven() => milesDriven;

  String getBrand() => brand;

  String getModel() => model;

  int getYear() => year;

  int getAge(){
    int currentYear = DateTime.now().year;
    return currentYear - getYear();
  }
}

void main() {
  Car bmw = Car("BMW", "x2", 2022, 3580);
  bmw.drive(1020);

  Car ford = Car("Toyota", "Camry", 2011, 8650);
  ford.drive(1300);

  Car honda = Car("Honda", "Civic", 2018, 5389);
  honda.drive(1800);

  print("Car 1: ${bmw.getBrand()} ${bmw.getModel()} ${bmw.getYear()} Miles: ${bmw.getMilesDriven().toInt()} Age: ${bmw.getAge()}");
  print("Car 2: ${ford.getBrand()} ${ford.getModel()} ${ford.getYear()} Miles: ${ford.getMilesDriven().toInt()} Age: ${ford.getAge()}");
  print("Car 3: ${honda.getBrand()} ${honda.getModel()} ${honda.getYear()} Miles: ${honda.getMilesDriven().toInt()} Age: ${honda.getAge()}");
  print("Total number of cars created: ${Car.numberOfCars}");
}