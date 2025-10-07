INSERT INTO `books`(`books_id`, `title`) VALUES ('1','The Alchemist'),('2','The Power of Now'),('3','Think and Grow Rich'),('4','Clean Code');
INSERT INTO `br`(`br_id`, `name`, `book_id`) VALUES ('101','Alice','1'),('102','Bob','2'),('103','Charlie',NULL);
SELECT books.book_id,books.title,br.name AS borrowed_name FROM books LEFT JOIN br ON books.book_id=br.book_id;
SELECT br.br_id,br.name,books.title AS borrowed_name FROM br LEFT JOIN books ON books.book_id = br.book_id; 
SELECT books.book_id ,books.title FROM books LEFT JOIN br ON books.book_id=br.book_id WHERE br.br_id IS null;
SELECT br.br_id,br.name,books.title AS borrowed_book FROM br LEFT JOIN books ON books.book_id = br.book_id;