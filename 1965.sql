# Write your MySQL query statement below
select employee_id from
(select  employee_id from Employees  union select  employee_id from Salaries 
order by employee_id) t
where employee_id not in (select e.employee_id from Employees e join Salaries s on e.employee_id = s.employee_id )