

-- 1907057

drop table performance;
drop table person;

-------------------------------- Q1 ---------------------------------------
create table person(
    roll integer primary key,
    name varchar(50),
    hall varchar(50),
    phone varchar(20),
-------------------------------- Q2 ---------------------------------------
    dob Date not null,
    bg varchar(10)
);

create table performance(
-------------------------------- Q2 ---------------------------------------
    roll integer,
-------------------------------- Q3 --------------------------------
    year integer check(year >=1 and year<=4),
-------------------------------- Q3 --------------------------------
    semester integer check(semester in(1,2)), 
    grade_point float,
    l_grade varchar(20),
    primary key(roll,year,semester),
    foreign key(roll) references person(roll)
);


-------------------------------- Q4 --------------------------------
insert into person values(1907057,'Saeed','Fazlul','0154120', date '2001-1-1','O+');
insert into person values(1907058,'Anik','Fazlul','01432120', date '2005-7-21','B-');
insert into person values(1907059,'Maruf','Rashid','0112120', date '2001-3-26','A+');

insert into performance values(1907057,3,1,3.76,'-');
insert into performance values(1907058,2,2,3.66,'-');
insert into performance values(1907059,3,1,3.78,'-');


------------------------------- Q5 -----------------------------------
set serveroutput on;
create or replace trigger grade_adder
after insert on performance
referencing old as o new as n
for each row
begin
    if :o.grade_point >= 3.75 then
        update performance set l_grade = 'A+' where roll = :n.roll and year = :n.year and semester = :n.semester;
    elsif :o.grade_point >= 3.50 then
        update performance set l_grade = 'A' where roll = :n.roll and year = :n.year and semester = :n.semester;
    elsif :o.grade_point >= 3.25 then
        update performance set l_grade = 'B+' where roll = :n.roll and year = :n.year and semester = :n.semester;
    elsif :o.grade_point >= 3.00 then
        update performance set l_grade = 'B' where roll = :n.roll and year = :n.year and semester = :n.semester;
    elsif :o.grade_point >= 2.75 then
        update performance set l_grade = 'C+' where roll = :n.roll and year = :n.year and semester = :n.semester;
    elsif :o.grade_point >= 2.50 then
        update performance set l_grade = 'C' where roll = :n.roll and year = :n.year and semester = :n.semester;
    elsif :o.grade_point >= 2.00 then
        update performance set l_grade = 'D' where roll = :n.roll and year = :n.year and semester = :n.semester;
    elsif :o.grade_point < 2.00 then
        update performance set l_grade = 'F' where roll = :n.roll and year = :n.year and semester = :n.semester;    
end;
/


------------------------------- Q6 -------------------------------------
set serveroutput on;
create or replace procedure countStudent() as
    cursor c is select roll from person;
    n_roll integer;
    total integer;
    gp float;
begin
    open c;
    total := 0;

    fetch c into n_roll;
    while c%found loop
        gp := select avg(grade_point) from performance where roll = n_roll;
        if gp >= 3.50 and gp<=3.60 then
            total := total+1;
        end if
        fetch c into n_roll;
    end loop;
    
    -- total contains student whose cgpa is between 3.5 to 3.6
end;
/

