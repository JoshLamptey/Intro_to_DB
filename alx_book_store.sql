#creating the library database

CREATE DATABASE IF NOT EXISTS alx_book_store;
    
CREATE TABLE Books(
    book_id INT AUTO_INCREMENT Primary Key ,
    title VARCHAR(130) NOT NULL,
    author_id FOREIGN KEY REFERENCES Authors(author_id) NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE
)

CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT Primary Key ,
    author_name VARCHAR(215)
)
CREATE TABLE Customers(
    customer_id(Primary Key) NOT NULL,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL
)
CREATE TABLE Orders(
    order_id(Primary Key) NOT NULL,
    customer_id FOREIGN KEY REFERENCES Customers(customer_id) NOT NULL,
    order_date DATE
)
CREATE TABLE Order_Details(
    orderdetailid (Primary Key) NOT NULL,
    order_id FOREIGN KEY REFERENCES Orders(order_id) NOT NULL,
    book_id FOREIGN KEY REFERENCES Books(book_id) NOT NULL,
    quantity DOUBLE PRECISON
)
