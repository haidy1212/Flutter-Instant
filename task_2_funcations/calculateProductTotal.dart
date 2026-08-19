double calculateProductTotal(Map<String, double> products) {
  double total = 0.0;
  for (var entry in products.entries) {
    total += entry.value;
  }
  return total;
}
void main() {
  Map<String, double> products = {
    "Laptop": 99999.0,
    "Keyboard": 2500.0,
    "mouse": 500.0,
    "Monitor": 15000.0
  };
  print("products: $products");
  double result = calculateProductTotal(products);
  print("total price: $result");
}