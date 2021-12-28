use hen;
select upper(student_name),upper(branch) from student_info;
select  * from student_info;
select * from subject_master;
select student_name,contact_num,Email_id,Date_of_birth from student_info where Date_of_birth=period_diff(Date_of_birth,current_date());
select lower(subject_code),lower(subject_name),lower(weightage) from subject_master;

select date_format(date_of_birth,'%M %D %Y') from student_info;
select sf.reg_num,sf.student_name,sm.marks from student_info sf,student_marks sm where subject_code='EI05IP';
select date_format(date_of_birth,'%y/ %m/ %d') from student_info;
select Reg_num,student_name,marks from student_info sf,student_marks sm where sf.Reg_num=sm.Reg_Num;



