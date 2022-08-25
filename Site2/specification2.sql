drop table specification2 CASCADE CONSTRAINTS;
--set linesize 200;
	
create table specification2(
pid int,
memory number,
storage number,
cpu_speed float,
battery number,
display float
);	

CREATE OR REPLACE TRIGGER specification2Trigger
AFTER INSERT
ON specification2
BEGIN
   DBMS_OUTPUT.PUT_LINE('VALUES INSERTED INTO SPECIFICATION2 TABLE');
END;
/
			
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (18,16,512,3.5,52,14);			
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (19,16,512,3.5,56,14);
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (20,32,1024,3.5,52,16);
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (21,32,2048,3.7,51,14);
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (22,32,1024,3.8,99,15.6);
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (23,32,2048,3.5,71,15.6);
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (24,32,512,3.7,99,15.6);
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (25,32,2048,3.5,71,15.6);
insert into specification2(pid,memory,storage,cpu_speed,battery,display)
			values (26,32,512,3.8,62,15);

commit; 

SELECT * FROM specification2;