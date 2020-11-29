SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
	ON employees.emp_no = salaries.emp_no;
	
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name 
FROM dept_manager
JOIN departments
	ON dept_manager.dept_no = departments.dept_no
JOIN employees
	ON dept_manager.emp_no = employees.emp_no;

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
JOIN employees
	ON dept_emp.emp_no = employees.emp_no;
	
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM dept_emp 
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
JOIN employees
	ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
JOIN employees
	ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales' or dept_name = 'Development';


SELECT 
  employees.last_name, 
  COUNT(employees.last_name) as total 
FROM employees
GROUP BY employees.last_name 
ORDER BY COUNT( employees.last_name) desc;
