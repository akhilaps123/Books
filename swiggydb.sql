CREATE TABLE users(
	user_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(30) NOT null,
    email varchar(100) UNIQUE,
	address varchar(200),
	phone_no varchar(15)
);
CREATE TABLE restaurants(
    restaurant_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(30) NOT null,
	address varchar(200) NOT null,
	phone_no varchar(15) NOT null,
    rating decimal(2,1)
);
CREATE TABLE menu_items(
    item_id int PRIMARY KEY AUTO_INCREMENT,
    restaurant_id int NOT null,
	name varchar(30) NOT null,
	price decimal(10,2),
	category varchar(50),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
   );
CREATE TABLE orders(
    order_id int PRIMARY KEY AUTO_INCREMENT,
    user_id int NOT null,
    restaurant_id int NOT null,
    order_date datetime DEFAULT CURRENT_TIMESTAMP,
    status varchar(20),
    total_amount decimal(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
   );

CREATE TABLE order_item(
    order_item_id int PRIMARY KEY AUTO_INCREMENT,
    order_id int not null,
    item_id int NOT null,
    quantity int,
    price decimal(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
   );
CREATE TABLE delivery_person(
    delivery_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(40) NOT null,
    phone_no varchar(15) NOT null,
    vehicle_no varchar(20) NOT null
     );
CREATE TABLE payments(
    payment_id int PRIMARY KEY AUTO_INCREMENT,
    order_id int not null,
    payment_mode varchar(20),
    payment_status varchar(20),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
    );


