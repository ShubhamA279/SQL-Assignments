create table Person(
Id int,
Name varchar(20),
Email varchar(30)
)
sp_help Person
select * from Person

alter table Person add City varchar(20)
alter table Person alter column city varchar(40)

insert into Person values(1,'Amit','amit@gmail','mum')
-- not null

alter table person alter column name varchar(20) not null
alter table person alter column Email varchar(30) not null
alter table person alter column Id int not null
alter table person add constraint pk_person primary key(Id)
create table Orders(
orderId int,
orderNo int,
Id int,
Constraint pk_order primary key(orderId),
constraint fk_person_order foreign key(Id) references person(Id)
)
alter table orders add constraint pk_order primary key(OrderId)
alter table person add constraint fk_person_order foreign key(Id) references person(Id)

sp_help orders
sp_help person
select * from Person
alter table person add Age int

alter table person add constraint ck_age check (age>18)
--------------------
alter table person add Country varchar(20)
alter table person add constraint df_Country default 'India' for country

alter  table person drop ck_age
alter table person drop df_Country

--Index

create index index_person on person(Id)

select * from Employee
create table Employee
(
Id int identity(1,1) primary key,
Name varchar(20),
Email varchar(40),
salary decimal,
DeptName varchar(20)

)
select * from employee
insert into Employee values('Amit','amit@gmail',20000,'HR')
insert into Employee values('Shreyas','shreyas@gmail',15000,'Developement')
insert into Employee values('Aditi','adi@gmail',55000,'Developement')
insert into Employee values('Arnav','arnav@gmail',13000,'Developement')
insert into Employee values('Yash','yash@gmail',65000,'Developement')
insert into Employee values('Vivek','viv@gmail',20000,'Developement')
insert into Employee values('Mrunali','mru@gmail',21000,'Developement')
insert into Employee (Name,Email) values('shre','sher@gm')
update Employee set DeptName='HR' where Id=4
update Employee set DeptName='Testing' where Id=5
update employee set DeptName='Testing' where Id=6
update Employee set salary=24000, DeptName='Admit' where Id=8

delete from Employee where Name='vivek'

insert into employee values('Minakshi','minu@gmail',25000,'HR')

select * from Employee
insert into Employee (Name,email) values ('shubham','shubh@gmail')
update employee set salary=45000,DeptName='Dotnet' where Id=10
update Employee set salary=15000,DeptName='Developement' where Id=1
update Employee set salary=15000,DeptName='HR' where Id=2
update Employee set salary=25000,DeptName='Developement' where Id=3
update Employee set salary=30000,DeptName='HR' where Id=4
update Employee set salary=40000,DeptName='Admit' where Id=5
update Employee set salary=45000,DeptName='Admit' where Id=6
update Employee set salary=35000,DeptName='HR' where Id=7
update Employee set salary=41000,DeptName='Testing' where Id=8
update Employee set salary=23000,DeptName='Testing' where Id=9

delete from Employee where Id=10

select * from Employee

select Id,Name,Salary from Employee where id=5

select * from Employee where salary<25000

select * from Employee where salary <> 15000

select * from Employee where Id between 2 and 6
select * from Employee

select * from Employee where name like 'a%'
select * from Employee where name like 'A____%'

select * from Employee where name like '%[a-n]'

select * from Employee where name like '%i%'

select * from Employee where name like '[as]%'

select * from Employee where name not like '[as]%'

select * from employee where name = 'amit'
select * from Employee where DeptName='HR'
select * from Employee where DeptName in ('HR','Developement')
select * from Employee where DeptName not in ('HR')

select * from Employee where id not in (1,2)



select * from ER
create table ER
(
Id int identity(1,1) primary key,
firstName varchar(20),
lastName varchar(20),
Email varchar(40) not null,
salary decimal
)
alter table ER add DeptId int 
alter table ER add DeptName varchar(20)
update ER set DeptId = 1 where  Id in (1,3)
update ER set DeptId = 2 where  Id in (2,4)
update ER set DeptId = 3 where  Id in (5)
update ER set DeptName= 'HR' where id in(1,2)
update ER set DeptName = 'Testing' where id in(3,4)
update ER set DeptName = 'AWS' where id in(5)


insert into ER values('Yash','Ambavkar','yash@gmail.com',25000)
insert into ER values('Rahul','Patil','rahul@gmail.com',22000)
insert into ER values('Vaibhav','Ghatol','vaibhav@gmail.com',30000)
insert into ER values('Parag','Kajrolkar','parag@gmail.com',23500)
insert into ER values('Chaitanya','Raut','chaitanya@gmail.com',27000)
-- Select first name and last name
select firstName 'First Name' , lastName 'Last Name' from ER

-- write a query to get unique dept Id from emp table
select distinct DeptId from ER

-- write a query to display all record from employee in descending order
select * from ER order by firstname desc

-- write a query to display employee details with salary , calculate pf as 12% of bs
select firstname, salary, salary * 0.12 PF from ER

-- write a query to get total salaries payable to all employee
select sum(salary) as Total_Salary from ER

-- write a query to get max and min salary of employee
select max(salary) as Max_Salary from ER
select min(salary) as Min_Salary from ER

-- write a query to get number of employee working in company
select count(Id) as TotalEmployee from ER

--- write a query to get total number of uniqye Designation  in company

select distinct DeptName  from ER

-- write a query to display emp_name as Name in Upper case
select UPPER(firstName) as Name from ER

-- select first 10 record from employee table

select Id,firstname from ER where Id<=4




