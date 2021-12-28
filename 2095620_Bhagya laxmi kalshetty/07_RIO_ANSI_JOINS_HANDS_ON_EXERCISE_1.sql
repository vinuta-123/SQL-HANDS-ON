use ree;
select Trainer_id,Batch_id from trainer_info,batch_info;
select * from Associate_status  left join Batch_info on Associate_status.batch_id=Batch_info.batch_id;
select Associate_status.Associate_id,Associate_status.trainer_id from Associate_status  right outer join trainer_info on Associate_status.Trainer_id=trainer_info.Trainer_id;
select trainer_info.Trainer_id,Associate_status.Associate_id from trainer_info left outer join Associate_status on trainer_info.Trainer_id=Associate_status.trainer_id;
