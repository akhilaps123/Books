INSERT INTO `mobiles`(`id`, `brand`, `model`, `price`, `stock`)
VALUES (1, 'Samsung', 'Galaxy M14', 12000, 30),(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),(4, 'Samsung', 'Galaxy A23', 18000, 10);

SELECT  `price`, `stock` FROM `mobiles` WHERE price> 13000 AND stock<15;
UPDATE `mobiles` SET `stock`= stock + 5 , `price` = 12500 WHERE `model` ='Narzo 50';
DELETE FROM `mobiles` WHERE id = 2;
SELECT 
	MAX(price) AS Largest_price,
	MIN(price) AS Lowest_price  
FROM mobiles;
SELECT COUNT(*) AS total_records FROM `mobiles`;
SELECT * FROM `mobiles` ORDER BY `price` DESC LIMIT 2;
