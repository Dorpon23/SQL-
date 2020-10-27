--Stored Procedure Output 
select * from tblEmploye_Info3
Create Procedure spGetEmployeeCountByGender
@GenderId nvarchar(20),
@EmployeeCount int output
as
Begin
    Select @EmployeeCount = count(Id) from tblEmploye_Info3 Where GenderId =@GenderId
End

Declare @TotalCount int
Exec spGetEmployeeCountByGender 'Female', @TotalCount output
Print @TotalCount
Sp_helptext spGetEmployeeCountByGender
sp_depends spGetEmployeeCountByGender
--spGetEmployeeCountByGender depends on the tblEmploye_Info3
--If @TotalCount is null 
-- Print '@Total Count is null'
-- Else 
-- Print '@TotalCount is not null'


