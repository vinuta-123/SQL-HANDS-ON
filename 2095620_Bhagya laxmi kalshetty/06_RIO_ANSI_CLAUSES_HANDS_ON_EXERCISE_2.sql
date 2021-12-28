USE henEE;
SELECT student_name,GPA FROM student_info,student_result order by GPA desc;
select * from student_info order by student_name asc;
select * from student_info order by Date_of_birth asc;
select student_name,GPA ,Is_Eligible_Scholarship from student_info ,student_result where  Is_Eligible_Scholarship='Y'; 
select *,max(GPA) from student_result group by gpa;
select *,min(GPA) from student_result group by gpa;
