DROP TABLE IF EXISTS mobiles;
CREATE TABLE mobiles (
id INT NOT NULL,
product_name VARCHAR(45),
manufacturer VARCHAR(45),
product_count INT,
price INT,
PRIMARY KEY(id)
);

INSERT INTO mobiles (id, product_name, manufacturer, product_count, price)
VALUES
(1, 'iPhone X', 'Apple', 3, 76000),
(2, 'iPhone 8', 'Apple', 2, 51000),
(3, 'Galaxy S9', 'Samsung', 2, 56000),
(4, 'Galaxy S8', 'Samsung', 1, 41000),
(5, 'P20 Pro', 'Huawei', 5, 36000);

SELECT product_name, manufacturer, price FROM mobiles WHERE product_count > 2;

SELECT product_name FROM mobiles WHERE manufacturer = 'Samsung';

SELECT * FROM mobiles WHERE product_name or manufacturer LIKE '%Iphone%';

SELECT * FROM mobiles WHERE product_name or manufacturer LIKE '%Samsung%';

SELECT * FROM mobiles WHERE product_name LIKE '%8%';

SELECT * FROM mobiles WHERE product_name REGEXP '[0-9]';