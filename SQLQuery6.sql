--String Function Working
SELECT ASCII('A')
Select CHAR(65)

Declare @Start int
set @Start = 65
while(@Start<=90)
Begin 
   Print CHAR (@Start)
   set @Start =@Start+1
End

Declare @Start1 int
set @Start1 = 97
while(@Start1<123)
Begin 
   Print CHAR (@Start1)
   set @Start1 =@Start1+1
End

SELECT '        DORPON'
select LTRIM ('         DORPON') AS NAME
Select 'DORPON               '
select RTRIM ('DORPON       ') AS NAME

SELECT SUBSTRING('You are beautiful.', 3,4)

SELECT FirstName,MiddleName,LastName,RTRIM(LTRIM(FirstName))+ ' ' +MiddleName+' '+LastName as 
FullName From replace_name


SELECT lOWER(FirstName) as FirstName,Upper(MiddleName) as MiddleName,LastName,
Upper (FirstName+ ' ' +MiddleName+' '+LastName) as 
FullName From replace_name

SELECT lOWER(FirstName) as FirstName,Upper(MiddleName) as MiddleName,LastName,
Reverse (Upper(FirstName+ ' ' +MiddleName+' '+LastName)) as 
FullName From replace_name

select FirstName,LEN(LTRIM(FirstName)) AS [Total Count] From  replace_name

select FirstName,LEN(FirstName) AS [Total Count] From  replace_name
--LEFT(Charecter_Expression,Integer_Expression)
Select LEFT('DORPON',4) as NUMBER_OF_VALUE_RETURNED_LEFT_SIDE
--RIGHT(Charecter_Expression,Integer_Expression)
SELECT RIGHT('DORPON',4) as NUMBER_OF_VALUE_RETURNED_RIGHT_SIDE
--Right Side
--D O R P O N
--    1 2 3 4
--    <------

--CHARINDEX('Expression_To_Find','Expression_To_Search','Start_Location')
--Returns the Starting position of the specified expression in a  charecter string
select CHARINDEX('@','dorpon_se@yahoo.com') as WHERE_POSTION_VALUE_@_IS_LOCATED
select CHARINDEX('@','dorpon_se@yahoo.com',1)

--SUBSTRING('Expression','Start','Length')
SELECT SUBSTRING('dorpon_se@yahoo.com',10,10)
--SUBSTRING     ('Expression',         'Start',                        'Length')
SELECT SUBSTRING('pam@bbb.com',CHARINDEX('@','pam@bbb.com')+1,len('pam@bbb.com')-CHARINDEX('@','pam@bbb.com'))
--Expression = pam@bbb.com
--Start = CHARINDEX('@','pam@bbb.com')+1
--Length = len('pam@bbb.com')-CHARINDEX('@','pam@bbb.com')

select* from tblEmploye_Info2

SELECT Email,SUBSTRING(Email,CHARINDEX('@',Email)+1,
len(Email)-CHARINDEX('@',Email)) as EmailDomain,count(*) as Total_COUNT 
from tblEmploye_Info2 GROUP BY 
SUBSTRING(Email,CHARINDEX('@',Email)+1,
len(Email)-CHARINDEX('@',Email)),Email




select FirstName,MiddleName,LastName, CONCAT(FirstName,' ', MiddleName,' ', LastName) 
as FullName FROM replace_name
--concat mean add kora lagea bujai

select FirstName,MiddleName,LastName, RTRIM(LTRIM(CONCAT(FirstName,' ', MiddleName,' ', LastName))) 
as FullName FROM replace_name

select FirstName,MiddleName,LastName, Trim(CONCAT(FirstName,' ', MiddleName,' ', LastName))
as FullName FROM replace_name

select REPLICATE('**',3)

SELECT * FROM tblEmploye_Info2

SELECT ID,Name,Email,SUBSTRING(Email,1,1) + REPLICATE('*',4) 
+SUBSTRING(Email,CHARINDEX('@',Email)+1,
len(Email)-CHARINDEX('@',Email)) as [Replicate Email] 
from tblEmploye_Info2
/*Replicate means t@t.com - t****  then this rule :SUBSTRING(Email,1,1) + REPLICATE('*',4) 
+SUBSTRING(Email,CHARINDEX('@',Email)+1,
len(Email)-CHARINDEX('@',Email)).AS A RESULT, t****t.com*/

select FirstName+SPACE(15)+MiddleName+SPACE(15)+LastName
as FullName FROM replace_name

select * from Employe_Info

--Patindex('%Pattern%',Expression)
SELECT Email,PATINDEX('%@n.com',Email) as FirstOccurance
from Employe_Info where PATINDEX('%@n.com',Email)>0
/*PATINDEX IS SMILLAR TO CHARINDEX.WITH CHARINDEX() WE CAN NOT USE WILDCADS,  
WHERE AS PATINDEX PROVIDE THIS CAPABILITY.
If the specified pattern is not found, PATINDEX RETURNS ZERO*/

SELECT Id,Name,EMAIL,REPLACE(Email,'.com','.net') AS New_Email 
from Employe_Info

--STUFF(Original_Expression,Start,Length,Replacement_Expression)
select Id,Name,Email,STUFF(Email,2,3,'*****') 
AS Decode_Email from Employe_Info
