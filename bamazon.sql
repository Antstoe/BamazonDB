DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products
(
  item_id INT NOT NULL
  AUTO_INCREMENT,
  product_name VARCHAR
  (100) NULL,
  department_name VARCHAR
  (100) NULL,
  price DECIMAL
  (10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY
  (item_id)
);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('iPhone X', 'Electronics', 1200, 1);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('iPhone XS', 'Electronics', 1449, 2);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('Razer Phone 2', 'Electronics', 699, 3);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('Huawei P20 Lite', 'Electronics', 359, 4);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('Huawei Mate 20 Pro', 'Electronics', 909, 5);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('Samsung Galaxy S9', 'Electronics', 619, 6);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('Samsung Galaxy Note9', 'Electronics', 999, 7);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('Google Pixel2', 'Electronics', 159, 8);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('Google Pixel3', 'Electronics', 649, 9);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ('Google Pixel3 XL', 'Electronics', 849, 0);

      INSERT INTO products
    (product_name,department_name,price,stock_quantity)
  VALUES
    ("Baseball Cap", "Clothing", 15, 40);
  INSERT INTO products
    (product_name,department_name,price,stock_quantity)
  VALUES
    ("Squat Shoes", "Clothing", 45, 30);
  INSERT INTO products
    (product_name,department_name,price,stock_quantity)
  VALUES
    ("Running Shoes", "Clothing", 45, 50);
  INSERT INTO products
    (product_name,department_name,price,stock_quantity)
  VALUES
    ("Compression Short", "Clothing", 25, 60);

CREATE TABLE departments
  (
    department_id INT
    auto_increment NOT NULL,
    department_name VARCHAR
    (100) NOT NULL,
    overhead_costs INT NOT NULL,
    primary key
    (department_id)
);
    ALTER TABLE products
ADD COLUMN product_sales INT;

    INSERT INTO departments
      (department_name,overhead_costs)
    VALUES
      ("Clothing", 200);
    INSERT INTO departments
      (department_name,overhead_costs)
    VALUES
      ("Tech", 200);

    CREATE temporary table department
    Select department_name, SUM(product_sales)AS department_sales
    FROM products
    GROUP BY department_name;
    SELECT *
    FROM departments INNER JOIN department 
    where departments.department_name=department.department_name;
    

