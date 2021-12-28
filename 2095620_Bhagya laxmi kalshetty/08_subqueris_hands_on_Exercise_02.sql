create database goatts;
use goatts;
create table student_info(
reg_num varchar(30),
student_name varchar(30),
branch varchar(30),
contact_num varchar(30),
Date_of_Birth Date,
Date_of_Joining Date,
Address Varchar(250),
Email_id Varchar(250)
);
create table subject_master(
Subject_Code varchar(10),
Subject_Name Varchar(30),
Weightage int
);
create table student_marks(
reg_num Varchar(30),
Subject_Code  varchar(10),
Semester int,
Marks int
);
create table student_result(
reg_num Varchar(20),
Semester int,
GPA int,
Is_Eligible_Scholarship char(3)
);
insert into student_info values('MC101301','James','MCA',9714589787,'1984-01-12','2010-7-8','No 10,South Block','Nivea james.mca@yahoo.com');
insert into student_info values('BEC111402','Manio','ECE', 8912457875,'1983-02-23','2011-06-25', '8/12 Park View','Sieera manioma@gmail.com');
insert into student_info values('BEEI10','Mike','EI',8974567897,'1983-02-10',' 2010-08-25',' Cross villa NY',' mike.james@ymail.com');
insert into student_info values('MB111305', 'Paulson',' MBA', 8547986123, '1984-12-13', '2010-08-08',' Lake view,NJ',' paul.son@rediffmail.com');
 insert into subject_master values('EE01DCF','DCF','30');
insert into subject_master values('EC02MUP',' Microprocessor',' 40');
insert into subject_master values('MC06DIP',' Digital Image Processing', 30);
insert into subject_master values('MB03MAR',' Marketing Techniques', 20);
insert into subject_master values('EI05IP',' Instrumentation Precision ',40);
insert into subject_master values('CPSC02DS',' Data Structures', 40);
insert into student_marks values('MC101301',' EE01DCF', 1, 75);
insert into student_marks values('MC101301',' EC02MUP', 1, 65);
insert into student_marks values('MC10301',' MC06DIP', 1, 70);
insert into student_marks values('BEC111402',' EE01DCF', 1, 55);
insert into student_marks values('BEC111402',' EC02MUP ',1, 80);
insert into student_marks values('BEC111402',' MC06DIP', 1, 60);
insert into student_marks values('BEEI101204',' EE01DCF', 1 ,85);
insert into student_marks values('BEEI101204',' EC02MUP', 1, 78);
insert into student_marks values('BEEI101204',' MC06DIP', 1, 80);
insert into student_marks values('BEEI101204',' MB03MAR', 2, 75);
insert into student_marks values('BEEI101204',' EI05IP', 2 ,65);
insert into student_marks values('BEEI101204',' CPSC02DS', 2, 75);
insert into student_marks values('MB111305 ','EE01DCF', 1 ,65);
insert into student_marks values('MB111305',' EC02MUP',1, 68);
insert into student_marks values('MB111305',' MC06DIP', 1, 63);
insert into student_marks values('MB111305',' MB03MAR', 2 ,85);
insert into student_marks values('MB111305',' EI05IP', 2, 74);
insert into student_marks values('MB111305',' CPSC02DS', 2 ,62);
select * from student_marks;
insert into student_result values('MC101301', 1 ,7.5,'Y');
insert into student_result values('BEC111402', 1, 7.1,' Y');
insert into student_result values('BEEI101204', 1, 8.3,' Y');
insert into student_result values('BEEI101204', 2, 6.9, 'N');
insert into student_result values('MB111305', 1, 6.5,' N');
insert into student_result values('MB111305', 2, 6.8, 'N');
select sm.Marks,sf.reg_num,sf.student_name from student_marks sm join student_info sf on sm.Reg_num=sf.reg_num;
select sm.Marks,sf.reg_num,sf.student_name,sd.subject_name from student_marks sm join 
student_info sf on sm.Reg_num=sf.reg_num join subject_master sd on sd.subject_code=sm.subject_code where subject_name='EI05IP';
select max(Marks) from student_Marks where Marks< (select max(Marks) from student_marks order by marks limit 1);


