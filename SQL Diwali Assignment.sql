create table Customer(
Customerid int primary key,
CustomerName varchar(40),
City varchar(20),
PostalCode int,
Country varchar(20)
)
select * from customer

--1. Write a statement to select City column from Customer Table
select city from customer

--2. Select all different values from country column in the customer table
select country from Customer

--3.Select all Column where city column has value London
select * from Customer where city='London'

--4. Use NOT keyword to select all records where city is NOT berlin
select * from Customer where city not like 'Berlin'

-- 5. Select all records where CustomerId column has value 23
select * from Customer where Customerid=23

--6. select all records where  city column has value 'berlin' and postal code has value 121110
select * from Customer where City='Berlin' and PostalCode=121110

--7. Select all records where city column has value 'berlin' or 'london'
select * from Customer where city='Berlin' or city='London'

--8. Select all records from customer table, sort the result alphabetically by column city
select * from Customer order by city

--9. Select all records from customer table, sort the result reverse alphabetically by column city
select * from Customer order by city desc

--10. Select all the records from customer table,sort the result alphabetically,first by 
--column country and then by column city
select * from Customer order by Country,City

--11. Select all the records from customer where postal code column is empty
select * from Customer where PostalCode is null

--12.Select all records from the Customers where the PostalCode column is NOT empty
select * from Customer where PostalCode is not null

--13. Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway"
update Customer set city='Oslo' where country='Norway'


--14. Delete all the records from the Customers table where the Country value is 'Norway'.
delete from Customer where country='Norway'



--15. Use the MIN function to select the record with the smallest value of the Price column.
select min(price) as MinPrice from product 


--16. Use an SQL function to select the record with the highest value of the Price column.
select max(price) as MaxPrice from product 

--17. Use the correct function to return the number of records that have the Price value set to 20
select count(*) from product where price=18

--18. Use an SQL function to calculate the average price of all products.
select avg(price) from product

--19. Use an SQL function to calculate the sum of all the Price column values in the Products table
select Sum(price) from product

--20.Select all records where the value of the City column starts with the letter "a".
select * from Customer where city like 'a%'



--21.Select all records where the value of the City column ends with the letter "a".
select * from Customer where city like '%a'

--22. Select all records where the value of the City column contains the letter "a".
select * from Customer where city like '%a%'

--23. Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from Customer where city like 'a%b'


--24. Select all records where the value of the City column does NOT start with the letter "a".
select * from Customer where city not like 'a%'

--25. Select all records where the second letter of the City is an "a".
select * from Customer where city like '_a%'

--26. Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from Customer where city like '[acs]%'

--27. Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from Customer where city like '[a-f]%'

--28. Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from Customer where city not like '[acf]%'

--29. Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from customer where Country in('Norway','France')

--30 Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from customer where Country not in('Norway','France')

create table Product(
productid int,
productName varchar(20),
Price decimal,
)

insert into product values(1,'Tea',18)
insert into product values(2,'coffee',12)
insert into product values(3,'chocolate',10)
insert into product values(4,'biscuit',15)
insert into product values(5,'Pen',10)
insert into product values(6,'Pavlova',17)
insert into product values(7,'bottle',25)
insert into product values(8,'Geitost',5)
insert into product values(9,'Notebook',20)
insert into product values(10,'Scale',15)



--31. Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from product where price between 10 and 20


--32. Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from product where price not between 10 and 20

--33. Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically
--between 'Geitost' and 'Pavlova'.
select * from product where productName between 'Geitost' and 'Pavlova'

--34. When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select  CustomerName,PostalCode as PNO from Customer

--35. When displaying the Customers table, refer to the table as Consumers instead of Customers.
select * from Customer as consumers

--36. List the number of customers in each country.
select country,count(customerid) as CustomerCount from Customer
group by country

--37. List the number of customers in each country, ordered by the country with the most customers first.
select country, count(customerid) as CustCount from customer
group by country
order by count(Customerid) desc

--38. Write the correct SQL statement to create a new database called testDB.
create database testDB

--39. Write the correct SQL statement to delete a database named testDB
drop database testDB


CREATE TABLE Persons (
PersonID int,
PersonName varchar(20),
Address Varchar(40),
City Varchar(40)
);


--40. Add a column of type DATE called Birthday in Persons table
alter table persons add Birthday date

--41. Delete the column Birthday from the Persons table
alter table person drop Birthday
