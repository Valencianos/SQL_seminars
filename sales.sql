USE gb_lesson_1;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
order_date DATE,
count_product INT);

INSERT INTO sales (order_date, count_product)
VALUES
('2022-01-01', '156'),
('2022-01-02', '180'),
('2022-01-03', '21'),
('2022-01-04', '124'),
('2022-01-05', '341');

SELECT * FROM sales;

SELECT *,
CASE
	WHEN count_product < 100 THEN 'small order'
	WHEN count_product >= 100 and count_product <= 300 THEN 'medium order'
	WHEN count_product > 300 THEN 'large order'
	END AS 'type_of_order'
FROM sales;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
employee_id VARCHAR(5),
amount DECIMAL,
order_status VARCHAR(10));

INSERT INTO orders (employee_id, amount, order_status)
VALUES
('e03', '15.00', 'OPEN'),
('e01', '25.50', 'OPEN'),
('e05', '100.70', 'CLOSED'),
('e02', '22.18', 'OPEN'),
('e04', '9.50', 'CANCELLED');

SELECT * ,
IF (order_status = 'OPEN', 'Order is in open state',
	IF (order_status = 'CLOSED', 'Order is closed', 'Order is cancelled'))
AS full_order_status
FROM orders;

/* 0 - это числовое значение, а NULL означает ничто, отстутсвие любого значения */