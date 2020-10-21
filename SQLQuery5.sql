SELECT * FROM tblEmploye_Info3
/*This is how procedure create when it is create
just call by name 'stored procedure'*/
CREATE PROCEDURE spGetEmployees
As 
Begin
     SELECT Name,GenderId from tblEmploye_Info3
End

spGetEmployees

/*This Procedure create two function '@GenderId' and '@DepartmentId' 
then two are calling and fetching*/
create procedure spGetEmployeesByGenderByDepaertment
@GenderId nvarchar(20),
@DepartmentId int
AS 
Begin
   Select Name,GenderId,DepartmentId from tblEmploye_Info3
   Where GenderId =@GenderId AND DepartmentId = @DepartmentId
End
--two way featchin and calling data
spGetEmployeesByGenderByDepaertment 'Male',1;
spGetEmployeesByGenderByDepaertment @DepartmentId=1,@GenderId='Male';

--sp_helptext shows, how we were making stored procedure function 
sp_helptext spGetEmployeesByGenderByDepaertment
--Microsoft did not alow sp_ use prefix because it is alredy register sP_ name

-- If we want to change the stored procedure then we use 'ALTER'
Alter PROCEDURE spGetEmployees
As 
Begin
     SELECT Name,GenderId from tblEmploye_Info3 ORDER BY Name ASC
End

spGetEmployees

Alter PROCEDURE spGetEmployeesId
As 
Begin
     SELECT Id,GenderId from tblEmploye_Info3 ORDER BY ID Desc
End
--if we want to delete stored procedure, we should use this method
spGetEmployeesId
Drop PROCEDURE spGetEmployeesId


create procedure spGetEmployeesByGenderByDepaertmentEncryption  
@GenderId nvarchar(20),  
@DepartmentId int  
with Encryption
AS   
Begin  
   Select Name,GenderId,DepartmentId from tblEmploye_Info3  
   Where GenderId =@GenderId AND DepartmentId = @DepartmentId  
End

spGetEmployeesByGenderByDepaertment 'Male',1;
sp_helptext spGetEmployeesByGenderByDepaertmentEncryption 