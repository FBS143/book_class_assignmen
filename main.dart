// Once upon a time, in a land of code, there was a blueprint for books called 'Book'.

class Book {

  // This book had four main traits: a title, an author, the year it was published, and how many pages had been read.

  String title;
  String author;
  int publicationYear;
  int pageRead = 0; // By default, no pages are read when a book is created.

// As more books were created, a wise counter was keeping track of them all.

static int totalBooks = 0;

// When a new book is born, we give it a title, an author, and the year it was published.
Book(this.title, this.author, this.publicationYear){
// Every time a new book appears, the counter adds one to the total number of books.
totalBooks++;
}

// The book can be read. If someone reads a certain number of pages, this method records it.
void read(int pages){
  pageRead+=pages; // Each time we read more, the number of read pages increases.
}

/* Books get older as time passes.
 This method calculates the book’s age by subtracting the year it was published from the current year. */

int getBookAge(){
  int currentYear = DateTime.now().year; // The wise current year always knows what year it is.
  return currentYear - publicationYear;  // The age is how many years have passed since the book was published.
}

}


// Now, let’s enter the world of the 'main' function, where three legendary books are created.
void main() {
// The first book, called 'Book One', was written by 'Author One' in the year 2010.
Book book1 = Book('Book One', 'Author One', 2010);

// The second book, 'Book Two', was penned by 'Author Two' in 2015.
Book book2 = Book('Book two', 'Author Two', 2015);

// And finally, 'Book Three' was brought to life by 'Author Three' in the year 2020.
Book book3 = Book('Book Three', 'Author Three', 2020);

// People loved reading these books. Someone read 50 pages from 'Book One'.
book1.read(50);

// Another reader picked up 'Book Two' and finished 30 pages.
book2.read(30);

// While 'Book Three' was devoured quickly, with 70 pages read in one sitting.
book3.read(70);

// Now, let’s discover the details of each book.

print('Title: ${book1.title}, Author: ${book1.author}, Page Read: ${book1.pageRead}, Age: ${book1.getBookAge()} years');
print('Title: ${book2.title}, Author: ${book2.author}, Page Read: ${book2.pageRead}, Age: ${book2.getBookAge()} years');
print('Title: ${book3.title}, Author: ${book3.author}, Page Read: ${book3.pageRead}, Age: ${book3.getBookAge()} years');

// Lastly, we mustn’t forget to announce how many books have been created in total.

print('Total Books Created: ${Book.totalBooks}');

}