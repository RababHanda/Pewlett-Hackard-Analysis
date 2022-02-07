--------SILVER TSUNAMI ANALYSIS--------

----- Deliverable 1 -----
--Steps 1 to 7: Retirement Titles table
SELECT e.emp_no, 
	e.first_name,
	e.last_name,
	t.title, 
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN title AS t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Steps 8 to 15: Removing duplicate rows | Unique Titles table
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;	

--Steps 16 to 21: Number of employees retiring per title | Retiring Titles table
SELECT COUNT(ut.emp_no),
	ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.emp_no) DESC;


----- Deliverable 2 -----
--Steps 1 to 11: Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibilty

FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN title AS t
		ON (e.emp_no = t.emp_no)
        
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;