drop table laptop CASCADE CONSTRAINTS;
--set linesize 200;
	
create table laptop(
pid int,
brand varchar2(10),
graphics varchar2(35),
price number
);	

CREATE OR REPLACE TRIGGER LaptopTrigger
AFTEzR INSERT
ON laptop
BEGIN
   DBMS_OUTPUT.PUT_LINE('VALUES INSERTED INTO LAPTOP TABLE');
END;
/

insert into laptop(pid,brand,graphics,price) 
			values (1,'ASUS','Intel Celeron N4020',42500);
insert into laptop(pid,brand,graphics,price)
			values (2,'HP','AMD Radeon Graphics',65000);			
insert into laptop(pid ,brand,graphics,price)
			values (3,'MSI','GeForce MX450 GDDR5 2GB',105000);			
insert into laptop(pid , brand,graphics,price)
			values (4,'Lenovo','Integrated Intel UHD',46000);	
insert into laptop(pid , brand,graphics,price)
			values (5,'Acer','AMD Radeon',44990);
insert into laptop(pid , brand,graphics,price)
			values (6,'ASUS','Intel Iris Xe',78000);
insert into laptop(pid , brand,graphics,price)
			values (7,'Lenovo','AMD Radeon',89500);
insert into laptop(pid , brand,graphics,price)
			values (8,'HP','Intel Iris Xe',69000);
insert into laptop(pid , brand,graphics,price)
			values (9,'HP','Intel UHD Graphics 620',45500);
insert into laptop(pid , brand,graphics,price)
			values (10,'Lenovo','Integrated Intel UHD',53000);
insert into laptop(pid , brand,graphics,price)
			values (11,'HP','AMD Radeon Vega',64500);
insert into laptop(pid , brand,graphics,price)
			values (12,'HP','Intel Iris Xe',83000);
insert into laptop(pid , brand,graphics,price)
			values (13,'ASUS','Integrated AMD Radeon',71500);
insert into laptop(pid , brand,graphics,price)
			values (14,'Lenovo','Intel UHD 600',35000);
insert into laptop(pid , brand,graphics,price)
			values (15,'Lenovo','Intel UHD 600',51000);
insert into laptop(pid , brand,graphics,price)
			values (16,'MSI','Intel Iris Xe',103000);
insert into laptop(pid , brand,graphics,price)
			values (17,'HP','NVIDIA Quadro RTX 3000',355000);
insert into laptop(pid , brand,graphics,price)
			values (18,'MSI','AMD Radeon RX 5500M With 4GB GDDR6',107000);
insert into laptop(pid , brand,graphics,price)
			values (19,'Acer','Iris Xe Graphics',75500);
insert into laptop(pid , brand,graphics,price)
			values (20,'MSI','GeForce MX450 GDDR5 2GB',88000);
insert into laptop(pid , brand,graphics,price)
			values (21,'ASUS','Nvidia GTX 1650 Ti 4GB',99800);
insert into laptop(pid , brand,graphics,price)
			values (22,'Walton','Intel UHD Graphics 605',29990);
insert into laptop(pid , brand,graphics,price)
			values (23,'MSI','GeForce MX450 GDDR5 2GB',50000);
insert into laptop(pid , brand,graphics,price)
			values (24,'HP','GeForce MX450 GDDR5 2GB',60000);
insert into laptop(pid , brand,graphics,price)
			values (25,'ASUS','NVIDIA Quadro RTX 3000',80000);
insert into laptop(pid , brand,graphics,price)
			values (26,'Lenovo','Intel UHD Graphics 605',90000);
commit; 

SELECT * FROM laptop;