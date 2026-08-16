create database prod;
use prod;
select *from `prod`.`prod+env+inventory+dataset`;

select * from `prod`.`products+(1)`;
CREATE TABLE new_tablee AS
SELECT
    a.`Order Date (DD/MM/YYYY)` AS `Order_Date_DD_MM_YY`,
    a.`Product ID` AS `product_id`,
    a.Availability,
    a.Demand,
    b.`Product Name` AS `product_name`,
    b.`Unit Price ($)` AS `unit_price`
FROM `prod`.`prod+env+inventory+dataset` AS a
LEFT JOIN `prod`.`products+(1)` AS b
    ON a.`Product ID` = b.`Product ID`;