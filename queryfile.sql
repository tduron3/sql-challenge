#Question 1
SELECT * FROM employees;

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no

#Question 2
SELECT * FROM employees;

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN to_date('1986-01-01','YYYY-MM-DD')
			AND to_date('1987-01-01','YYYY-MM-DD')

#Question 3
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_no, departments.dept_name
FROM employees
INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no

#Question 4
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no

#Question 5
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

#Question 6
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
AND departments.dept_name = 'Sales'

#Question 7
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
AND departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

#Question 8
SELECT last_name, count(*) as Cnt
FROM employees
GROUP BY last_name
ORDER BY last_name DESC





