-- Create a Customers table
CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    phone_number VARCHAR2(20),
    address VARCHAR2(255),
    city VARCHAR2(25),
    country VARCHAR(25)
);

SELECT * FROM customers;
-- Insert sample data into the Customers table

INSERT INTO Customers (customer_id,first_name,last_name,email,phone_number,address,city,country)VALUES(1, 'John', 'Doe', 'john.doe@email.com', '123-456-7890', '123 Main St', 'New York', 'USA');
INSERT INTO Customers (customer_id,first_name,last_name,email,phone_number,address,city,country)VALUES(2, 'Jane', 'Smith', 'jane.smith@email.com', '987-654-3210', '456 Oak St', 'Los Angeles', 'USA');
INSERT INTO Customers (customer_id,first_name,last_name,email,phone_number,address,city,country)VALUES(3, 'Alice', 'Johnson', 'alice.johnson@email.com', '555-555-5555', '789 Elm St', 'Chicago', 'USA');
INSERT INTO Customers VALUES(6, 'Robert', 'Johnson', 'robert.johnson@email.com', '555-123-4567', '101 Pine St', 'San Francisco', 'USA');
INSERT INTO Customers VALUES(4, 'Mary', 'Williams', 'mary.williams@email.com', '123-789-0123', '789 Maple St', 'Miami', 'USA');
INSERT INTO Customers VALUES(5, 'David', 'Miller', 'david.miller@email.com', '987-654-3210', '555 Oak St', 'Dallas', 'USA');
INSERT INTO Customers VALUES(7, 'Eva', 'Garcia', 'eva.garcia@email.com', '444-555-6666', '222 Cedar St', 'Phoenix', 'USA');

-- Add more sample data as needed
SELECT * FROM customers;
-- Create an Orders table
CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    order_date DATE,
    total_amount NUMBER,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert sample data into the Orders table
INSERT INTO Orders VALUES (101, 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 150.00);
INSERT INTO Orders VALUES (102, 2, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 200.00);
-- Add more sample data as needed

-- Create a Categories table
CREATE TABLE Categories (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR2(50)
);

-- Insert sample data into the Categories table
INSERT INTO Categories VALUES (1, 'Electronics');
INSERT INTO Categories VALUES (2, 'Clothing');
-- Add more sample data as needed

-- Create a Products table
CREATE TABLE Products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    category_id NUMBER,
    price NUMBER,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Insert sample data into the Products table
INSERT INTO Products VALUES (101, 'Laptop', 1, 999.99);
INSERT INTO Products VALUES (102, 'T-shirt', 2, 19.99);
-- Add more sample data as needed

-- Create a Shippers table
CREATE TABLE Shippers (
    shipper_id NUMBER PRIMARY KEY,
    shipper_name VARCHAR2(50)
);

-- Insert sample data into the Shippers table
INSERT INTO Shippers VALUES (1, 'Shipper A');
INSERT INTO Shippers VALUES (2, 'Shipper B');
-- Add more sample data as needed

-- Create a Suppliers table
CREATE TABLE Suppliers (
    supplier_id NUMBER PRIMARY KEY,
    supplier_name VARCHAR2(100),
    contact_name VARCHAR2(50),
    phone_number VARCHAR2(20),
    address VARCHAR2(255)
);

-- Insert sample data into the Suppliers table
INSERT INTO Suppliers VALUES (1, 'Supplier X', 'John Supplier', '123-456-7890', '789 Supplier St');
INSERT INTO Suppliers VALUES (2, 'Supplier Y', 'Jane Supplier', '987-654-3210', '456 Supplier St');
-- Add more sample data as needed

-- Create an OrderDetails table
CREATE TABLE OrderDetails (
    order_detail_id NUMBER PRIMARY KEY,
    order_id NUMBER,
    product_id NUMBER,
    quantity NUMBER,
    unit_price NUMBER,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert sample data into the OrderDetails table
INSERT INTO OrderDetails VALUES (1001, 101, 101, 2, 999.99);
INSERT INTO OrderDetails VALUES (1002, 102, 102, 3, 19.99);
-- Add more sample data as needed
