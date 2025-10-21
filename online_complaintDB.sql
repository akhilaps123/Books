CREATE DATABASE `online_complaints`;
USE `online_complaints`;

CREATE TABLE `users`(
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(30) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
  );
CREATE TABLE `complaints`(
  complaint_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  complaint_title VARCHAR(100) NOT NULL,
  description_text TEXT NOT NULL,
  STATUS VARCHAR(20) DEFAULT 'pending',
  posted_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id) 
 );
--  Try creating the database design for the following
-- users can signup/login to the website. They can post online complaints in the website.


 