------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
    set serveroutput on
    declare
        name user_table.name%type;
        uid user_table.user_id%type;
        email varchar(50);
    begin
        select user_id,name,email into uid,name,email from user_table where user_id = 'vH1E5iZ8o7O9MuEqW2BniUShRFq2';
        dbms_output.put_line('UID: ' || uid || ' Name: ' || name || ' Email: ' || email );
    end;
    /


------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
    set serveroutput on
    declare
        uid USER_TABLE.USER_ID%type := 'abcdef1234';
        email varchar(30) := 'abutest3456@gmail.com';
        name varchar(30) := 'A Saeed';
        password user_table.password%type := '123456';
    begin
        delete from user_table where user_id = 'abcdef1234';
        
        -- main line of code
        insert into user_table values(uid,email,name,password);

        select * into uid, name, email, password from user_table where user_id = 'abcdef1234';

        dbms_output.put_line(uid || ' ' || name || ' ' || email || ' ' || password);
    end;
    /

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
    set serveroutput on
    declare
        my_row user_table%rowtype;
    begin
        select * into my_row from user_table where user_id = 'abcdef1234';
        dbms_output.put_line(my_row.user_id || ' ' || my_row.email);
    end;
    /

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
    set serveroutput on
    declare
        cursor cur is select * from user_table;
        row user_table%rowtype;

    begin
        open cur;
        fetch cur into row;
        
        while cur % found loop
            dbms_output.put_line(row.user_id || ' ' || row.name);
            fetch cur into row;
        end loop;
        
        close cur;
    end;
    /

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

        set serveroutput on
        declare
            type NAME_ARR is VARRAY(5) of user_table.name%type;
            arr NAME_ARR := NAME_ARR(); 
            counter number;
            
        begin
            counter := 1;
            for i in 13..15
            loop
                arr.extend();
                arr(counter) := 'abu ' || i;
                counter := counter+1;
            end loop;
            
            dbms_output.put_line('------------------------------------------------');
            
            counter := 1;
            while (counter <= arr.count ) 
            loop
                dbms_output.put_line(arr(counter));
                counter := counter+1;
            end loop;
            
        end;

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
        set serveroutput on;

        declare
            TYPE ID_ARRAY is VARRAY(5) of USER_TABLE.USER_ID % type;
            
            uids ID_ARRAY := ID_ARRAY('vH1E5iZ8o7O9MuEqW2BniUShRFq2','c12E5iZ8o7O9MuEqW2BniUShRFq4','g16E5iZ8o7O9MuEqW2BniUShRFq8');
            
            uid USER_TABLE.USER_ID%type;
            name user_table.name%type;

        begin
            for i in 1..uids.count loop
                select user_id, name into uid, name from user_table where user_id = uids(i);
                dbms_output.put_line(uid || ' -> ' || name);
            end loop;
        end;
        /

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
        set serveroutput on;
        declare
            TYPE ID_ARRAY is VARRAY(5) of USER_TABLE.USER_ID % type;
            
            uids ID_ARRAY := ID_ARRAY('vH1E5iZ8o7O9MuEqW2BniUShRFq2','c12E5iZ8o7O9MuEqW2BniUShRFq4','g16E5iZ8o7O9MuEqW2BniUShRFq8');
            
            uid USER_TABLE.USER_ID%type;
            name user_table.name%type;

        begin
            for i in 1..uids.count loop
                select user_id, name into uid, name from user_table where user_id = uids(i);
                dbms_output.put_line(name);
                if name = 'Saeed' then
                    dbms_output.put_line('hello idiot');
                elsif name = 'Mary' then
                    dbms_output.put_line('Hello Mary');
                else
                    dbms_output.put_line('Who are you?');
                end if;
            end loop;
        end;
        /

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
            create or replace procedure printUserInfo(uid IN varchar, row OUT user_table%rowtype) as
                tmp varchar(30);
                begin
                    select * into row from user_table where user_table.user_id = uid;
                    
                    tmp := row.name;
                    dbms_output.put_line(tmp);
                end;
            /

------------------------------------------------------------------------------------------------------
            set serveroutput on

            declare
                val user_table%rowtype;
                uid varchar(30) := 'vH1E5iZ8o7O9MuEqW2BniUShRFq2';
            begin
                printUserInfo(uid,val);
                dbms_output.put_line(val.user_id || ' ' || val.name);
            end;
            /

------------------------------------------------------------------------------------------------------
            drop procedure printUserInfo;

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------            
            create or replace function getName(uid in varchar) return varchar as
                name varchar(30);
                begin
                    select user_table.name into name from user_table where user_table.user_id = uid;
                    
                    dbms_output.put_line('returning ' || name);
                    return name;
                end;
                /

------------------------------------------------------------------------------------------------------
            set serveroutput on

            declare
                val varchar(30);
                uid varchar(30) := 'vH1E5iZ8o7O9MuEqW2BniUShRFq2';
            begin
                val := getName(uid);
                dbms_output.put_line(val);
            end;
            /

------------------------------------------------------------------------------------------------------
            drop function getName;
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------