
-- saeed57 - JWP8311UP3fXZn39o3JPCwlKd6q2
-- saeed24 - vH1E5iZ8o7O9MuEqW2BniUShRFq2

	insert into user_table(user_id,name,email,password) values('JWP8311UP3fXZn39o3JPCwlKd6q2','Abu Saeed','saeed1907057@stud.kuet.ac.bd','abusaeed');

    insert into user_table values('vH1E5iZ8o7O9MuEqW2BniUShRFq2','Saeed','abusaeed2433@gmail.com','saeed');

    insert into user_table values('a2E5iZ8o7O9MuEqW2BniUShRFq2','Saeed','abu123@gmail.com','Abu');
    insert into user_table values('b11E5iZ8o7O9MuEqW2BniUShRFq3','John','john101@gmail.com','John');
    insert into user_table values('c12E5iZ8o7O9MuEqW2BniUShRFq4','Mary','mary101@gmail.com','Mary');

    insert into user_table values('d13E5iZ8o7O9MuEqW2BniUShRFq5','Peter','peter101@gmail.com','Peter');
    insert into user_table values('e14E5iZ8o7O9MuEqW2BniUShRFq6','Susan','susan101@gmail.com','Susan');
    insert into user_table values('vH1E5iZ8o7O9MuEqW2BniUShRFq1','David','david101@gmail.com','David');
        
    insert into user_table values('g16E5iZ8o7O9MuEqW2BniUShRFq8','Michael','michael101@gmail.com','Michael');
    insert into user_table values('vH1E5iZ8o7O9MuEqW2BniUShRFq4','Sarah','sarah101@gmail.com','Sarah');
    insert into user_table values('i18E5iZ8o7O9MuEqW2BniUShRFq10','James','james101@gmail.com','James');
    
    --- ### Inserting into day_schedule
    
    insert into day_schedule(event_date,time_in_day,day,uploader,upload_time,user_id) values('25/05/2023',19366,'Thursday','Saeed','22 May at 12:50PM','vH1E5iZ8o7O9MuEqW2BniUShRFq2');

    insert into day_schedule values('27/05/2023',19368,'Saturday','Saeed','23 May at 08:16AM','vH1E5iZ8o7O9MuEqW2BniUShRFq2');
    insert into day_schedule values ('28/05/2023', 19369, 'Sunday', 'Saeed', '24 May at 09:30AM', 'vH1E5iZ8o7O9MuEqW2BniUShRFq2');
    insert into day_schedule values ('29/05/2023', 19370, 'Monday', 'Saeed', '25 May at 11:45AM', 'vH1E5iZ8o7O9MuEqW2BniUShRFq2');

    insert into day_schedule values ('30/05/2023', 19371, 'Tuesday', 'Saeed', '26 May at 01:00PM', 'vH1E5iZ8o7O9MuEqW2BniUShRFq2');
    insert into day_schedule values ('31/05/2023', 19372, 'Wednesday', 'Saeed', '27 May at 02:15PM', 'vH1E5iZ8o7O9MuEqW2BniUShRFq2');
    insert into day_schedule values ('01/06/2023', 19373, 'Thursday', 'Saeed', '28 May at 03:30PM', 'vH1E5iZ8o7O9MuEqW2BniUShRFq2');

    insert into day_schedule values ('02/06/2023', 19374, 'Friday', 'Saeed', '29 May at 04:45PM', 'vH1E5iZ8o7O9MuEqW2BniUShRFq2');
    insert into day_schedule values ('03/06/2023', 19375, 'Saturday', 'Saeed', '30 May at 06:00PM', 'vH1E5iZ8o7O9MuEqW2BniUShRFq2');
    insert into day_schedule values ('05/06/2023', 19377, 'Monday', 'Saeed', '01 June at 08:30PM', 'vH1E5iZ8o7O9MuEqW2BniUShRFq2');
    
    --- ### Inserting into time_schedule
    
    insert into time_schedule(ts_midnight,timestamp_utc,message_time,message,upload_time,is_completed,event_date) 
    values(735,1684995300000,'12:15PM','Renew library book','22 May at 12:50PM',0,'25/05/2023');

    insert into time_schedule values (1380, 1685206800000,'11:00PM','Office e jaoa lagbe','31 Mar at 04:43PM',0,'27/05/2023');

    INSERT INTO time_schedule VALUES (1380, 1685293200000, '11:00PM', 'Prepare presentation', '30 Mar at 05:30PM', 1, '28/05/2023');

    INSERT INTO time_schedule VALUES (885, 1685349900000, '02:45PM', 'Read a book', '24 May at 06:20PM', 0, '29/05/2023');

    INSERT INTO time_schedule VALUES (900, 1685437200000, '03:00PM', 'Attend project meeting', '24 May at 06:20PM', 1, '30/05/2023');

    INSERT INTO time_schedule VALUES (600, 1685505600000, '10:00AM', 'Client meeting', '31 Mar at 12:20PM', 1, '31/05/2023');
    INSERT INTO time_schedule VALUES (945, 1685526300000, '03:45PM', 'Prepare for exam', '24 May at 06:17PM', 0, '31/05/2023');

    INSERT INTO time_schedule VALUES (1080, 1685620800000, '06:00PM', 'Workout at the gym', '31 Apr at 11:30AM', 1, '01/06/2023');

    INSERT INTO time_schedule VALUES (900, 1685696400000, '03:00PM', 'Research new technology', '01 Apr at 09:30AM', 0, '02/06/2023');

    INSERT INTO time_schedule VALUES (840, 1685779200000, '02:00PM', 'Lunch with colleagues', '29 Mar at 02:30PM', 1, '03/06/2023');
    INSERT INTO time_schedule VALUES (960, 1685786400000, '04:00PM', 'Submit project report', '29 Mar at 08:30PM', 1, '03/06/2023');

    INSERT INTO time_schedule VALUES (120, 1685908800000, '02:00AM', 'Pay bills', '01 Apr at 06:00AM', 1, '05/06/2023');
    INSERT INTO time_schedule VALUES (540, 1685934000000, '09:00AM', 'Meeting with team', '30 Mar at 11:15AM', 1, '05/06/2023');
    INSERT INTO time_schedule VALUES (1050, 1685964600000, '05:30PM', 'Submit expense report', '29 Mar at 11:15PM', 1, '05/06/2023');
    INSERT INTO time_schedule VALUES (1170, 1685971800000, '07:30PM', 'Team dinner', '30 Mar at 01:20AM', 1, '05/06/2023');
    

    --- ### Inserting into notification
    
    INSERT INTO notification VALUES (1684995300000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Renew library book', '31 Mar at 04:43PM', 0);

    insert into notification values (1685206800000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Office e jaoa lagbe','22 May at 12:50PM',0);
    INSERT INTO notification VALUES (1685526300000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Prepare for exam', '01 Apr at 08:30AM', 0);
    INSERT INTO notification VALUES (1685964600000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Submit expense report', '29 Mar at 11:15PM', 1);

    INSERT INTO notification VALUES (1685971800000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Team dinner', '30 Mar at 01:20AM', 1);
    INSERT INTO notification VALUES (1685908800000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Pay bills', '01 Apr at 06:00AM', 1);
    INSERT INTO notification VALUES (1685934000000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Meeting with team', '30 Mar at 11:15AM', 1);

    INSERT INTO notification VALUES (1685786400000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Submit project report', '29 Mar at 08:30PM', 1);
    INSERT INTO notification VALUES (1685779200000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Lunch with colleagues', '29 Mar at 02:30PM', 1);
    INSERT INTO notification VALUES (1685696400000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Research new technology', '01 Apr at 09:30AM', 0);

    INSERT INTO notification VALUES (1685620800000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Workout at the gym', '31 Mar at 11:30AM', 1);
    INSERT INTO notification VALUES (1685437200000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Attend project meeting', '29 Mar at 07:45PM', 1);
    INSERT INTO notification VALUES (1685349900000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Read a book', '01 Apr at 06:30AM', 0);

    INSERT INTO notification VALUES (1685293200000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Prepare presentation', '30 Mar at 05:30PM', 1);
    INSERT INTO notification VALUES (1685505600000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq2', 'Client meeting', '31 Mar at 12:20PM', 1);

    
    INSERT INTO notification VALUES (1685505600000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq1', 'Meeting with client', '31 Mar at 12:20PM', 0);
    INSERT INTO notification VALUES (1685349900000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq1', 'Read two book', '01 Apr at 06:30AM', 0);
    INSERT INTO notification VALUES (1685696400000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq1', 'Destroy old technology', '01 Apr at 09:30AM', 0);

    INSERT INTO notification VALUES (1685696400000, 'vH1E5iZ8o7O9MuEqW2BniUShRFq4', 'Take a break', '01 Apr at 09:30AM', 0);
    
