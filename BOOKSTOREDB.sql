CREATE DATABASE BookStoreDB;
USE BookStoreDB;
CREATE TABLE authors(author_id INT NOT NULL AUTO_INCREMENT,
name text(20) NOT NULL,
country text(20) NOT NULL,
PRIMARY KEY (author_id));
CREATE TABLE books(book_id INT NOT NULL AUTO_INCREMENT,
title text NOT NULL,
price INT NOT NULL,
author_id INT ,
PRIMARY KEY (book_id),
FOREIGN KEY (author_id)REFERENCES authors(author_id));
ALTER TABLE books ADD published_year INT;
TRUNCATE TABLE books;
DROP DATABASE bookstoredb;