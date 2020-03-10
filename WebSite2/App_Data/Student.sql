CREATE TABLE Student
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Firstname] NVARCHAR(20) NOT NULL, 
    [Lastname] NVARCHAR(20) NOT NULL, 
    [Gender] CHAR(1) NOT NULL , 
    [Email] NCHAR(20) NOT NULL, 
    [Address] NCHAR(50) NOT NULL, 
    [Phone] NCHAR(12) NOT NULL, 
    [Faculty] NCHAR(10) NOT NULL, 
    [password] NCHAR(20) NOT NULL, 
    [Nationality] NCHAR(10) NOT NULL, 
    [birthdate] DATE NOT NULL, 
    [Bus] NUMERIC(1) NOT NULL
)
