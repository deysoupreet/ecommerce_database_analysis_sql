CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    signup_date DATE,
    location TEXT
);
CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price REAL
);
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    payment_method TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE OrderDetails (
    order_detail_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Payments (
    payment_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    amount REAL,
    payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
