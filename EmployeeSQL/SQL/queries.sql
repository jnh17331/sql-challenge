--Lists the employee numberm, first and last name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees AS e
LEFT JOIN salaries AS s ON e.emp_no = s.emp_no;

--Lists the first and last name of all the employees hired in 1986
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--Lists the department name and number of each employee
SELECT dm.dept_no, d.dept_name, e.last_name,e.first_name FROM dept_manager AS dm
INNER JOIN departments AS d ON dm.dept_no = d.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no;

--Shows the employee number and department of each employee
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no;

--Shows all employees whose name starts with Hercules and last name starts with B
SELECT last_name ,first_name,sex FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Lists each employee in the Sales department
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM departments AS d
JOIN dept_emp AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

--Lists all employees in both the Sales and Development departments
SELECT e.emp_no ,e.last_name, e.first_name, d.dept_name FROM departments AS d
JOIN dept_emp ON d.dept_no = dept_emp.dept_no
JOIN employees AS e on dept_emp.emp_no = e.emp_no WHERE d.dept_name IN ('Sales','Development');

--Counts the frequency of each employees last name
SELECT last_name, COUNT(*)
FROM employees
GROUP BY  last_name ORDER BY COUNT(*) DESC;

