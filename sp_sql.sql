

select * from leaves;  -- not yet used this table in our project and not required.
select * from applyleave; -- 
select * from employees;  -- date of joining
select floor(datediff(curdate(),dateofjoining)/30) from employees where emp_id=1; --  abs(),51 day/ round(1.7000)=2
select * from leavebalance;  -- create column as leavetype attribute names.
SELECT DATE_ADD(curdate(), INTERVAL 1 MONTH) from dual;
-- 1. Holidays :- saturday and sunday and national holiday.
-- 2. Earned Leave :- 1.5/per month
-- 3. Sick Leave :- 1/per month
-- 4. Causual Leave :- 1/per month
-- 5. Maternity Leave :- 6 month/ 2 times
-- 6 .add comp-off functionality in todayattendance table.
-- also mapped with applyleave table.
-- datediff function could be used for implements leavebalance scenerio. 

select * from applyleave;
select * from leavebalance;
select * from todayattendance;
select DATE_ADD(e.dateofjoining , INTERVAL 1 MONTH)from employees e,leavebalance lb where e.emp_id=lb.emp_id; 
select * from leavebalance; -- to create sp or cursor, get data from attendance table.

select * from employees;
select * from leavetype;
select * from todayattendance; -- to set sp or cursor when month end data automatically data send to leavebalance. 

select * from applyleave;
call attendance_sp(1,16);
call attendance_status(1,16);


-------------------- copy from  github

CREATE PROCEDURE filldates(dateStart DATE, dateEnd DATE) 
BEGIN
  WHILE dateStart <= dateEnd DO
    INSERT INTO todayattendance (day_name,day_date,emp_id) VALUES ('DATE: Auto CURDATE()', CURDATE(),1 );
    SET dateStart = date_add(dateStart, INTERVAL 1 DAY);
  END WHILE;
END;

CALL filldate('2019-05-05',curdate());


INSERT INTO todayattendance (day_name,day_date,emp_id) VALUES (dayname(day_name),sysdate(),1);


desc todayattendance;