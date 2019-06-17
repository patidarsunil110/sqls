-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: intranet
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'intranet'
--
/*!50003 DROP PROCEDURE IF EXISTS `attendance_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `attendance_sp`(in EMPID  INT(20),
in attenid bigint(5))
BEGIN
-- and day_date=curdate()
select @checkout:=check_out,@total:=total_hours from todayattendance where emp_id=empid 
and attendance_id =attenid;
if @checkout!='00:00:00'and @total='00:00:00' then
update todayattendance set total_hours=(timediff(check_out,check_in))
where emp_id=empid and attendance_id =attenid ;
commit;
end if;

-- include and day_date=curdate();
/*select @total from todayattendance 
where emp_id=empid and attendance_id =attenid and day_date=curdate();
if ((@checkout!='00:00:00') and (@total<'08:59:00'))then
update todayattendance set status='Not complete 9 hours'
where emp_id=empid and attendance_id =attenid and day_date=curdate();
commit;
elseif @checkout!='00:00:00' and @total>='09:00:00'then
update todayattendance set status='complete 9 hours'
where emp_id=empid and attendance_id =attenid and day_date=curdate();
commit;
end if;*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `attendance_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `attendance_status`(in EMPID  INT(20),
in attenid bigint(5))
BEGIN

-- include later:- day_date=curdate()

-- insert into leavebalance table from todayattendance table
--

select @checkin:= check_in,@checkout:=check_out,@total:=total_hours from todayattendance where 
emp_id=empid 
and attendance_id =attenid;

select @doj:=dateofjoining ,@month_date:=month_date, @month_count:=month_count ,
@loss_day:=loss_day 
from employees e,
leavebalance lb where e.emp_id=empid;
if @doj=curdate() and @month_count=0 then
insert into leavebalance (emp_id, loss_day,month_count,month_date)values 
(@empid,@loss_day,@month_count,DATE_ADD(@dateofjoining , INTERVAL 1 MONTH)); 

elseif @doj!=curdate() and @month_count=0 then
insert into leavebalance (emp_id, loss_day,month_count,month_date)values 
(@empid,@loss_day,@month_count,DATE_ADD(max(month_date) , INTERVAL 1 MONTH)); 

end if;
-- select DATE_ADD(e.dateofjoining , INTERVAL 1 MONTH)from employees e,
-- leavebalance lb where e.emp_id=lb.emp_id; 

if @checkout!='00:00:00'and @total<'08:59:00' then
update todayattendance set status='Not complete 9 hours'
where emp_id=empid and attendance_id =attenid ;
commit;
elseif @checkout!='00:00:00'and @total>='09:00:00' then
update todayattendance set status='complete 9 hours'
where emp_id=empid and attendance_id =attenid ;
commit;
end if;
if  @checkin='00:00:00' and @checkout='00:00:00' then
update todayattendance set status='Absent' ,total_hours='00:00:00',loss_day=1
where emp_id=empid and attendance_id =attenid ;


commit;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fill_date_dimension` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_date_dimension`(IN startdate DATE,IN stopdate DATE)
BEGIN
    DECLARE currentdate DATE;
    SET currentdate = startdate;
    WHILE currentdate < stopdate DO
        INSERT INTO time_dimension VALUES (
                        DAY(currentdate),
						dayname(currentdate),
                        DAY(currentdate),
                        DATE_FORMAT(currentdate,'%W'),
                        DATE_FORMAT(currentdate,'%M'),
                        'f',
                        CASE DAYOFWEEK(currentdate) WHEN 1 THEN 't' WHEN 6 or 7 then 't' ELSE 'f' END,
                        NULL);
        SET currentdate = ADDDATE(currentdate,INTERVAL 1 DAY);
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_calendar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_calendar`(IN daydate DATE)
BEGIN
    DECLARE currentdate DATE;
   -- DECLARE currentday varchar(20);
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
        INSERT INTO todayattendance(attendance_id,day_date,emp_id,leave_type_id,manager_id)
    VALUES ( null,currentdate,1,1,1);

	END LOOP;
		CLOSE CUR1;
     -- CLOSE CUR2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 10:18:54
