SELECT * FROM employees;

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN to_date('1986-01-01','YYYY-MM-DD')
			AND to_date('1987-01-01','YYYY-MM-DD')




