# Task 4: SQL Aggregation and Grouping

## Objective
Use aggregate functions (`SUM`, `AVG`, `COUNT`, `MAX`, etc.) and `GROUP BY` to analyze and summarize data.

## Tools Used
- DB Browser for SQLite (can also run on MySQL)

## Table Structure
Created a sample `employees` table with the following fields:
- emp_id (INTEGER)
- name (TEXT)
- department (TEXT)
- salary (INTEGER)
- age (INTEGER)

## Queries Performed
1. Total, average, and max salary by department
2. Count of employees per department
3. Count of distinct departments
4. Departments with more than one employee
5. Rounded average salary values

## Concepts Practiced
- Aggregate functions
- `GROUP BY` and `HAVING` clauses
- Distinct counts
- `ROUND()` function usage

## Sample Output Preview
| department | total_salary | avg_salary | highest_salary |
|------------|--------------|------------|----------------|
| HR         | 105000       | 52500      | 55000          |
| IT         | 142000       | 71000      | 72000          |
| Sales      | 122000       | 61000      | 62000          |
| Marketing  | 58000        | 58000      | 58000          |
