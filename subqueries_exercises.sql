USE employees;

SELECT * FROM employees
WHERE hire_date IN (
    SELECT hire_date from employees
    WHERE emp_no = 101010
          );
