create table tblEmploye_Info2(
ID Int primary key,
Name nvarchar(50),
Email nvarchar(50) null,
GenderId Int,
city nvarchar(50)
)
Alter Table tblEmploye_Info2
Add Constraint UQ_tblEmploye_Info2 unique(Email)

Alter Table tblEmploye_Info2
Add Constraint tblEmploye_Info2_GenderId_FK
Foreign key (GenderId) references tblGender(Id)

Alter Table 
tblEmploye_Info2 Add Age int

Alter Table tblEmploye_Info2
Add Constraint CK_tblEmploye_Info2_Age check(Age> 0 And Age< 150)

Select * from tblEmploye_Info2

Select DISTINCT City from tblEmploye_Info2

Select * from tblEmploye_Info2 Where city != 'London'
--<>/!= thats mean not eqal to
Select * from tblEmploye_Info2 Where Age >25
Select * from tblEmploye_Info2 Where Age In (20,23,29)
Select * from tblEmploye_Info2 Where Age Between 20 AND 25
Select * from tblEmploye_Info2 Where city Like'n%'
Select * from tblEmploye_Info2 Where city Like'%n'
Select * from tblEmploye_Info2 Where city Like'%n%'
Select * from tblEmploye_Info2 Where Email Like'%@%'
Select * from tblEmploye_Info2 Where Email Not Like'%@%'
Select * from tblEmploye_Info2 Where Email Like'_@_.com'
Select * from tblEmploye_Info2 Where Name Like '[TJS]%'
Select * from tblEmploye_Info2 Where Name Like '[^TJS]%'
Select * from tblEmploye_Info2 Where (city='London' or city='Mumbai') And Age>25
Select * from tblEmploye_Info2 order by Name Desc, Age ASC
Select TOP 3 * from tblEmploye_Info2
Select TOP 3 Name, Age from tblEmploye_Info2
Select TOP 40 percent * from tblEmploye_Info2
Select Top 60 percent * from tblEmploye_Info2 order by Age DESC