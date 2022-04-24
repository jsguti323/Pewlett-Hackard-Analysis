Select e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
Into retirement_titles
From employees as e
Inner Join titles as ti
	On(e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
Select DISTINCT ON (emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
-- INTO unique_titles
From retirement_titles as rt
Where rt.to_date = '9999-01-01'
Order By rt.emp_no, rt.to_date DESC;

-- Retrieve the number of employees by their most recent job title who are about to retire
Select Count(ut.title),
	ut.title
Into retiring_titles
From unique_titles as ut
Group By (ut.title)
Order By Count(ut.title) DESC;

-- create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
select distinct on (emp_no)
	e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date, 
	de.from_date,
	de.to_date,
	t.title
into mentorship_eligibilty
from employees as e
inner join dept_emp as de
	on(e.emp_no = de.emp_no)
inner join titles as t
	on(de.emp_no = t.emp_no)
where (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	and (de.to_date = '9999-01-01')
order by e.emp_no;