SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_no, departments.dept_name
FROM employees
INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no