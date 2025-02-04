/* 1.List the following details of each employee:
employee number, last name, first name, gender, and salary.*/

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

/* 2.List employees who were hired in 1986.*/


SELECT emp_no, hire_date, first_name, last_name FROM employees 
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

/* 3.List the manager of each department with the following 
information: department number, department name, the manager's employee number, 
last name, first name, and start and end employment dates.*/

SELECT dept_manager.dept_no, department.dept_name, dept_manager.emp_no, employees.last_name, 
employees.first_name, dept_emp.from_data, dept_emp.to_data
FROM dept_manager 
INNER JOIN department 
ON dept_manager.dept_no = department.dept_no
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no;

/* 4.List the department of each employee with the following information: 
employee number, last name, first name, and department name.*/

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, department.dept_name 
FROM dept_emp
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
INNER JOIN department
ON dept_emp.dept_no = department.dept_no;

/* 5.List all employees whose first name is "Hercules" and last names begin with "B." */

SELECT * FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

/* 6.List all employees in the Sales department, including their employee number, 
last name, first name, and department name.*/

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM dept_emp
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
INNER JOIN department 
ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales';


/*7. List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name.*/

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM dept_emp
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
INNER JOIN department 
ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development';

/*8. In descending order, list the frequency count of employee last names,
i.e., how many employees share each last name.*/

SELECT last_name, COUNT(last_name) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" DESC;


/* Bonus list average salaries by title */

SELECT titles.title, ROUND(AVG(salaries.salary)) AS "Average Salary"
FROM salaries
INNER JOIN titles
ON salaries.emp_no = titles.emp_no
GROUP BY title
ORDER BY "Average Salary";

SELECT * FROM titles;

/* Bonus find employee informaiton for employee number 499942 */

SELECT employees.emp_no, employees.first_name, employees.last_name, 
titles.title, salaries.salary
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
INNER JOIN salaries
ON titles.emp_no = salaries.emp_no
WHERE employees.emp_no = 499942;

