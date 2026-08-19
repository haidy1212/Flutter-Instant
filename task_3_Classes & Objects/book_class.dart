class Book {
  String title;
  String author;
  int publicationYear;
  double price;

  Book({required this.title, required this.author, required this.publicationYear, required this.price});

  void displayInfo() {
    print('\nTitle: $title');
    print('Author: $author');
    print('Publication Year: $publicationYear');
    print('Price: $price');
    print('-------------------------');
  }
}
void main() {
  print('Book Information:');
  Book book1 = Book(title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', publicationYear: 1925, price: 10.99);
  book1.displayInfo();

  Book book2 = Book(title: 'To Kill a Mockingbird', author: 'Harper Lee', publicationYear: 1960, price: 12.99);
  book2.displayInfo();

  Book book3 = Book(title: '1984', author: 'George Orwell', publicationYear: 1949, price: 9.99);
  book3.displayInfo();
}