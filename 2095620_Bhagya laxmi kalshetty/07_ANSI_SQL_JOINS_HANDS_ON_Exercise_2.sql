create database henees;
use henees;
select sf.student_name,sm.marks,sm.subject_code from student_info sf join student_marks sm on sf.Reg_num=sm.Reg_num;
select sf.student_name,sm.marks,sm.subject_code from student_info sf join student_marks sm on sf.Reg_num=sm.Reg_num where marks>=65;
select sf.student_name,sf.Reg_num,sr.max(GPA) from student_info sf join student_result sr on sf.Reg_num=sr.Reg_num;
create table studen_info(
Reg_num varchar(20), 
foreign key(Reg_num) references student_info(Reg_num),
Student_Name  Varchar(30) not null,
Branch Varchar(20),
Contact_Number  Varchar(20),
Date_of_Birth Date not null,
Date_of_Joining Date,
Address Varchar(250),
Email_id Varchar(250)
);
insert into studen_info values(1,'bhagya','ec',9845,'1999-10-02',current_date(),'quadri','rds@gmail.com'),
(2,'remo','msc',779,'2000-5-02',current_date(),'chowk','bga2123@gmail.com');
select * from student_info left outer join studen_info on student_info.Reg_num=studen_info(Reg_num);
select * from student_info right outer join studen_info on student_info.Reg_num=studen_info(Reg_num);
