drop table specification1 CASCADE CONSTRAINTS;
--Vertical Fragment
create table specification1(
pid int,
memory number,
storage number,
cpu_speed float,
battery number,
display float
);	

CREATE OR REPLACE TRIGGER specification1Trigger
AFTER INSERT
ON specification1
BEGIN
   DBMS_OUTPUT.PUT_LINE('VALUES INSERTED INTO SPECIFICATION1 TABLE');
END;
/

insert into specification1(pid,memory,storage,cpu_speed,battery,display) 
			values (1,4,1024,4.5,37,15.6);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (2,8,512,3.5,41,15.6);					
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (3,4,256,3,35,15.6);	
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (4,4,128,2.8,36,14);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (5,8,512,3,37,15.6);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (6,8,1024,4.5,41,14);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (7,4,1024,4,48,14);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (8,8,512,3.5,35,15.6);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (9,8,512,3,41,15.6);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (10,8,512,2.8,45,14);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (11,8,512,2.8,50,15.6);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (12,4,1024,3,35,15.6);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (13,4,1024,3,38,14);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (14,8,512,3.5,48,15.6);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (15,8,512,4.5,52,14);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (16,8,512,4.5,42,15.6);
insert into specification1(pid,memory,storage,cpu_speed,battery,display)
			values (17,4,256,4,31,14);
			
commit; 

SELECT * FROM specification1;