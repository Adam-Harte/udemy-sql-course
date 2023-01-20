CREATE DATABASE online_shop;

CREATE TABLE products (
  name VARCHAR(200),
  price NUMERIC(6, 2),
  description TEXT,
  amount_in_stock INT,
  image VARCHAR(300)
);

INSERT INTO products (price, name, description, amount_in_stock, image)
VALUES(
  12.99,
  'A book',
  'This is a book',
  39,
  'images/products/book.jpeg'
);

ALTER TABLE products
-- MODIFY COLUMN name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN price NUMERIC(6, 2) NOT NULL CHECK (price > 0),
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amount_in_Stock INT CHECK (amount_in_Stock >= 0);
ALTER COLUMN name VARCHAR(200) NOT NULL,
ALTER COLUMN price NUMERIC(6, 2) NOT NULL,
ALTER COLUMN description TEXT NOT NULL,
ADD CONSTRAINT price_positive CHECK (price > 0),
ADD CONSTRAINT amount_in_Stock_positive CHECK (amount_in_Stock >= 0);

ALTER TABLE products
-- ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
ADD COLUMN id SERIAL PRIMARY KEY;