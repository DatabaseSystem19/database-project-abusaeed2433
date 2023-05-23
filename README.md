# ScheduleManagement
## Database project

### DB Schema
<!-- <img src="images/schema.png" height="400px"> -->

## Creating user
1. ### Connect to system
    ```
    connect system
    ```
    > Then enter password
2. ### Create user
    ```
    create user saeed identified by saeed;
    ```
    > create user user_name identified by password;
3. ### Grant all priviledges
    ```
    grant all privileges to saeed;
    ```
4. ### Connect to the user
    ```
    disconnect
    connect saeed;
    ```
    > Then enter password


## Important command

- ### Clear sql terminal
    ```
    clear screen
    ```
- ### Print into Sql Terminal
    ```
    prompt your message;
    ```
- ### Run .sql file
    ```
    start C:\Users\User\Documents\Codes\SQL\ScheduleManagement\ddl.sql
    ```
    > start path/filename.sql;
- ### Set linesize
    ```
    show linesize
    set linesize 100
    ```
- ### Set pagesize
    ```
    show pagesize
    set pagesize 50
    ```
- ### Show all tables
    ```
    select table_name from user_tables;
    ```    
- ### Show current user
    ```
    show user
    ```
- ### Show table schema
    ```
    describe test;
    ```
    > describe table_name;


# DDL
- ### Create table - dummy
    ```
    create table test(
        id varchar(20),
        primary key(id)
    );
    ```
- ### Drop table
    ```
    drop table test;
    ```
    > drop table table_name;
- ### Drop table ignoring constraints
    ```
    drop table test CASCADE constraint;
    ```
- ### Add new column
    ```
    alter table test add address varchar(20);
    ```
    > alter table table_name add column_name type;
- ### Modify column name
    ```
    alter table test rename column address to user_name;
    ```
    > alter table table_name rename column old_col to new_col;
- ### Modify column definition
    ```
    alter table test modify user_name varchar(50);
    ```
    > alter table table_name modify column_name type;
- ### Drop column
    ```
    alter table test drop column user_name;
    ```
    > alter table table_name drop column column_name;

<hr>

## My project's table creation
``` 
drop table notification;
drop table time_schedule;
drop table day_schedule;
drop table user_table;

create table user_table(
	user_id varchar(50) primary key,
	name varchar(30),
	email varchar(30) not null,
	password varchar(20) not null
);

create table day_schedule(
	event_date varchar(10) primary key,
	time_in_day integer not null,
	day varchar(10),
	uploader varchar(30),
	upload_time varchar(20),
	user_id varchar(50),
	foreign key(user_id) references user_table(user_id)
);

create table time_schedule(
	ts_midnight integer,
	timestamp_utc integer,
	message_time varchar(10),
	message varchar(200),
	upload_time varchar(20),
	is_completed integer,
	user_id varchar(50),
	event_date varchar(10),
	foreign key(user_id) references user_table(user_id),
	foreign key(event_date) references day_schedule(event_date),
	primary key(user_id,timestamp_utc)
);

create table notification(
	timestamp_utc integer,
	user_id varchar(50),
	message_new varchar(200),
	message_time varchar(10),
	is_completed integer,
	foreign key(user_id,timestamp_utc) references time_schedule(user_id,timestamp_utc),	
	primary key(user_id,timestamp_utc)
);

```
<hr>

# DML
- ## Insert
    - ### Inserting into user_table
    ```
    insert into user_table(user_id,name,email,password) values('JWP8311UP3fXZn39o3JPCwlKd6q2','Abu Saeed','saeed1907057@stud.kuet.ac.bd','abusaeed');
    
    insert into user_table values('vH1E5iZ8o7O9MuEqW2BniUShRFq2','Saeed','abusaeed2433@gmail.com','saeed');
    ```
    - ### Inserting into day_schedule    
    ```
    insert into day_schedule(event_date,time_in_day,day,uploader,upload_time,user_id) values('25/05/2023',19366,'Thursday','Saeed','22 May at 12:50PM','vH1E5iZ8o7O9MuEqW2BniUShRFq2');

    insert into day_schedule values('27/05/2023',19362,'Saturday','Saeed','23 May at 08:16AM','vH1E5iZ8o7O9MuEqW2BniUShRFq2');
    ```

    - ### Inserting into time_schedule
    ```
    insert into time_schedule(ts_midnight,timestamp_utc,message_time,message,upload_time,is_completed,event_date) values(1380,1685206800000,'11:00PM','Renew library book','31 Mar at 04:43PM',0,'25/05/2023');

    insert into time_schedule values(735,1684995300000,'12:15PM','Office e jaoa lagbe','22 May at 12:50PM',0,'27/05/2023');
    ```    
    - ### Inserting into notification
    ```
    insert into notification(timestamp_utc,user_id,message_new,message_time,is_completed) values(1685206800000,'vH1E5iZ8o7O9MuEqW2BniUShRFq2','Renew library book','31 Mar at 04:43PM',0);
    
    insert into notification values(1684995300000,'vH1E5iZ8o7O9MuEqW2BniUShRFq2','Office e jaoa lagbe','22 May at 12:50PM',0);
    ```

