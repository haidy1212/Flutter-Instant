class Product {
  final String name;
  final String description;
  final double price;
  final String details;
  final String image;
  bool isInCart;
  bool isFavorite;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.details,
    required this.image,
    this.isInCart = false,
    this.isFavorite = false,
  });
}