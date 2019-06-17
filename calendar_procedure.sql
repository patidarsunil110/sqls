

DROP TABLE IF EXISTS time_dimension;
CREATE TABLE time_dimension (
        id                      INTEGER PRIMARY KEY,  
        db_date                 DATE NOT NULL,
        day                     INTEGER NOT NULL, 
        day_name                VARCHAR(9) NOT NULL, 
        month_name              VARCHAR(9) NOT NULL, 
        holiday_flag            CHAR(1) DEFAULT 'f' CHECK (holiday_flag in ('t', 'f')),
        weekend_flag            CHAR(1) DEFAULT 'f' CHECK (weekday_flag in ('t', 'f')),
        event                   VARCHAR(50),
        UNIQUE td_ymd_idx (day),
        UNIQUE td_dbdate_idx (db_date)

);


select min(db_date) ,t.* from time_dimension t group by db_date;
DROP PROCEDURE IF EXISTS fill_date_dimension;
DELIMITER //
CREATE PROCEDURE fill_date_dimension(IN startdate DATE,IN stopdate DATE)
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
END
//
DELIMITER ;

TRUNCATE TABLE time_dimension;

commit;
CALL fill_date_dimension('2019-01-01',last_day(curdate()));

select * from time_dimension;