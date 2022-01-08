Employee_Database_Challenge_mentorship_eligibility.sql
--Deliverable # 2 

Select Distinct ON (e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		ti.title INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti on (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
	  													 AND de.to_date = '9999-01-01')
ORDER BY e.emp_no,
		ti.to_date DESC;

SELECT * FROM mentorship_eligibility;
