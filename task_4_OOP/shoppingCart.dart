class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalPrice() {
    return price * quantity;
  }
}

class ShoppingCart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print("${product.name} added to cart.");
  }

  void removeProduct(String name) {
    products.removeWhere((product) => product.name == name);
    print("$name removed from cart.");
  }

  double calculateTotal() {
    double total = 0;

    for (Product product in products) {
      total += product.getTotalPrice();
    }

    return total;
  }

  void displayCart() {
    for (Product product in products) {
      print(
        "${product.name} - "
        "\$${product.price} x ${product.quantity} "
        "= \$${product.getTotalPrice()}",
      );
    }

    print("----------------");
    print("Total: \$${calculateTotal()}");
  }
}

void main() {
  ShoppingCart cart = ShoppingCart();

  Product product1 = Product("T-Shirt", 500, 2);
  Product product2 = Product("Shoes", 1200, 1);
  Product product3 = Product("Bag", 700, 1);

  cart.addProduct(product1);
  cart.addProduct(product2);
  cart.addProduct(product3);

  print("\nShopping Cart:");
  cart.displayCart();

  print("\nAfter removing Bag:");

  cart.removeProduct("Bag");

  cart.displayCart();
}