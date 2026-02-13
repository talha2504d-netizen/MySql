CREATE DATABASE my_customer_database;
drop database my_customer_database;

USE my_customer_database;

CREATE TABLE Customertable(
  Customer_Id int auto_increment,
  CustomerName varchar(30),
  Address varchar(20),
  Email varchar(15),
  Primary key(Customer_Id)
);
SELECT * FROM Customertable;
 Insert into Customertable values
 (null,'Hassan', "House no. 4/4", "hassan@gmail.com", 1),
 (null,'Haris', "House no. 4/9", "haris@gmail.com", 2),
 (null,'Hamid', "House no. 4/2", "hamid@gmail.com", 3);
 
CREATE DATABASE my_order_database;

CREATE TABLE ORDERS(
item varchar(40),
price int(35),
Quantity integer(45),
Gst int3,
order_Id integer(60)
);

SELECT * FROM ORDERS;
 Insert into ORDERS(item, price, Quantity, Gst, order_Id) values
 ('Junaid',  87.98535, "House no. 4/1 street red, north america", "junaid@gmail.com", 4567891),
 ('Huzaifa', 87.98539, "House no. 4/1 street red, north america", "huzaifa@gmail.com", 4567145),
 ('Hassan',  87.98536, "House no. 4/1 street red, north america", "hassan@gmail.com", 4567432);
 
 SELECT CustomerName from Customertable;
 SELECT * from Customertable; 
 SELECT DISTINCT Address from Customertable;
 SELECT count(CustomerName) from Customertable;
 SELECT count(*) from Customertable;
 
 
 
 SELECT *from Customertable where Customer_Id > 6;
 SELECT *from Customertable where Customer_id > 2;
 SELECT *from Customertable where CustomerName = "Arif";
 SELECT *from Customertable where Email > 15;
 SELECT *from Customertable where Customer_id < 6;
 SELECT *from Customertable where Customer_id >= 5;
 SELECT *from Customertable where Customer_id > 3;
 SELECT *from Customertable where Customer_id != 4;
 
 
 SELECT * from Customertable where Customer_Id IN (6, 5, 5);
 SELECT * from Customertable where Customer_Id = 6 OR Customer_Id = 5 OR Customer_Id = 5;
 
 SELECT CustomerName from Customertable where CustomerName LIKE "H%";
 SELECT CustomerName from Customertable where CustomerName LIKE "H_____";
 SELECT CustomerName from Customertable where CustomerName LIKE "H_s_";
 
 
 CREATE TABLE IF NOT EXISTS orders (
	order_id INT AUTO_INCREMENT,
    customer_id INT,
    item_name VARCHAR(100) NOT NULL,
    unit VARCHAR(10),
    quantity INT NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    currency VARCHAR(8) NOT NULL,
    CONSTRAINT PK_orders PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
 );
 
INSERT INTO orders VALUES
 (NULL, 1, "pencil", NULL, 50, "PKR"),
 (NULL, 1, "rubber", NULL, 20, "PKR"),
 (NULL, 1, "pen", NULL, 100, "PKR"),
 (NULL, 2, "battery", NULL, 110, "PKR"),
 (NULL, 4, "sharperner", NULL, 20, "PKR"),
 (NULL, 1, "lcd", NULL, 150000, "PKR"),
 (NULL, 3, "Apples", NULL, 300, "PKR"),
 (NULL, 4, "Orange", NULL, 500, "PKR"),
 (NULL, 5, "Pineapple", NULL, 1000, "PKR");
 
 select * from orders;