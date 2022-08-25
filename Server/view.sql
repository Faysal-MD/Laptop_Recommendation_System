create or replace view laptop_view (view_id,view_A, view_B, view_C) as
                    select L.pid , L.brand, L.graphics, L.price from laptop L;

create or replace view specification_view1 (view_id, view_D, view_E, view_F, view_G, view_H) as
					select S1.pid, S1.memory, S1.storage, S1.cpu_speed, S1.battery, S1.display from specification1@site1 S1;
					
create or replace view specification_view2 (view_id, view_D, view_E, view_F, view_G, view_H) as
					select S2.pid, S2.memory, S2.storage, S2.cpu_speed, S2.battery, S2.display from specification2@site2 S2;

select * from laptop_view;
select * from specification_view2;
select * from specification_view2;

commit;
