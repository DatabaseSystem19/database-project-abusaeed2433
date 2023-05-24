drop table notification;
drop table time_schedule;
drop table day_schedule;
drop table user_table;

-- on server
create table user_table(
	user_id varchar(50) primary key,
	name varchar(30),
	email varchar(30) not null,
	password varchar(20) not null
);

-- on user side
create table day_schedule(
	event_date varchar(10) primary key,
	time_in_day integer not null,
	day varchar(10),
	uploader varchar(30),
	upload_time varchar(20),
	user_id varchar(50),
	foreign key(user_id) references user_table(user_id)
);

-- on user side
create table time_schedule(
	ts_midnight integer,
	timestamp_utc integer,
	message_time varchar(20),
	message varchar(50), --change to 200 later
	upload_time varchar(20),
	is_completed integer,
	event_date varchar(10),
	foreign key(event_date) references day_schedule(event_date),
	primary key(timestamp_utc)
);

-- on server
create table notification(
	timestamp_utc integer,
	user_id varchar(50),
	message_new varchar(50), --change to 200 later
	message_time varchar(20),
	is_completed integer,
	foreign key(user_id) references user_table(user_id),
	foreign key(timestamp_utc) references time_schedule(timestamp_utc),
	primary key(user_id,timestamp_utc)
);
