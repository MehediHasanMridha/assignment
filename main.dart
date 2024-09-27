class Book {
  // Properties
  String title;
  String author;
  int publicationYear;
  int pagesRead;


  static int totalBooks = 0;

  // Constructor
  Book(this.title, this.author, this.publicationYear, [this.pagesRead = 0]) {
    totalBooks++;
  }

  //read pages Method
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter methods
  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getPagesRead() {
    return pagesRead;
  }

  // Method to calculate and return the age of the book
  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  
  Book book1 = Book("Pother Pachali", "Bivutivuson Bondhopadhay", 1949);
  Book book2 = Book("To Kill a Mockingbird", "Harper Lee", 1960);
  Book book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);


  book1.read(100);
  book2.read(150);
  book3.read(50);


  print("Book 1:");
  print("Title: ${book1.getTitle()}");
  print("Author: ${book1.getAuthor()}");
  print("Publication Year: ${book1.getPublicationYear()}");
  print("Pages Read: ${book1.getPagesRead()}");
  print("Book Age: ${book1.getBookAge()} years old");
  print("");

  print("Book 2:");
  print("Title: ${book2.getTitle()}");
  print("Author: ${book2.getAuthor()}");
  print("Publication Year: ${book2.getPublicationYear()}");
  print("Pages Read: ${book2.getPagesRead()}");
  print("Book Age: ${book2.getBookAge()} years old");
  print("");

  print("Book 3:");
  print("Title: ${book3.getTitle()}");
  print("Author: ${book3.getAuthor()}");
  print("Publication Year: ${book3.getPublicationYear()}");
  print("Pages Read: ${book3.getPagesRead()}");
  print("Book Age: ${book3.getBookAge()} years old");
  print("");

  // Display the total number of Book objects created
  print("Total number of books created: ${Book.totalBooks}");
}
