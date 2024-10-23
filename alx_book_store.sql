CREATE DATABASE alx_book_store;
USE alx_book_store;
DROP TABLE IF EXISTS Books;

CREATE TABLE Authors(author_id INT PRIMARY KEY AUTO_INCREMENT, 
			 author_name VARCHAR(215));
CREATE TABLE Books(book_id INT PRIMARY KEY AUTO_INCREMENT, 
			title VARCHAR(130), author_id INT, 
            price DOUBLE, 
            publication_date DATE,
            FOREIGN KEY (author_id) REFERENCES Authors(author_id));

CREATE TABLE Customers(customer_id INT PRIMARY KEY AUTO_INCREMENT, 
			 customer_name VARCHAR(215), 
             email VARCHAR(215), 
             address TEXT);

CREATE TABLE Orders(order_id INT PRIMARY KEY AUTO_INCREMENT, 
			customer_id INT,
            order_date DATE,
			FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));

CREATE TABLE Order_details(orderdetail_id INT PRIMARY KEY AUTO_INCREMENT, 
							order_id INT,
                            book_id INT,
                            FOREIGN KEY (order_id) REFERENCES Orders(order_id),
                            FOREIGN KEY (book_id) REFERENCES Books(book_id));
