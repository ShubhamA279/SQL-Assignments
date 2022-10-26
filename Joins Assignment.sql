--DB SQL
select * from employee
select * from dept

-- Display employee who work in Admin dept and salary less than test2
select e.Id,e.Name,e.Salary from employee e
inner join dept d on d.DeptId=e.Deptid
where d.DeptName='Admin' and salary>40000

--Display employee whose salary>30000 but not in HR dept
select e.Id,e.Name,e.Salary, d.DeptName  from employee e
inner join dept d on d.DeptId=e.Deptid
where d.DeptName <> 'HR' and salary>35000

--Display employee who work in developement & testing sord recird by name in ascending order
select e.Id,e.Name,d.DeptName from employee e
inner join dept d on d.DeptId=e.Deptid
where d.DeptName in ('Testing','HR') order by e.Name

--Display employee who work in HR,Admin & salary >15000 sort by salary desc
select e.Id,e.Name,e.salary, d.DeptName from employee e
inner join dept d on d.DeptId=e.Deptid
where d.DeptName in('HR','Testing') order by e.Salary desc
