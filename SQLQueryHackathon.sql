use AbhisekDb

select * from tblEmployee

create table tblUser(
EntryId int not null primary key identity,
UserName varchar(20) not null,
Password varchar(10) not null,
Email varchar(20)
)

insert into tblUser values
('Abhisek','Abhisek@1','abhisek@gmail.com'),
('Junaid','Junaid@1','junaid@gmail.com'),
('Veeresh','Veeresh@1','veeresh@gmail.com'),
('Navdeep','Navdeep@1','navdeep@gmail.com');

select * from tblUser

create table tblManager(
Emp_Id int not null primary key identity,
Name varchar(20) not null,
Salary money not null,
Manager_Id int null
)

insert into tblManager values
('Rohit',20000,3),
('Sangeeta',12000,5),
('Sanjay',10000,5),
('Arun',25000,3),
('Zaheer',30000,null);

select * from tblManager

SELECT A.Name AS emp_Name, B.Name AS mgr_Name
FROM tblManager A Left join tblManager B
on A.Name <> B.Name 
AND A.Manager_Id = B.Emp_Id
ORDER BY A.Name ASC;