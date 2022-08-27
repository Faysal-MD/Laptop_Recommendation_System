drop table difference_table1 CASCADE CONSTRAINTS;
	
create table difference_table1(
	pid int,
	df_memory number,
	df_storage number,
	df_cpu_speed float,
	df_battery number,
	df_display float
);	

commit; 