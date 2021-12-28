use heap;
select sum(Associate_id),start_date from ass_status group by start_date;
select sum(Associate_id),start_date from ass_status where trainer_id='F001' group by start_date;
select sum(Associate_id),start_date from ass_status where trainer_id='F001' group by start_date having sum(Associate_id)>2;
select * from module_info order by module_duration;
select Associate_name,module_name,module_id,module_infra_fees from Associate_info,module_info order by Module_Duration;
