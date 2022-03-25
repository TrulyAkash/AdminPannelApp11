use DataLog1


CREATE TABLE Authors(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(100),
Mobile VARCHAR(100),
Email VARCHAR(100)
)


CREATE TABLE Books(
Id INT PRIMARY KEY IDENTITY,
Title VARCHAR(100),
Price Money,
Quantity INT,
Published_On VARCHAR(100),
Author_Id INT FOREIGN KEY REFERENCES Authors(Id)
)

Insert into Authors values('Munshi Premchand','5678987655','mp@gmail.com');
Insert into Books values('Godan',800,100,GETDATE(),1);
select* from Authors,Books;
