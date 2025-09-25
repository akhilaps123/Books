CREATE DATABASE GroceryShop;
use GroceryShop;
CREATE TABLE products (product_id int NOT NULL AUTO_INCREMENT,
product_name text NOT NULL,
price int NOT NULL,
PRIMARY KEY (product_id));
ALTER TABLE products ADD category text;
TRUNCATE TABLE products;
DROP DATABASE GroceryShop;