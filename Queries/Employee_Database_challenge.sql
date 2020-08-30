-- Create a Retirement Titles table 1952-1955
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY  e.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows, create unique titles table
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;

-- Get table of retiring titles 
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

SELECT * FROM Retiring_Titles;

-- Create a Mentorship Eligibility table
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN titles AS ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;

-- Difference between retiring employees vs mentorship eligible employees.
SELECT COUNT(ut.emp_no) AS retiring_emps,
	COUNT(me.emp_no) AS mentor_eligible_emps,
	COUNT(ut.emp_no) - COUNT(me.emp_no) AS difference
FROM unique_titles AS ut
FULL OUTER JOIN mentorship_eligibility AS me
ON me.emp_no = ut.emp_no;

-- Count of mentor eligible employees by titles
SELECT me.title,
	COUNT(me.emp_no)
FROM mentorship_eligibility AS me
GROUP BY me.title
ORDER BY COUNT (me.title) DESC;

