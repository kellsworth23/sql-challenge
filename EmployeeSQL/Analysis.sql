select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
inner join salaries s on s.emp_no = e.emp_no

select first_name, last_name, hire_date
from employees
where date_part('year', hire_date) = '1986'

select d.dept_no, d.dept_name, m.emp_no, m.last_name, m.first_name
from departments d
inner join dept_manager dm on dm.dept_no = d.dept_no
inner join employees m on m.emp_no = dm.emp_no

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments d on d.dept_no = de.dept_no

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments d on d.dept_no = de.dept_no where d.dept_name = 'Sales'

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments d on d.dept_no = de.dept_no 
where d.dept_name = 'Sales' or d.dept_name = 'Development'

select last_name, count(*) as frequency_count
from employees
group by last_name
order by frequency_count asc