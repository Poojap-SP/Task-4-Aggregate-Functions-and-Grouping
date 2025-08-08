-- STEP 1: Create table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT NOT NULL,
    salary REAL NOT NULL,
    age INTEGER NOT NULL
);

-- STEP 2: Insert sample data
INSERT INTO employees (id, name, department, salary, age) VALUES
(1, 'Alice', 'HR', 50000, 30),
(2, 'Bob', 'Finance', 60000, 35),
(3, 'Charlie', 'HR', 52000, 28),
(4, 'David', 'IT', 70000, 32),
(5, 'Eva', 'IT', 72000, 29),
(6, 'Frank', 'Finance', 58000, 40),
(7, 'Grace', 'IT', 71000, 26),
(8, 'Hannah', 'HR', 53000, 33),
(9, 'Ian', 'Finance', 59000, 38),
(10, 'Jack', 'IT', 73000, 27);

-- STEP 3: Aggregate queries for Task 4

-- 1. Total salary expense per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 2. Average salary per department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- 3. Count of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- 4. Departments having more than 2 employees
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- 5. Maximum salary per department
SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;

-- 6. Minimum salary per department
SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department;

-- 7. Total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 8. Average age of employees per department
SELECT department, ROUND(AVG(age), 1) AS avg_age
FROM employees
GROUP BY department;

-- 9. Count of distinct departments
SELECT COUNT(DISTINCT department) AS distinct_departments
FROM employees;

-- 10. Departments with average salary greater than 60000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;
