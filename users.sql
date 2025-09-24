INSERT INTO `users`(`id`, `name`, `city`, `score`, `bonus`, `challenge`) 
VALUES ('1','Raj','Chennai','88','5','fitness'),
('2','Anu','Mumbai','91',NULL,'diet'),
('3','Ravi','Chennai','78','3','fitness'),
('4','Meena','Delhi','82',NULL,'diet'),
('5','Farah','Mumbai','95','4','fitness'),
('6','Kiran','Pune','70',NULL,'yoga'),
('7','Latha','Pune','87',NULL,'fitness');
SELECT * FROM `users` WHERE score >(SELECT AVG(score) FROM `users`);
SELECT `name`  FROM `users` WHERE challenge = (SELECT challenge FROM `users` WHERE name = "Farah");