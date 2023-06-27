-- SET MARKUP XML ON
-- SET HEADING OFF
-- SET PAGESIZE 0
-- SET FEEDBACK OFF
-- SPOOL C:\Users\User\Documents\Codes\SQL\ScheduleManagement\files\output_csv.csv
-- SELECT * FROM user_table;
-- SPOOL OFF

spool 'C:\Users\User\Documents\Codes\SQL\ScheduleManagement\files\output_csv.txt'
select * from user_table;
spool off;