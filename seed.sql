CREATE DATABASE IF NOT EXISTS inventory;

USE inventory;

CREATE TABLE IF NOT EXISTS food_inventory (
    food_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
    PRIMARY KEY (food_id)
);

INSERT INTO food_inventory (name, price) VALUES ('Padthai', 50.0);
INSERT INTO food_inventory (name, price) VALUES ('Somtum', 40.0);
INSERT INTO food_inventory (name, price) VALUES ('Noodle', 45.0);
INSERT INTO food_inventory (name, price) VALUES ('Fried Rice', 55.0);
INSERT INTO food_inventory (name, price) VALUES ('Green Curry', 65.0);
INSERT INTO food_inventory (name, price) VALUES ('Tom Yum', 70.0);
INSERT INTO food_inventory (name, price) VALUES ('Chicken Satay', 80.0);
INSERT INTO food_inventory (name, price) VALUES ('Mango Sticky Rice', 90.0);
INSERT INTO food_inventory (name, price) VALUES ('Papaya Salad', 35.0);
INSERT INTO food_inventory (name, price) VALUES ('Coconut Ice Cream', 30.0);

CREATE DATABASE IF NOT EXISTS orders;

USE orders;

CREATE TABLE IF NOT EXISTS food_order (
    order_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    order_status VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
    PRIMARY KEY (order_id)
);

INSERT INTO food_order (customer_id, total_amount, order_status) VALUES (1, 220.0, 'waiting');
INSERT INTO food_order (customer_id, total_amount, order_status) VALUES (2, 150.0, 'waiting');
INSERT INTO food_order (customer_id, total_amount, order_status) VALUES (3, 175.0, 'completed');
INSERT INTO food_order (customer_id, total_amount, order_status) VALUES (4, 250.0, 'cancel');
INSERT INTO food_order (customer_id, total_amount, order_status) VALUES (5, 300.0, 'waiting');
INSERT INTO food_order (customer_id, total_amount, order_status) VALUES (6, 200.0, 'completed');
INSERT INTO food_order (customer_id, total_amount, order_status) VALUES (7, 180.0, 'waiting');
INSERT INTO food_order (customer_id, total_amount, order_status) VALUES (8, 220.0, 'completed');


CREATE TABLE IF NOT EXISTS order_item (
    order_item_id INT NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    food_id INT NOT NULL,
    quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
    PRIMARY KEY (order_item_id)
);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (1, 1, 2);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (1, 2, 3);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (2, 1, 3);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (3, 3, 1);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (3, 4, 2);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (4, 5, 1);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (5, 6, 2);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (6, 7, 3);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (7, 8, 2);
INSERT INTO order_item (order_id, food_id, quantity) VALUES (8, 9, 1);


CREATE DATABASE IF NOT EXISTS customers;

USE customers;

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
    PRIMARY KEY (customer_id)
);

INSERT INTO customer (name, address, phone) VALUES ('Kasidet', 'Bangkok', '0812345678');
INSERT INTO customer (name, address, phone) VALUES ('Mikey', 'Bangkok', '0812345679');
INSERT INTO customer (name, address, phone) VALUES ('Alice', 'Chiang Mai', '0812345680');
INSERT INTO customer (name, address, phone) VALUES ('Bob', 'Phuket', '0812345681');
INSERT INTO customer (name, address, phone) VALUES ('Charlie', 'Hua Hin', '0812345682');
INSERT INTO customer (name, address, phone) VALUES ('Daisy', 'Pattaya', '0812345683');
INSERT INTO customer (name, address, phone) VALUES ('Eve', 'Bangkok', '0812345684');
INSERT INTO customer (name, address, phone) VALUES ('Frank', 'Bangkok', '0812345685');
INSERT INTO customer (name, address, phone) VALUES ('George', 'Ayutthaya', '0812345686');
INSERT INTO customer (name, address, phone) VALUES ('Helen', 'Bangkok', '0812345687');

