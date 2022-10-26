-- print employee whose salary is greater than avg salary all all employee

select * from employee
select * from dept

--SubQuery Assignment

select name,salary from Employee where salary>
(
select avg(salary) as AvgSal from employee)
order by salary


select name,salary from employee where Deptid=1 and  salary>
(select avg(salary) from Employee e
inner join dept d on d.DeptId=e.Deptid 
where d.DeptName='HR')


select sum(salary) from employee e 
inner join dept d on d.DeptId=e.Deptid
where d.DeptName='HR'

select name,salary from employee where salary >
(select avg(salary) from employee e
inner join dept d on d.DeptId=e.Deptid
where DeptName='Testing')


