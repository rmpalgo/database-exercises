USE employees;

SHOW tables;

DESCRIBE titles;

SELECT DISTINCT title FROM titles;

SELECT * FROM employees
LIMIT 10;

SELECT first_name
FROM employees
GROUP BY first_name;

SELECT DISTINCT first_name
FROM employees;

SELECT * FROM titles
WHERE title = 'Engineer';

SELECT title, COUNT(title) AS count
FROM titles GROUP BY title
ORDER BY count DESC
LIMIT 3;

SELECT dept_emp.emp_no, titles.title, titles.from_date FROM dept_emp
JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE title = 'Senior Engineer'
ORDER BY titles.from_date;

SELECT titles.from_date, titles.title, COUNT(titles.from_date) AS 'Count'
FROM titles
GROUP BY titles.from_date, titles.title
ORDER BY Count DESC;

SELECT titles.from_date, titles.title, COUNT(titles.from_date) AS 'Count'
FROM titles
WHERE titles.title = 'Staff'
GROUP BY titles.from_date, titles.title
ORDER BY Count DESC;

USE employees;

SELECT employees.emp_no, t.title AS 'Title' FROM employees
LEFT JOIN titles AS t ON t.emp_no = employees.emp_no
WHERE title = 'Engineer'
ORDER BY emp_no DESC LIMIT 1;

SELECT CONCAT(first_name, ' ', last_name) AS fullName,
hire_date AS 'Hire Date'
FROM employees
WHERE gender = 'F'
ORDER BY `Hire Date` DESC LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS fullName,
       hire_date AS 'Hire Date'
FROM employees
WHERE gender = 'F'
ORDER BY `Hire Date` LIMIT 10;

SELECT birth_date, COUNT(birth_date) AS 'Count' FROM employees
GROUP BY birth_date
ORDER BY Count DESC;

SELECT birth_date, COUNT(birth_date) AS 'Count' FROM employees
WHERE gender = 'F'
GROUP BY birth_date
ORDER BY Count DESC;

SELECT birth_date, COUNT(birth_date) AS 'Count' FROM employees
WHERE gender = 'M'
GROUP BY birth_date
ORDER BY Count DESC;

SELECT hire_date, COUNT(hire_date) AS 'count' FROM employees
WHERE gender = 'F'
GROUP BY hire_date
ORDER BY count DESC;

SELECT hire_date, COUNT(hire_date) AS 'count' FROM employees
WHERE gender = 'M'
GROUP BY hire_date
ORDER BY count DESC;

SELECT last_name, CHAR_LENGTH(last_name) AS length
FROM employees
WHERE birth_date = '1952-03-08'
GROUP BY last_name
ORDER BY length DESC LIMIT 1;








