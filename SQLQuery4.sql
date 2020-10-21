
--Different ways to replace NULL in sql server
Select E.Name, M.Name From
tblInformation E
Left join
tblInformation M
ON E.ManagerId =M.EmployeeId

Select E.Name, ISNULL(M.Name,'NO MANAGER') AS Manger From
tblInformation E
Left join
tblInformation M
ON E.ManagerId =M.EmployeeId

Select E.Name, COALESCE(M.Name,'NO MANAGER') AS Manger From
tblInformation E
Left join
tblInformation M
ON E.ManagerId =M.EmployeeId

 Select E.Name, 
(Case  
 when M.Name IS NULL Then 'NO MANAGER'
 else M.Name end) AS Manger From
tblInformation E
Left join
tblInformation M
ON E.ManagerId =M.EmployeeId

SELECT * FROM tblEmploye_Info2

SELECT ID,Name,Email,city, 
(Case
    when tblEmploye_Info2.city = 'London' Then 'OXFORD UNIVERCITY'
	Else tblEmploye_Info2.city 
	End) As Univercity,Age
From tblEmploye_Info2 order by Name 

Select * from tblEmploye_Info2
Select Id,Name,Email,city,
 (Case
      when tblEmploye_Info2.city = 'London' Then 'UK'
	  when tblEmploye_Info2.city = 'New York' Then 'USA'
  Else 'No Found Country' 
  End) As Country,Age 
From tblEmploye_Info2 order by Name 

create TABLE songsT(
TrackId int primary key,
SongsName nvarchar(50),
BYTES_SIZE int)

select * from songsT
Select TrackId,SongsName,BYTES_SIZE,
(Case
    when songsT.BYTES_SIZE<10000 Then 'SMALL'
	when songsT.BYTES_SIZE>=10000 AND songsT.BYTES_SIZE<40000 Then 'MEDIMUM'
	when songsT.BYTES_SIZE>=40000 AND songsT.BYTES_SIZE<60000 Then 'Large'
 Else 'EXTRA LARGE'
 End) AS [BYTES CATEGORY] from songsT order by [BYTES CATEGORY] DESC


--insert into songsT values(1,'Bintea DIL',45000)
--insert into songsT values(2,'Khali Bali',55000)
--insert into songsT values(3,'Illahi',50000)
--insert into songsT values(4,'Badamiz Dil',30000)
--insert into songsT values(5,'Fakira',10000)
--insert into songsT values(6,'Dhoom Again',25000)
--insert into songsT values(7,'Ae Dil Hai Mushkil',5000)
--insert into songsT values(8,'Afgan Jalebi',15000)
--insert into songsT values(9,'Malhari',65000)
--insert into songsT values(10,'Destroy the Earth',75000)
--insert into songsT values(11,'Love me Like You Do',38000)



create table replace_name(
FirstName nvarchar(50),
MiddleName nvarchar(50),
LastName nvarchar(50))
alter table 
replace_name add id int
--coalesce: retuens the first 'NON NULL' value 
SELECT * FROM replace_name
select id,coalesce(FirstName,MiddleName,LastName) from replace_name

select * from tblEmploye_Info3
select * from tblDepartment

Create view my_view
As
select Name,GenderId,Salary,DepartmentName From 
tblEmploye_Info3
Inner join
tblDepartment 
ON tblEmploye_Info3.DepartmentId = tblDepartment.ID

select * from my_view
select count(*) AS Total,sum(salary) AS Each_Departmnet_Salary,DepartmentName from my_view
group by DepartmentName order by DepartmentName

