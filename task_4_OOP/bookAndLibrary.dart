class Book {
  String title;
  String author;
  bool isBorrowed;

  Book(this.title, this.author, this.isBorrowed);

  void displayBook() {
    print("Title: $title");
    print("Author: $author");
    print("Borrowed: $isBorrowed");
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("${book.title} added to library.");
  }

  void borrowBook(String title) {
    for (Book book in books) {
      if (book.title == title) {
        if (!book.isBorrowed) {
          book.isBorrowed = true;
          print("$title has been borrowed.");
        } else {
          print("$title is already borrowed.");
        }
        return;
      }
    }

    print("Book not found.");
  }

  void returnBook(String title) {
    for (Book book in books) {
      if (book.title == title) {
        if (book.isBorrowed) {
          book.isBorrowed = false;
          print("$title has been returned.");
        } else {
          print("$title is already in the library.");
        }
        return;
      }
    }

    print("Book not found.");
  }

  void displayBooks() {
    for (Book book in books) {
      book.displayBook();
      print("----------------");
    }
  }
}

void main() {
  Library library = Library();

  Book book1 = Book(
    "Clean Code",
    "Robert Martin",
    false,
  );

  Book book2 = Book(
    "Dart Programming",
    "John Smith",
    false,
  );

  library.addBook(book1);
  library.addBook(book2);

  print("\nAll Books:");
  library.displayBooks();

  print("\nBorrowing:");
  library.borrowBook("Clean Code");

  print("\nAfter Borrow:");
  library.displayBooks();

  print("\nReturning:");
  library.returnBook("Clean Code");

  print("\nAfter Return:");
  library.displayBooks();
}