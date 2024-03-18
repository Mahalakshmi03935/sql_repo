--creating database--
create database ecommerce;
use ecommerce;
--creating 4 tables--
create table gold_members(user_id int,user_name varchar(255),signup_date date);
create table users(user_id int,user_name varchar(255),signup_date date);
create table sales(userid int,user_name varchar(255),created_date date,product_id int);
create table product(product_id int,product_name varchar(255),price decimal(10,2)) 
--inserting values into the tables--
insert into gold_members(user_id,user_name,signup_date)values (001, 'John', '2017-09-22'),(002, 'Mary', '2017-04-21'),
    (005, 'Maha', '2017-05-22'),(007, 'Bala', '2017-03-03'),
    (008, 'Divya', '2016-06-04'),(009, 'Tharani', '2019-02-03');

insert into users(user_id,user_name,signup_date)values(001, 'John', '2014-09-02'),(003, 'Michel', '2015-01-15'),(002, 'Mary', '2014-04-11'),
    (008, 'Maha', '2017-03-03'),(009, 'lakshmi', '2019-04-03'),(004, 'Saro', '2016-07-02'),(006, 'Deva', '2016-09-01'),
    (007, 'Bala', '2015-03-03');

insert into sales(userid,user_name,created_date,product_id)values(001, 'John', '2017-04-19', 2),(002, 'Mary', '2019-12-18', 1),(003, 'Michel', '2020-07-20', 3),
  (001, 'John', '2019-10-23', 2),(001, 'John', '2018-03-19', 3),(002, 'Mary', '2016-12-20', 2),(001, 'John', '2016-11-09', 1),(001, 'John', '2016-05-20', 3),
  (002, 'Michel', '2017-09-24', 1),(001, 'John', '2017-03-11', 2),(001, 'John', '2016-03-11', 1),(002, 'Mary', '2016-11-10', 1),
  (002, 'Mary', '2017-12-07', 2),(003, 'Michel', '2020-05-20', 1),(003, 'Michel', '2020-01-20', 3),(004, 'Saradha', '2015-11-20', 2),
  (006, 'Sesha', '2016-02-22', 1),(007, 'Viswa', '2017-08-21', 3),(008, 'Ram', '2018-04-19', 1),(009, 'Swetha', '2018-10-23', 2);

insert into product(product_id,product_name,price)values (1, 'Mobile', 980),(2, 'Ipad', 870),(3, 'Laptop', 330),(4, 'Headphones', 120),
    (5, 'Smart Watch', 250),(6, 'Desktop', 1200),(7, 'KeyBoard', 333),(8, 'CPU', 369);

SHOW tables from ecommerce;
--Count all the records of all four tables using single query --
SELECT 
    (SELECT COUNT(*) FROM gold_members) AS gold_members_count,
    (SELECT COUNT(*) FROM users) AS users_count,
    (SELECT COUNT(*) FROM sales) AS sales_count,
    (SELECT COUNT(*) FROM product) AS product_count;
-- The total amount each customer spent on ecommerce company--
SELECT 
    userid,
    user_name,
    SUM(p.price) AS total_spent
FROM 
    sales s
JOIN 
    product p ON s.product_id = p.product_id
GROUP BY 
    userid, user_name;

--Find the distinct dates of each customer visited the website: output should have 2 columns date and customer name --
SELECT DISTINCT
    created_date AS date,
    user_name
FROM
    sales
ORDER BY 
    user_name, created_date;


sp_rename 'sales.userid', 'user_id', 'COLUMN';

--8.Find the first product purchased by each customer using 3 tables(users, sales, product) --
SELECT 
    u.user_name,
    p.product_name AS first_product
FROM 
    users u
LEFT JOIN 
    sales s ON u.user_id = s.user_id
LEFT JOIN 
    product p ON s.product_id = p.product_id
ORDER BY 
    u.user_name;

--9.What is the most purchased item of each customer and how many times the customer has purchased it: output should have 2 columns count of the items as item_count and customer name --
SELECT 
    user_name,
    product_name,
    COUNT(*) AS item_count
FROM 
    sales s
JOIN 
    product p ON s.product_id = p.product_id
GROUP BY 
    user_name, product_name
ORDER BY 
    user_name, item_count DESC;

--10.Find out the customer who is not the gold_member_user --
SELECT DISTINCT
    u.user_name
FROM 
    users u
LEFT JOIN 
    gold_members g ON u.user_id = g.user_id
WHERE 
    g.user_id IS NULL;

--11.What is the amount spent by each customer when he was the gold_member user --
SELECT 
    u.user_name,
    SUM(p.price) AS amount_spent_as_gold_members
FROM 
    users u
JOIN 
    sales s ON u.user_id = s.user_id
JOIN 
    product p ON s.product_id = p.product_id
JOIN 
    gold_members g ON u.user_id = g.user_id
GROUP BY 
    u.user_name;

--12.Find the Customers names whose name starts with M --
SELECT 
    user_name
FROM 
    users
WHERE 
    user_name LIKE 'M%';
--13.Find the Distinct customer Id of each customer --
SELECT DISTINCT 
    user_id
FROM 
    users;

--14.Change the Column name from product table as price_value from price --
ALTER TABLE product
ALTER COLUMN price DECIMAL(10, 2) NULL;

--15.Change the Column value product_name – Ipad to Iphone from product table --
UPDATE product SET product_name = 'Iphone' WHERE product_name = 'Ipad';

--16.Change the table name of gold_member_users to gold_membership_users --
EXEC sp_rename 'gold_members', 'gold_membership';

--17.Create a new column  as Status in the table crate above gold_membership_users  the Status values should be 2 Yes and No if the user is gold member, then status should be Yes else No. 
ALTER TABLE gold_membership 
ADD Status VARCHAR(3)
CONSTRAINT CHK_Status CHECK (Status IN ('Yes', 'No'));

--18..Delete the users_ids 1,2 from users table and roll the back changes once both the rows are deleted one by one mention the result when performed roll back--
BEGIN TRANSACTION;

DELETE FROM users WHERE user_id = 1;
DELETE FROM users WHERE user_id = 2;

ROLLBACK;

--19.Insert one more record as same (3,'Laptop',330) as product table --
INSERT INTO product (product_id, product_name, price) VALUES (3, 'Laptop', 330);

--20.Write a query to find the duplicates in product table --
SELECT product_id, product_name, COUNT(*) AS duplicate_count
FROM product
GROUP BY product_id, product_name
HAVING COUNT(*) > 1;







