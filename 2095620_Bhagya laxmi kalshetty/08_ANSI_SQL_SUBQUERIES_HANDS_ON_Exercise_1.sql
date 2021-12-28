create database jio;
use jio;
create table trainer_info(
Trainer_Id varchar(20),
Salutation  varchar(7),
Trainer_Name varchar(30),
Trainer_Location varchar(30),
Trainer_Track  varchar(15),
Trainer_Qualification varchar(100),
Trainer_Experiance int,
Trainer_Email  varchar(100),
Trainer_Password varchar(20)
);
insert into Trainer_Info values('F001','Mr','PANKAJ GHOSH','Pune','Java','Bachelor of Technology',12,'Pankaj.Ghosh@alliance.com','fac1@123'),
('F002','Mr','SANJAY RADHAKRISHNAN' ,'Bangalore','DotNet','Bachelor of Technology',12,'Sanjay.Radhakrishnan@alliance.com','fac2@123'),
('F003','Mr','VIJAY MATHUR','Chennai','Mainframe','Bachelor of Technology',10,'Vijay.Mathur@alliance.com','fac3@123'),
('F004','Mrs','NANDINI NAIR','Kolkata','Java','Master of Computer Applications',9,'Nandini.Nair@alliance.com','fac4@123'),
('F005','Miss','ANITHA PAREKH','Hyderabad','Testing','Master of Computer Applications',6,'Anitha.Parekh@alliance.com','fac5@123'),
('F006','Mr','MANOJ AGRAWAL ','Mumbai','Mainframe','Bachelor of Technology',9,'Manoj.Agrawal@alliance.com','fac6@123'),
('F007','Ms','MEENA KULKARNI','Coimbatore','Testing','Bachelor of Technology',5,'Meena.Kulkarni@alliance.com','fac7@123'),
('F009','Mr','SAGAR MENON' ,'Mumbai','Java','Master of Science In Information Technology',12,'Sagar.Menon@alliance.com','fac8@123');
select * from Trainer_info;
select * from Trainer_info where Trainer_Id in(select Trainer_Id from Trainer_info where Trainer_Name like '%i%');
select * from Trainer_info where Trainer_Id in(select Trainer_Id from Trainer_info where  Trainer_Name not like '%i%');
CREATE TABLE Trainer_Info_Sabbatical(
Trainer_Id VARCHAR(20) PRIMARY KEY,
Salutation VARCHAR(7) NOT NULL,
Trainer_Name VARCHAR(30) NOT NULL,
Trainer_Location VARCHAR(30) NOT NULL,
Trainer_Track VARCHAR(15) NOT NULL,
Trainer_Qualification VARCHAR(100) NOT NULL,
Trainer_Experiance int ,
Trainer_Email VARCHAR(100) NOT NULL,
Trainer_Password VARCHAR(20) NOT NULL
);
insert into Trainer_Info_Sabbatical (Trainer_Id,Salutation,Trainer_Name,Trainer_Location,Trainer_Track,Trainer_Qualification,Trainer_Experiance,Trainer_Email,Trainer_Password)
select Trainer_Id,Salutation,Trainer_Name,Trainer_Location,Trainer_Track,Trainer_Qualification,Trainer_Experiance,Trainer_Email,Trainer_Password from Trainer_info;
select * from Trainer_Info_Sabbatical;
insert into Trainer_Info_Sabbatical values ('F011','Mr.','Shyju K', 'Kochi','Java','Bachelor of Technology',9,'shyju@alliance.com','fac11@123');
insert into Trainer_Info_Sabbatical values ('F012','Mr.','Raviraj Kumar', 'Kochi','Java','Bachelor of Technology',8,'raviarajkumar@alliance.com','fac12@123');
insert into Trainer_Info_Sabbatical values ('F013','Mr.','Suresh Babu N', 'Mumbai','Testing','Bachelor of Technology',19,'sureshbabun@alliance.com','fac13@123');
SELECT * FROM Trainer_info;
update Trainer_info set Trainer_Location='kochi' where Trainer_Experiance
in (select Trainer_Experiance from Trainer_Info_Sabbatical where Trainer_Experiance>12);
delete from Trainer_info where exists 
(select Trainer_Experiance from Trainer_Info_Sabbatical where Trainer_Info_Sabbatical.Trainer_Experiance=Trainer_info.Trainer_Experiance);
