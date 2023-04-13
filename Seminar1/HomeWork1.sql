SELECT *
FROM mobile_phones 
WHERE product_name LIKE "Galaxy%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "Galaxy%" and "iPhone%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "Galaxy%" and "iPhone%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "Samsung%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "iPhone%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "iPhone%" And "Samsung%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "iPhone%","Samsung%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "iPhone%","Samsung%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "iPhone%";
SELECT *
FROM mobile_phones 
WHERE product_name LIKE "iPhone";
SELECT manufacturer , price
FROM mobile_phones 
WHERE product_count > 2;
SELECT * FROM mobile_phones
WHERE manufacturer = "Samsung";
INSERT INTO `homework1`.`mobile_phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone 8', 'Apple', '2', '51000');
INSERT INTO `homework1`.`mobile_phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy s9', 'Samsung', '2', '56000');
INSERT INTO `homework1`.`mobile_phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy s8', 'Samsung', '1', '41000');
INSERT INTO `homework1`.`mobile_phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('P20 Pro', 'Huawei', '5', '36000');
SELECT * FROM homework1.mobile_phones;
INSERT INTO `homework1`.`mobile_phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone X', 'Apple', '3', '76000');
SELECT * FROM homework1.mobile_phones;
CREATE TABLE `homework1`.`mobile_phones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `product_count` INT NULL,
  `price` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `product_name_UNIQUE` (`product_name` ASC) VISIBLE);
