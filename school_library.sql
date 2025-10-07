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
