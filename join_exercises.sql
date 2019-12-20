use employees;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, departments.dept_name
FROM employees
         JOIN dept_emp
              ON dept_emp.emp_no = employees.emp_no
         JOIN departments
              ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.to_date = '9999-01-01' AND employees.emp_no = 10001;

# get dept name and dept manager

SELECT departments.dept_name as 'Department name', CONCAT (employees.first_name, ' ', employees.last_name) AS 'Department Manager'
    FROM employees
    join dept_manager
        on employees.emp_no = dept_manager.emp_no
    join departments
    on dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY dept_name asc;

# get dept name and dept manager

SELECT departments.dept_name as 'Department name', CONCAT (employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
         join dept_manager
              on employees.emp_no = dept_manager.emp_no
         join departments
              on dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND gender = 'F'
ORDER BY dept_name asc;

# Find the current titles of employees currently working in the Customer Service department.

SELECT title as 'Titles', Count(*) as 'Titles'
     FROM titles
         join dept_emp
              on titles.emp_no = dept_emp.emp_no
         join departments
              on dept_emp.dept_no = departments.dept_no


WHERE dept_name = 'Customer Service' AND dept_emp.to_date = '9999-01-01' and titles.to_date = '9999-01-01'
GROUP BY title;

# Find the current salary of all current managers.
SELECT dept_name as 'Department Name', CONCAT (first_name, ' ', last_name) AS 'Name', salary as 'Salary'
FROM departments
    join dept_manager
      on dept_manager.dept_no = departments.dept_no
    join employees
        on employees.emp_no = dept_manager.emp_no
    join salaries
        on employees.emp_no = salaries.emp_no

WHERE dept_manager.to_date = '9999-01-01' and salaries.to_date = '9999-01-01'
ORDER BY dept_name asc;





