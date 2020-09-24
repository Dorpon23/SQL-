create table tblEmploye_Info3(
ID Int identity(1,1)primary key,
Name nvarchar(50) Not null,
GenderId Int,
city nvarchar(50)
)

create table tblDepartment(
ID Int identity(1,1)primary key,
DepartmentName nvarchar(50),
Loation nvarchar(50),
DepartmentHead nvarchar(50)
)


Drop Table tblDepartment
--Modify Column
Alter Table tblEmploye_Info3
Alter column GenderId nvarchar(50)

Alter Table 
tblEmploye_Info3 Add salary int

Alter Table 
tblEmploye_Info3 Add DepartmentId int
Alter Table 
tblDepartment Add Name nvarchar(50)

Alter Table tblEmploye_Info3
Add Constraint tblEmploye_Info3_DepartmentId_FK
Foreign Key (DepartmentId) references tblDepartment(Id)

Alter Table tblEmploye_Info3
Drop Constraint tblEmploye_Info3_DepartmentId_FK


Select*from tblEmploye_Info3
Select*from tblDepartment


Select sum(salary) as Total_salary from tblEmploye_Info3
Select Min(salary) as Minimum_salary from tblEmploye_Info3
Select Max(salary) as Maximum_salary from tblEmploye_Info3

Select city, SUM(salary) as Total_salary from tblEmploye_Info3 Group by city

Select city,GenderId, SUM(salary) as Total_salary 
from tblEmploye_Info3 
Group by city,GenderId order by city Desc

Select city,GenderId, AVG(salary) as Total_salary 
from tblEmploye_Info3 
Group by city,GenderId order by city Desc

Select city,GenderId, AVG(salary) as Total_salary,count(ID) as Total_Employee 
from tblEmploye_Info3 
Group by city,GenderId order by city Desc

Select*from tblEmploye_Info3

Select city,GenderId, AVG(salary) as Total_salary,count(ID) as Total_Employee 
from tblEmploye_Info3 Where GenderId ='Male'
Group by city,GenderId order by city Desc

Select city,GenderId, AVG(salary) as Total_salary,count(ID) as Total_Employee 
from tblEmploye_Info3 
Group by city,GenderId Having GenderId ='Male'
order by city Desc
-- 'WHERE' is using before Group by
-- 'HAVING' IS USING AFTER 'GROUP BY' AND 'ODER BY' is using after 'HAVING'
/*Temporary table create in datadabase*/
Select Name,GenderId,salary Into #tblEmploye_Info3 From tblEmploye_Info3
Select*from #tblEmploye_Info3
Select*from #tblEmploye_Info3 where Name ='Tom'
delete from #tblEmploye_Info3 where Name='Tom'
Drop TABLE #tblEmploye_Info3

select Name,DepartmentId from  tblEmploye_Info3 where DepartmentId Is Null

select Id,Name,city,salary,DepartmentId from tblEmploye_Info3 
where  DepartmentId =1 or DepartmentId=2 And salary>4000

select Id,Name,city,salary,DepartmentId from tblEmploye_Info3 
where (DepartmentId =1 or DepartmentId=2) And salary>4000
--Why is it happening?
--Because,AND OPERATION always do the work before OR.
--SO,This reason use paranthes()
select * from tblEmploye_Info3 where not city='London' and not city='New York'
select * from tblEmploye_Info3 where city!='London' and  city!='New York'

select * from tblEmploye_Info3
select * from tblDepartment
--DBCC CHECKIDENT(tblEmploye_Info3,RESEED,0)
-- Drop Column
Alter Table tblEmploye_Info3
Drop column city

select Name,GenderId,Salary,DepartmentName From 
tblEmploye_Info3
Inner join
tblDepartment 
ON tblEmploye_Info3.DepartmentId = tblDepartment.ID

Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('Tom','Male',4800)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('Pam','Feale',3000)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('John','Male',3500)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('Sam','Male',4500)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('Todd','Male',2800)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('Ben','Male',7000)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('Sara','Male',4800)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('Valane','Female',5500)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('James','Female',6500)
Insert into tblEmploye_Info3 (Name,GenderId,salary) Values('Russel','Male',9800)



