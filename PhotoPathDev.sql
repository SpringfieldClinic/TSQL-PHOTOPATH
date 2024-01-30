/*
I need to have the rapidcard database backed up  - done

Update photopath field 
	o - employeeid (must be 5 long if it is not 5 it needs to be zero filled in front of the number). 
	o - Space 
	o - Last name 
	o - space 
	o - first name
	o - .jpg 
	
	(ex: 02398 Wood Brenda.jpg) 

	SELECT MIN(LEN([IDNumber]))
	  FROM [dbo].[RTK12_Person]*/
USE RapidCard
GO

	SELECT  CASE WHEN LEN (IDNumber) = 2 THEN '000' + LEFT(IDNumber,2) + ' ' + [LastName] + ' ' + [FirstName] 
		WHEN (LEN([IDNumber])) = 3 	THEN '00' + LEFT([IDNumber],3)  + ' ' + [LastName] + ' ' + [FirstName] 
		WHEN (LEN([IDNumber])) = 4 	THEN '0' + LEFT([IDNumber],4)  + ' ' + [LastName] + ' ' + [FirstName] 
		ELSE [IDNumber]  + ' ' + [LastName] + ' ' + [FirstName]  
		END 
	,IDNumber
	FROM [dbo].[RTK12_Person]
	WHERE IDNumber = '99999'

	--UPDATE [dbo].[RTK12_Person]
	--SET [PhotoPath] = (CASE WHEN LEN (IDNumber) = 2 THEN '000' + LEFT(IDNumber,2) + ' ' + [LastName] + ' ' + [FirstName]
	--	WHEN (LEN([IDNumber])) = 3 	THEN '00' + LEFT([IDNumber],3)  + ' ' + [LastName] + ' ' + [FirstName]
	--	WHEN (LEN([IDNumber])) = 4 	THEN '0' + LEFT([IDNumber],4)  + ' ' + [LastName] + ' ' + [FirstName]
	--	ELSE [IDNumber]  + ' ' + [LastName] + ' ' + [FirstName]
	--	END )

   SELECT  [PersonID]
      ,[IDNumber]
      ,[Prefix]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,[PhotoPath]
     ,[CDFFile]
      ,[Photo_Date]
      ,[Edit_Date]
      ,[Issue_Date]
      ,[Issue_Tm]
      ,[Department]
      ,[Job_Title]
      ,[Security_Chip]
      ,[First_Last]

	  FROM [dbo].[RTK12_Person]
	  	WHERE IDNumber = '99999'

	  WHERE LEN ([IDNumber]) > 5 */