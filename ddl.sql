
drop table notification;
drop table time_schedule;
drop table day_schedule;
drop table user_table;

create table user_table(
	uid_ varchar(20) primary key,
	name varchar(30),
	email varchar(30) not null,
	password varchar(20) not null
);

create table day_schedule(
	date_ varchar(10) primary key,
	time_in_day integer not null,
	day varchar(10),
	uploader varchar(30),
	time_ varchar(10),
	uid_ varchar(20),
	foreign key(uid_) references user_table(uid_)
);

create table time_schedule(
	timestamp_ integer,
	timestamp_utc integer,
	message_time varchar(10),
	message varchar(20),
	upload_time varchar(10),
	is_completed integer,
	uid_ varchar(20),
	date_ varchar(10),
	foreign key(uid_) references user_table(uid_),
	foreign key(date_) references day_schedule(date_),
	primary key(uid_,timestamp_utc)
);

create table notification(
	timestamp_utc integer,
	uid_ varchar(20),
	message_new varchar(20),
	message_time varchar(10),
	is_completed integer,
	foreign key(uid_,timestamp_utc) references time_schedule(uid_,timestamp_utc),	
	primary key(uid_,timestamp_utc)
);


prompt 'Data insertion part';

insert into user_table values('abckndfnxa','Saeed','abusaeed2433@gmail.com','Saeed');
insert into user_table values('abckndfnxad','Johir','johir123@gmail.com','Johir');

insert into day_schedule values('19/03/23',12344,'Sunday','Saeed','3:00PM','abckndfnxa');
insert into day_schedule values('20/03/23',12344,'Sunday','Saeed','3:00PM','abckndfnxa');

insert into time_schedule values(128983,219389843,'5:00PM','Lab report likh','3:15PM',0,'abckndfnxa','19/03/23');
insert into time_schedule values(128983,2119389843,'5:00PM','Lab report likh','4:15PM',0,'abckndfnxa','20/03/23');

insert into notification values(219389843,'abckndfnxa','Write Lab Report','3:15PM',0);
insert into notification values(2119389843,'abckndfnxa','Write Lab Report','4:15PM',0);


prompt 'Setting pagesize and linesize to 200';
set pagesize 200;
set linesize 200;


prompt select * from user_table;
select * from user_table;

prompt select * from day_schedule;
select * from day_schedule;

prompt select * from time_schedule;
select * from time_schedule;

prompt select * from notification;
select * from notification;

