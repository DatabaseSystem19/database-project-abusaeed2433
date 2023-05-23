
-- saeed57 - JWP8311UP3fXZn39o3JPCwlKd6q2
-- saeed24 - vH1E5iZ8o7O9MuEqW2BniUShRFq2

prompt Inserting into user_table;

insert into user_table(user_id,name,email,password) values('JWP8311UP3fXZn39o3JPCwlKd6q2','Abu Saeed','saeed1907057@stud.kuet.ac.bd','abusaeed');
insert into user_table values('vH1E5iZ8o7O9MuEqW2BniUShRFq2','Saeed','abusaeed2433@gmail.com','saeed');

-- d MMM 'at' hh:mma
insert into day_schedule(event_date,time_in_day,day,uploader,upload_time,user_id) values('25/05/2023',19366,'Thursday','Saeed','22 May at 12:50PM','vH1E5iZ8o7O9MuEqW2BniUShRFq2');
insert into day_schedule(event_date,time_in_day,day,uploader,upload_time,user_id) values('27/05/2023',19362,'Saturday','Saeed','23 May at 08:16AM','vH1E5iZ8o7O9MuEqW2BniUShRFq2');


insert into time_schedule(ts_midnight,timestamp_utc,message_time,message,upload_time,is_completed,event_date) values(1380,1685206800000,'11:00PM','Renew library book','31 Mar at 04:43PM',0,'25/05/2023');
insert into time_schedule values(735,1684995300000,'12:15PM','Office e jaoa lagbe','22 May at 12:50PM',0,'27/05/2023');

insert into notification(timestamp_utc,user_id,message_new,message_time,is_completed) values(1685206800000,'vH1E5iZ8o7O9MuEqW2BniUShRFq2','Renew library book','31 Mar at 04:43PM',0);
insert into notification values(1684995300000,'vH1E5iZ8o7O9MuEqW2BniUShRFq2','Office e jaoa lagbe','22 May at 12:50PM',0);

-- prompt 'Setting pagesize and linesize to 200';
-- set pagesize 200;
-- set linesize 200;


-- prompt select * from user_table;
-- select * from user_table;

-- prompt select * from day_schedule;
-- select * from day_schedule;

-- prompt select * from time_schedule;
-- select * from time_schedule;

-- prompt select * from notification;
-- select * from notification;