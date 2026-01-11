create database pizzahut;
USE pizzahut;
CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT,
    pizza_id VARCHAR(50),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
CREATE TABLE orders_details (
   order_details_id int NOT NULL,
   order_id int NOT NULL,
   pizza_id text NOT NULL,
   quantity int NOT NULL,
   PRIMARY KEY (order_details_id)
 );
 CREATE TABLE pizza_types (
   pizza_type_id text,
   name text,
   category text,
   ingredients text
 ) ;
 CREATE TABLE pizzas (
   pizza_id text,
   pizza_type_id text,
   size text,
   price double DEFAULT NULL
 ) 

