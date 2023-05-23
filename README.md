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

# DML


<hr>

