use employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE (first_name = 'Irena'
#     OR first_name = 'Vidya'
#     OR first_name = 'Maya')
#     AND gender = 'M';


-- Find all employees whose last name starts with 'E' — 7,330 rows.
# Find all employees whose last name starts or ends with 'E'
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

# find all employees whose last name starts and ends with 'E'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- Find all employees hired in the 90s and born on christmas— 135,214 rows.
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
  AND birth_date LIKE ('%12-25');

-- Find all employees born on Christmas — 842 rows.
-- SELECT emp_no, first_name, last_name, birth_date
-- FROM employees
-- WHERE birth_date LIKE ('%12-25')

-- Find all employees with a 'q' in their last name — 1,873 rows.
-- SELECT emp_no, first_name, last_name
-- FROM employees
-- WHERE last_name LIKE ('%q%')
--     OR first_name LIKE ('%q')

# FInd all employees with a 'q' in their last name but not 'qu'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%q%')
    AND last_name NOT LIKE ('%qu%')
