CREATE TABLE sales
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE,
count_product int
);

INSERT sales (order_date , count_product)
VALUES 
("2022-01-01",156),
("2022-01-02",180),
("2022-01-03",21),
("2022-01-04",124),
("2022-01-05",341);

select * from sales;

SELECT id , count_product,
CASE 
	WHEN count_product < 100
		THEN "Маленький заказ"
	WHEN count_product > 100 and count_product < 300
		THEN "Средний заказ"
	WHEN count_product > 300
		THEN "Большой заказ"
	ELSE "Очень большой заказ"
END AS Type_order
FROM sales;

CREATE TABLE orders
(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id varchar(10),
amount decimal(5 ,2),
order_status varchar(20)
);

INSERT orders (employee_id , amount, order_status )
VALUES 
("e03",15.00,"OPEN"),
("e01",25.50,"OPEN"),
("e05",100.70,"CLOSED"),
("e02",22.18,"OPEN"),
("e04",9.50,"CANCELLED");

SELECT id , employee_id , amount , order_status,
CASE
	WHEN order_status = "OPEN"
		THEN "Order is an open state"
	WHEN order_status = "CLOSED"
		THEN "Order is closed"
	WHEN order_status = "CANCELLED"
		THEN "Order is cancelled"
END AS full_order_status
FROM orders;

-- null это ссылка на ничто , обычно переменная имеет ссылку на 
-- объект в памяти в котором лежат данные какого то типа.
-- а тут переменная с сылкой на ничто. А 0 это значение типа
--  данных инт или децимал 

