-- get day from select query 
-- Get day_name, day_date from get_calendar procedure.
DROP PROCEDURE IF EXISTS get_calendar;
DELIMITER //
CREATE PROCEDURE get_calendar(IN daydate DATE)
BEGIN
    DECLARE currentdate DATE;
	DECLARE done INT DEFAULT 0;

    declare CUR1 CURSOR FOR (select * from 
	(select adddate('1999-12-12',t4.i*10000 + t3.i*1000 + t2.i*100 + t1.i*10 + t0.i) selected_date from

	(select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union 
	select 7 union select 8 union select 9) t0,
	(select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union 
	select 7 union select 8 union select 9) t1,
	(select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union 
	select 7 union select 8 union select 9) t2,
	(select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union 
	select 7 union select 8 union select 9) t3,
	(select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union 
	select 7 union select 8 union select 9) t4 ) v 
	where selected_date between daydate and last_day( curdate()));
	-- select dayname(currentdate) from dual
	-- declare CUR2 CURSOR FOR (select dayname(currentdate) from dual);
	 DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

	OPEN CUR1;
		-- open CUR2;
		read_loop: LOOP
		FETCH CUR1 INTO currentdate;
     --   FETCH  CUR2 INTO currentday;
		IF done THEN
        LEAVE read_loop;
		END IF;
		-- set currentday  =(select dayname(sysdate()) from dual);
        INSERT INTO todayattendance(attendance_id,day_name,day_date,emp_id,leave_type_id,manager_id)
    VALUES ( null,dayname(currentdate),currentdate,1,1,1);

	END LOOP;
		CLOSE CUR1;
     -- CLOSE CUR2;
END;
//
DELIMITER ;

SET @DAYADTE='2019-06-01';
call get_calendar(@DAYADTE);
SELECT @DAYADTE;

select * from todayattendance;
commit;
select e.emp_id as empId, emp_firstname as empFirstName,
emp_lastname as empLastName,email,password,e.manager_id,
team_id,r.role_name as roleName,desgn_id as desgnId,t.check_in as checkIn,t.total_hours as totalHours
 from todayattendance t,employees e left join role r on e.role_id=r.role_id
where email='sunil@t';
