SELECT * FROM  trainer_info WHERE Trainer_Password=NULL;
SELECT Trainer_Id,Trainer_Name,Trainer_Location ,Trainer_Track FROM trainer_info where Trainer_Experiance>4;
select Module_Duration from  module_info where Module_Duration>200;
select Trainer_Id,Trainer_Name from trainer_info where Trainer_Qualification!='Bachelor of Technology';
select * from  module_info where Module_Duration between 200 and 300;
select Trainer_Id,Trainer_Name from trainer_info where Trainer_Name like 'M%';
select Trainer_Id,Trainer_Name from trainer_info where Trainer_Name like 'o%';
select * from module_info where Module_Name!=null;
