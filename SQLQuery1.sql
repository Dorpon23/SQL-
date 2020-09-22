Create Database example
Alter Database example Modify Name = example1
sp_renameDB 'example1', 'example'
-- jai kono database ar name ka modify kora jai

create table tblGender(
Id int NOT NULL Primary key,
Gender nvarchar(50) NOT NULL

)
 ---database create kora hoi aivabea

 Alter table Employe_info 
 Add constraint Employe_Info_GenderId_FK
 Foreign Key (GenderId) references tblGender(Id)

Select * from tblGender
Select * from Employe_Info

Insert into tblGender(Id, Gender) Values (1,'Male')
Insert into Employe_Info (Id, Name, Email,GenderId,Age) Values (6,'Sohanur','s@r.com',2,15)

Alter Table Employe_Info
Add Constraint DF_Employe_Info_GenderId
DEFAULT 3 FOR GenderId
--Default constrain add kora hoi aivabea

Alter Table Employe_Info
Drop Constraint DF_Employe_Info_GenderId
--it used for drop constraint

Delete from tblGender where Id = 1
Delete from Employe_Info
--Cascading referential integrity constraint: SET NULL, CASCADE, SET DEFAULT, NO ACTION

-- First, Example select Employe_Info then Alt+F1: you can see the full details this table

Insert into Employe_Info values (8,'SARAH','s@h.com',1,30)
Delete from Employe_Info where Id = 1

Alter Table Employe_Info
Add Constraint CK_Employe_Info_Age Check (Age > 0 AND Age < 150)
-- ata manea holo ja age ar somaisema jeno ata negativea na jai, sobsomai ata jeno positive value bosta pari

Alter Table Employe_Info
Drop Constraint CK_Employe_Info_Age


select * from tblEmploye_Info1

insert into tblEmploye_Info1 values('Rahim')

SET IDENTITY_INSERT tblEmploye_Info1 ON
insert into tblEmploye_Info1 (PersonId,Name) values(1,'Rahim')

--An explicit value for the identity column in table 'tblEmploye_Info1' 
--can only be specified when a column list is used and IDENTITY_INSERT is ON.

SET IDENTITY_INSERT tblEmploye_Info1 OFF
insert into tblEmploye_Info1 values ('jeon')
--this time must be IDENTITY_INSERT tblEmploye_Info1 off

Delete from tblEmploye_Info1 where PersonId =1 
Delete from tblEmploye_Info1

DBCC CHECKIDENT(tblEmploye_Info1,RESEED,0)
--That means table is reset, increment and recount

Create Table Test1(

Id int identity(1,1),
Value0 nvarchar(20)
)

Create Table Test2(

Id1 int identity(1,1),
Value1 nvarchar(20)
)

DBCC CHECKIDENT(Test1,RESEED,0)
Insert into Test2 values('aaa')

-- Test1 ka insert korlea trigger ka call korea automatic test2 value insert korea
Insert into Test1 values('X')

select SCOPE_IDENTITY() --ATA show korea test1 function ka//same session and same scope
select @@IDENTITY       -- ATA SHOW KOREA Triger function ka // same session and across any scope
select IDENT_CURRENT('Test2')--ATA SHOW KOREA, ALDA JAGAI JODI QUERY LIKHA THAKA AR JODI QUERY EXCUCTE HOI
--Specific table across any session and any scope
--Last Identity number Find

Select * from Test1
Select * from Test2

Delete from Test1
Delete from Test2


create Trigger trForInsert on Test1 for Insert
as
Begin
    Insert into Test2 Values ('YYYY')
End

select * from Employe_Info

Delete from Employe_Info

Alter Table Employe_Info
Add Constraint UQ_Employe_Info_Email Unique(Email)
--unique key is not provided same number/address always repesent unique number/address
Insert into Employe_Info values(3,'def','x@z.com',2,20)

Alter Table Employe_Info
Drop Constraint UQ_Employe_Info_Email
