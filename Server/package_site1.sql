CREATE OR REPLACE PACKAGE predict_laptop_site1 AS 
	PROCEDURE nearestNeighbours(A IN NUMBER,B IN NUMBER,C IN FLOAT,D IN NUMBER,E IN FLOAT);
	PROCEDURE print_memory;	
	PROCEDURE print_storage;	
	PROCEDURE print_battery;	
	PROCEDURE print_price; 
END predict_laptop_site1;
/

CREATE OR REPLACE PACKAGE Body predict_laptop_site1 AS
	PROCEDURE nearestNeighbours(A IN NUMBER,B IN NUMBER,C IN FLOAT,D IN NUMBER,E IN FLOAT)
	IS	
	BEGIN
		For R in (select pid,absolute_value(memory, A) as df_memory, absolute_value(storage, B) as df_storage,
			absolute_value(cpu_speed, C) as df_cpu_speed, absolute_value(battery, D) as df_battery,
			absolute_value(display, E) as df_display from specification1@site1) LOOP
						 
			insert into difference_table1@site1 values(R.pid, R.df_memory, R.df_storage, R.df_cpu_speed, R.df_battery, 
			R.df_display);
		End Loop;		
	END nearestNeighbours;

	PROCEDURE print_memory
	IS	
	loopCount int :=0;
	BEGIN 
		For R in (select * from difference_table1@site1 natural join 
		laptop natural join specification1@site1 order by df_memory) LOOP

		loopCount:= loopCount+1;
		DBMS_OUTPUT.PUT_LINE('Laptop: '||R.brand||'		'||R.graphics||' Memory: '||R.memory||'		Price: '||R.Price);

		IF loopCount = 5 THEN
		EXIT;
		END IF;
		End Loop; 
	END print_memory;

	PROCEDURE print_storage
	IS	
	loopCount int :=0;
	BEGIN 
		For R in (select * from difference_table1@site1 natural join 
		laptop natural join specification1@site1 order by df_storage) LOOP

		loopCount:= loopCount+1;
		DBMS_OUTPUT.PUT_LINE('Laptop: '||R.brand||'		'||R.graphics||'   Storage: '||R.storage||'      Price: '||R.Price);

		IF loopCount = 5 THEN
		EXIT;
		END IF;

		End Loop; 
	END print_storage;

	PROCEDURE print_battery
	IS	
	loopCount int :=0 ;
	BEGIN 
		For R in (select * from difference_table1@site1 natural join 
		laptop natural join specification1@site1 order by df_battery) LOOP

		loopCount:= loopCount+1;
		DBMS_OUTPUT.PUT_LINE('Laptop: '||R.brand||'		'||R.graphics||' Battery: '||R.battery||'     Price: '||R.Price);

		IF loopCount = 5 THEN
		EXIT;
		END IF;
		End Loop; 

	END print_battery;

	PROCEDURE print_price
	IS	
	loopCount int :=0 ;
	BEGIN 
		For R in (select * from difference_table1@site1 natural join 
		laptop natural join specification1@site1  order by price) LOOP

		loopCount:= loopCount+1;
		DBMS_OUTPUT.PUT_LINE('Laptop:   '||R.brand||'	'||R.graphics||'    Price:  '||R.Price);

		IF loopCount = 5 THEN
		EXIT;
		END IF;
		End Loop; 

	END print_price;

END predict_laptop_site1;
/	
