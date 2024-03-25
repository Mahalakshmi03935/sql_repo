<<<<<<< HEAD
**SQL Repo** : This Repo consists of SQL Programs

**Question 1:**

• Create Database as ecommerce                        

•Create 4 tables (gold_member_users, users, sales, product) under the above database(ecommerce)

•Insert the values provided above with respective datatypes

•Show all the tables in the same database(ecommerce)

•Count all the records of all four tables using single query

•What is the total amount each customer spent on ecommerce company

•Find the distinct dates of each customer visited the website: output should have 2 columns date and customer name

•Find the first product purchased by each customer using 3 tables(users, sales, product)

•What is the most purchased item of each customer and how many times the customer has purchased it: output should have 2 columns count of the items as item_count and customer name

•Find out the customer who is not the gold_member_user

•What is the amount spent by each customer when he was the gold_member user

•Find the Customers names whose name starts with M

•Find the Distinct customer Id of each customer

•Change the Column name from product table as price_value from price

•Change the Column value product_name – Ipad to Iphone from product table

•Change the table name of gold_member_users to gold_membership_users

•Create a new column as Status in the table crate above gold_membership_users the Status values should be 2 Yes and No if the user is gold member, then status should be Yes else No.

•Delete the users_ids 1,2 from users table and roll the back changes once both the rows are deleted one by one mention the result when performed roll back

•Insert one more record as same (3,'Laptop',330) as product table

•Write a query to find the duplicates in product table

**Question 2:**

**Create Table:**
    Create a table named product_details with columns sell_date and product.
**Insert Data:**
Insert the provided data into the product_details table.
**Write Query:**
Write a SQL query to count the number of different products sold for each date and concatenate their names.
Use the GROUP BY clause to group the data by sell_date.
Use COUNT(DISTINCT product) to count the number of different products sold.
Use GROUP_CONCAT function to concatenate the names of the products.
**Display Output:**
Display the output with columns sell_date, num_sold, and product_list.

**Question 3:**

**Create Table**:Create a table named dept_tbl with columns id_deptname, emp_name, and salary.
**Insert Data:** Insert the provided data into the dept_tbl table.
**Write Query:** Write a SQL query to calculate the total salary for each department.
Use the GROUP BY clause to group the data by department name (id_deptname).
Use the SUM function to calculate the total salary for each department.
**Display Output:** Display the output with columns dept_name and total_salary.

**Question 4:**

**Create Table:** Create a table named email_signup with columns id, email_id, and signup_date.
**Insert Data:** Insert the provided data into the email_signup table.
**Write Query:** Write a SQL query to find Gmail accounts with the latest and first signup date, calculate the difference between the two dates, and handle null values.
Use the LIKE operator to filter Gmail accounts.
Utilize the MAX and MIN functions to find the latest and first signup dates.
Calculate the difference between the dates using the DATEDIFF function.
Use the COALESCE function to replace null values with '1970-01-01'.
**Display Output:** Display the output with columns count_gmail_account, latest_signup_date, first_signup_date, and diff_in_days

**Question 5:**

**Create Table:** Create a table named sales_data with columns product_id, sale_date, and quantity_sold.
**Insert Sample Data:** Insert the provided dataset into the sales_data table.
**Assign Rank by Partition:** Use the RANK() function partitioned by product_id to assign ranks based on sale dates.
Retrieve the rows with the highest rank for each product_id to find the latest product sold.
**Compare Quantity Sold:** Use the LAG() function partitioned by product_id to retrieve the quantity sold from the previous row.
Compare the quantity sold with the current row's quantity sold.
Retrieve First and Last Values: Use the FIRST_VALUE() and LAST_VALUE() functions partitioned by product_id to retrieve the first and last values of quantity_sold.

**Question 6:**

**Identify Entities:**

Student
Course
Instructor
Major
Department

**Determine Attributes:**

Student: student ID (primary key), name, date of birth, email address
Course: course code (primary key), title, credit hours
Instructor: instructor ID (primary key), name, office location
Major: major ID (primary key), name
Department: department ID (primary key), name

**Define Relationships:**

Student-Course (Many-to-Many): Each student can enroll in multiple courses, and each course can have multiple enrolled students.
Instructor-Course (One-to-Many): Each course is taught by exactly one instructor, and an instructor can teach multiple courses.
Student-Major (One-to-Many): Each student can have a major, and each major can have multiple students.
Course-Department (Many-to-One): Each course can belong to a department, and each department can offer multiple courses.

**Specify Cardinality Constraints:**

Student-Course: Many-to-Many
Instructor-Course: One-to-Many
Student-Major: One-to-Many
Course-Department: Many-to-One

**Create Entity-Relationship Diagram (ERD):**

Represent entities as rectangles, attributes as ovals, and relationships as diamonds connecting entities.
Include cardinality constraints near the relationships.
=======

>>>>>>> 70dafb623817a2305e781018eb7af6edc5461023
