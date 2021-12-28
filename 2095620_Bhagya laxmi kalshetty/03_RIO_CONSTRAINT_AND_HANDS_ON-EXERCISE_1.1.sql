create database ree;
use ree;
create table trainer_info(
Trainer_Id varchar(20) not NULL PRIMARY KEY,

Salutation varchar(20) not NULL,

Trainer_Name  varchar(20) not NULL,

Trainer_Location varchar(20) not NULL,

Trainer_Track varchar(20) not NULL,

Trainer_Qualification varchar(20) not Null,

Trainer_Experiance varchar(20),

Trainer_Email varchar(20) not NULL,

Trainer_Password varchar(20) not NULL
);
select Trainer_Id from trainer_info where Trainer_Id like 'F%';
create table Batch_Info(
Batch_Id  varchar(20) not NULL PRIMARY KEY check(Batch_Id like 'B%'),

Batch_Owner varchar(20) not  NULL,

Batch_BU_Name varchar(20) not  NULL
);
create table Module_Info(
Module_Id varchar(20) not NULL PRIMARY KEY,

Module_Name  varchar(20) not  NULL,

Module_Duration  varchar(20) not  NULL
);
create table Associate_Info(
Associate_Id varchar(20) not NULL PRIMARY KEY check(Associate_Id like 'A%'),

Salutation varchar(20) not  NULL,

Associate_Name varchar(20) not NULL,

Associate_Location varchar(20) not NULL,

Associate_Track varchar(20) not NULL,

Associate_Qualification varchar(20) not NULL,

Associate_Email varchar(20) not NULL,

Associate_Password varchar(20) not NULL
);
create table Questions(
Question_Id varchar(20) not NULL PRIMARY KEY check(Question_Id like 'Q%'),

Module_Id  varchar(20) ,
foreign key(Module_Id) references Module_Info(Module_Id),  

Question_Text   varchar(20) not NULL
);
create table Associate_Status(
Associate_Id varchar(20) not NULL ,
FOREIGN KEY(Associate_Id) references Associate_Info(Associate_Id),

Module_Id varchar(20) not NULL, 
FOREIGN KEY(Module_Id) references Module_Info(Module_Id),

Batch_Id varchar(20) not NULL,
FOREIGN KEY(Batch_Id) references  Batch_Info(Batch_Id),

Trainer_Id varchar(20) not NULL,
 FOREIGN KEY(Trainer_Id) references trainer_info(Trainer_Id), 

Start_Date date,

End_Date date,

AFeedbackGiven varchar(20),

TFeedbackGiven varchar(20) 
);
create table Trainer_Feedback(
Trainer_Id varchar(20) not NULL,
 FOREIGN KEY(Trainer_Id) references trainer_info(Trainer_Id),  

Question_Id  varchar(20) not NULL,
 FOREIGN KEY(Question_Id) references Questions(Question_Id), 

Batch_Id    varchar(20) not NULL ,
FOREIGN KEY(Batch_Id) references  Batch_Info(Batch_Id),

Module_Id varchar(20) not NULL,
 FOREIGN KEY(Module_Id) references Module_Info(Module_Id),

Trainer_Rating varchar(20) not NULL 
);
create table Associate_Feedback(
Associate_Id varchar(20) not NULL,
 FOREIGN KEY(Associate_Id) references Associate_Info(Associate_Id),

Question_Id  varchar(20) not NULL,
 FOREIGN KEY(Question_Id) references Questions(Question_Id), 

Module_Id  varchar(20) not NULL,
 FOREIGN KEY(Module_Id) references Module_Info(Module_Id),

Associate_Rating varchar(20) not NULL
);
create table product(
productID int primary key,

productname varchar(20),

productprice int not null
);
create table user(
user_ID varchar(10) primary key,

productID int,
constraint jk 
foreign key(productID) references product(productID),

username varchar(20)
);
insert into product values(1,'A Dongle',290),
(2,'B Dongle',1250);
alter table user drop foreign key jk;
insert into user values('U001',1,'Ramesh'),
('U002',11,'Mahesh');
