-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select 
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.sex,
	salaries.salary
From employees
Inner Join salaries On
employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
Select first_name,
	last_name,
	hire_date
From employees Where hire_date >= '19860101' And hire_date < '19870101';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
Select 
	employees.first_name,
	employees.last_name,
	dept_manager.emp_no,
	dept_manager.dept_no,
	departments.dept_name
From employees
Inner Join dept_manager On employees.emp_no = dept_manager.emp_no
Inner Join departments On departments.dept_no = dept_manager.dept_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
Select 
	employees.first_name,
	employees.last_name,
	dept_emp.emp_no,
	departments.dept_name
From employees
Inner Join dept_emp On employees.emp_no = dept_emp.emp_no
Inner Join departments On departments.dept_no = dept_emp.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select 
	first_name,
	last_name,
	sex
From employees 
Where first_name = 'Hercules' And last_name Like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select 
	employees.first_name,
	employees.last_name,
	dept_emp.emp_no,
	departments.dept_name
From employees
Inner Join dept_emp On employees.emp_no = dept_emp.emp_no
Inner Join departments On departments.dept_no = dept_emp.dept_no 
Where dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments
-- including their employee number, last name, first name, and department name.
Select 
	employees.first_name,
	employees.last_name,
	dept_emp.emp_no,
	departments.dept_name
From employees
Inner Join dept_emp On employees.emp_no = dept_emp.emp_no
Inner Join departments On departments.dept_no = dept_emp.dept_no
Where dept_name = 'Sales' Or dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, Count(last_name) As "Employees with Last Name"
From employees
Group By last_name
Order By "Employees with Last Name" DESC;

-- employee ID number is 499942
Select * From employees
Where emp_no = 499942;

