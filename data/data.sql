PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    signup_date DATE,
    location TEXT
);
INSERT INTO Customers VALUES(1,'Alice','alice@mail.com','2024-01-12','Delhi');
INSERT INTO Customers VALUES(2,'Bob','bob@mail.com','2024-02-18','Mumbai');
INSERT INTO Customers VALUES(3,'Charlie','charlie@mail.com','2024-03-05','Bangalore');
CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price REAL
);
INSERT INTO Products VALUES(1,'iPhone 14','Electronics',79999.0);
INSERT INTO Products VALUES(2,'MacBook Air','Electronics',99999.0);
INSERT INTO Products VALUES(3,'Nike Shoes','Fashion',4999.0);
INSERT INTO Products VALUES(4,'Levi Jeans','Fashion',2999.0);
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    payment_method TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Orders VALUES(1,1,'2024-06-01','UPI');
INSERT INTO Orders VALUES(2,2,'2024-06-02','Credit Card');
INSERT INTO Orders VALUES(3,1,'2024-07-10','Wallet');
CREATE TABLE OrderDetails (
    order_detail_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO OrderDetails VALUES(1,1,1,1);
INSERT INTO OrderDetails VALUES(2,1,3,2);
INSERT INTO OrderDetails VALUES(3,2,2,1);
INSERT INTO OrderDetails VALUES(4,3,4,3);
CREATE TABLE Payments (
    payment_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    amount REAL,
    payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
INSERT INTO Payments VALUES(1,1,89997.0,'2024-06-01');
INSERT INTO Payments VALUES(2,2,99999.0,'2024-06-02');
INSERT INTO Payments VALUES(3,3,8997.0,'2024-07-10');
COMMIT;
