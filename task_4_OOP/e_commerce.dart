abstract class User {
  String name;
  String email;

  User(this.name, this.email);

  void displayUserInfo();
}

class Customer extends User {
  Customer(String name, String email) : super(name, email);

  @override
  void displayUserInfo() {
    print("Customer Name: $name");
    print("Email: $email");
  }
}

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalPrice() {
    return price * quantity;
  }

  void displayProduct() {
    print(
      "$name - \$${price} x $quantity "
      "= \$${getTotalPrice()}",
    );
  }
}

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print("${product.name} added to cart.");
  }

  void removeProduct(String productName) {
    products.removeWhere(
      (product) => product.name == productName,
    );

    print("$productName removed from cart.");
  }

  double calculateTotal() {
    double total = 0;

    for (Product product in products) {
      total += product.getTotalPrice();
    }

    return total;
  }

  void displayCart() {
    print("----- Cart -----");

    for (Product product in products) {
      product.displayProduct();
    }

    print("----------------");
    print("Total: \$${calculateTotal()}");
  }
}

class Order {
  User user;
  List<Product> products;
  double total;

  Order(this.user, this.products, this.total);

  void displayOrder() {
    print("\n===== ORDER =====");

    user.displayUserInfo();

    print("\nProducts:");

    for (Product product in products) {
      product.displayProduct();
    }

    print("----------------");
    print("Order Total: \$${total}");
    print("================");
  }
}

void main() {
  // Create user
  Customer customer =
      Customer("Mariam", "mariam@gmail.com");

  // Create products
  Product shirt =
      Product("T-Shirt", 500, 2);

  Product shoes =
      Product("Shoes", 1200, 1);

  Product bag =
      Product("Bag", 700, 1);

  // Create cart
  Cart cart = Cart();

  // Add products
  cart.addProduct(shirt);
  cart.addProduct(shoes);
  cart.addProduct(bag);

  // Display cart
  print("\nBefore removing:");
  cart.displayCart();

  // Remove product
  cart.removeProduct("Bag");

  // Display cart again
  print("\nAfter removing Bag:");
  cart.displayCart();

  // Calculate total
  double total = cart.calculateTotal();

  // Place order
  Order order = Order(
    customer,
    cart.products,
    total,
  );

  // Display order
  order.displayOrder();
}