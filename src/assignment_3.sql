--Creating the table tb1--
CREATE TABLE dept_tbl ( id_deptname varchar(100), emp_name varchar(100), salary int);

--Inserting data into the table tb1--
INSERT INTO dept_tbl (id_deptname, emp_name, salary)values('1111-MATH', 'RAHUL', 10000),('1111-MATH', 'RAKESH', 20000),('2222-SCIENCE', 'AKASH', 10000),
('222-SCIENCE', 'ANDREW', 10000),('22-CHEM', 'ANKIT', 25000),('3333-CHEM', 'SONIKA', 12000),('4444-BIO', 'HITESH', 2300),('44-BIO', 'AKSHAY', 10000),
('5555-SOCIAL','MAHA',50000),('6666-PHYSICS','LAKSHMI',60000),('7777-BOTANY','RAJA',90000);

-- Query to find the total salary of each department
SELECT 
    SUBSTRING(id_deptname, CHARINDEX('-', id_deptname) + 1, LEN(id_deptname)) AS dept_name,
    SUM(salary) AS total_salary
FROM 
    dept_tbl
GROUP BY 
    SUBSTRING(id_deptname, CHARINDEX('-', id_deptname) + 1, LEN(id_deptname));

