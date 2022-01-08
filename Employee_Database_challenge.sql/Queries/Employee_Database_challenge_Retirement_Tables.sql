--Deliverable #1 Query for Retirement titles and Unique tables
SELECT de.emp_no,
       ce.first_name,
       ce.last_name,
       d.dept_name INTO sales_n_dev_retiring_emps
FROM dept_emp as de
INNER JOIN departments as d ON (de.dept_no = d.dept_no)
INNER JOIN current_emp as ce ON (de.emp_no = ce.emp_no)
INNER JOIN retirement_info as ri ON (de.emp_no = ri.emp_no)
WHERE (d.dept_name IN ('Sales',
                       'Development'))
    AND (ce.first_name = ri.first_name)
    AND (ce.last_name = ri.last_name);

--Continue from the module
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


SELECT *
FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title -- Export the Unique Titles table as unique_titles.csv
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no,
	rt.to_date DESC;


SELECT *
FROM unique_titles;
