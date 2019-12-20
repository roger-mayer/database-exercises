use employees;
# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
SELECT DISTINCT title
FROM titles;

# find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
group by last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
group by first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'.
SELECT last_name
FROM employees
WHERE last_name LIKE ('%q%')
  AND last_name NOT LIKE ('%qu%')
group by last_name;

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE ('%q%')
  AND last_name NOT LIKE ('%qu%')
group by last_name
ORDER BY count(*) desc;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
SELECT count(*) AS total, gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
group by gender;