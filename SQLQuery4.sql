
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
	End) As Univercity
From tblEmploye_Info2 order by Name 

Select Id,Name,Email,city,
 (Case
      when tblEmploye_Info2.city = 'London' Then 'UK'
	  when tblEmploye_Info2.city = 'New York' Then 'USA'
  Else 'No Found Country' 
  End) from tblEmploye_Info2 order by Name 


create table replace_name(
FirstName nvarchar(50),
MiddleName nvarchar(50),
LastName nvarchar(50))
alter table 
replace_name add id int
--coalesce: retuens the first 'NON NULL' value 
SELECT * FROM replace_name
select id,coalesce(FirstName,MiddleName,LastName) from replace_name