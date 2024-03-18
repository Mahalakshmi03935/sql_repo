--creating the table product_details
create table product_details ( sell_date date, product varchar(100));
123
--Inserting data into the product_details table--
INSERT INTO product_details (sell_date, product)VALUES('2020-05-30', 'Headphones'),('2020-06-01', 'Pencil'),('2020-06-02', 'Mask'),('2020-05-30', 'Basketball'),
('2020-06-01', 'Book'),('2020-06-02', 'Mask'),('2020-05-30', 'T-Shirt'),('2020-03-03', 'Volleyball'),('2020-04-03', 'Television'),('2020-03-06', 'Fridge');

-- Query to find the number of different products sold and their names for each date--
SELECT
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    STRING_AGG(product, ', ') AS product_list
FROM
    product_details
GROUP BY
    sell_date;
