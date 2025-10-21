CREATE TABLE `categories`(id INT NOT null AUTO_INCREMENT,
                          category_name VARCHAR(50) NOT NULL,
                          PRIMARY KEY (id)
                          );
CREATE TABLE `books`(book_id INT NOT null AUTO_INCREMENT,
                  book_name VARCHAR(50) NOT NULL,
                  id INT NOT null,
                  PRIMARY KEY(book_id),
                  FOREIGN KEY(id) REFERENCES categories(id));
CREATE INDEX idx_book_name ON books(book_name);
SHOW INDEX FROM books;
-- Imagine you are creating a simple system for a school library. Each book has a unique ID and belongs to a single category (like Fiction, Science, History, etc.), but each category can have many books.
-- Create two tables:
-- categories with category details
-- books with book details, where each book is linked to a category
-- Use AUTO_INCREMENT for the IDs.
-- Add a one-to-many relationship between categories and books.
-- Create an index on the book_name column of the books table.
-- Show all indexes in the books table.


