WITH RECURSIVE cte AS 
(
SELECT 1 AS a , 1 as result
UNION ALL
select a + 1 , pow(a + 1 , 2) as res FROM cte
WHERE a < 10 
)
select * FROM cte; 

SELECT 12 as a;


select * from kek;
use seminar5;
CREATE TABLE cars
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    namee varchar(25) not null,
    cost int not null
);

insert into cars(namee, cost) VALUES
("Audi", 52642),
("Mercedes",57127),
("Skoda",9000),
("Volvo",29000),
("Bentley",350000),
("Citroen",21000),
("Hummer",41400),
("Volkswagen",21600)
;
select * from cars;

CREATE OR REPLACE VIEW viewcars 
AS
select * from cars
where cost < 25000
;
ALTER VIEW viewcars AS
select * from cars
where cost < 30000
;

CREATE VIEW shkodaAudi AS
select * from cars
where namee = "Skoda" or
namee = "Audi";

select * from viewcars;
select * from shkodaAudi;

SELECT * FROM analysis;

CREATE TABLE orders
(
	ord_id INT PRIMARY KEY AUTO_INCREMENT,
    ord_datetime datetime,
    ord_an int,
    FOREIGN KEY (ord_an)  REFERENCES analysis (an_id)
);

select * 
 from orders 
where ord_datetime > "2020-02-05"
;











