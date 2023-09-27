create database CapStone
use CapStone

CREATE TABLE AdminInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255),
    Password VARCHAR(255)
);

CREATE TABLE EmpInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255) unique,
    Name VARCHAR(255),
    DateOfJoining DATETIME,
    PassCode INT
);

CREATE TABLE BlogInfo (
    BlogId INT PRIMARY KEY identity(1,1),
    Title VARCHAR(255),
    Subject VARCHAR(255),
    DateOfCreation DATETIME,
    BlogUrl VARCHAR(255),
    EmpEmailId VARCHAR(255),
);

Insert into AdminInfo(EmailId,Password) Values ('jeeban@2001','jeeban8249')

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('anil@gmail.com', 'Anil Gupta', '2023-09-23 10:00:00', 12345);

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('hemant@gmail.com', 'Hemant Kumar', '2023-09-25 09:45:00', 54321);

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ('Introduction to SQL', 'Database Management', '2023-09-24 14:30:00', 'https://example.com/sql-intro', 'anil@gmail.com');

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ( 'Advanced SQL Techniques', 'Database Optimization', '2023-09-26 16:15:00', 'https://example.com/advanced-sql', 'hemant@gmail.com');

Select * from AdminInfo
Select * from EmpInfo
Select * from BlogInfo