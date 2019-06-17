select e.emp_id as empId, emp_firstname as empFirstName,
emp_lastname as empLastName,email,password,e.manager_id,
team_id,r.role_name as roleName,desgn_id as desgnId,t.check_in as checkIn,t.total_hours as totalHours,
t.day_name as dayName, t.day_date as dayDate
 from employees e left join role r on e.role_id=r.role_id
left join todayattendance t on e.emp_id=t.emp_id
where email='sunil@t';

select * from todayattendance;

 select e.emp_id as empId, e.emp_firstname as empFirstName,
					emp_lastname as empLastName,email,password,e.manager_id, 
                    team_id,r.role_name as roleName,desgn_id as desgnId,t.check_in as checkIn,
					t.day_name as dayName, t.day_date as dayDate,
					(select t.total_hours as totalHours
                    from todayattendance t where t.day_date=ADDDATE('2019-04-04',INTERVAL -1 DAY)) as totalHours
                    from employees e left join role r on e.role_id=r.role_id
                    left join todayattendance t on e.emp_id=t.emp_id 
                    where e.email='sunil@t' and t.day_date ='2019-04-04';
      
      
      
      select t.total_hours as totalHours
       from todayattendance t where t.day_date=ADDDATE('2019-04-04',INTERVAL -1 DAY);
-- 11:00:00       
        select ADDDATE('2019-04-04',INTERVAL -1 DAY) from dual;
        
        
        -- when user added makesure it also added todayattendance and department, manager and other tables, which are related
        -- to employees table
        -- all DML operations also follows this above algorithm.
        -- employees, manager, department, todayattendance,leavebalance, applyleave,team,
        -- manager( if employees is also manager)
        
        select * from designation;
		select * from team;
        select * from manager;
        select * from location;
        
        insert into employees(emp_firstname,emp_lastname,mobile,email,password,department_id,manager_id,dateofjoining,role_id) values (?,?,?,?,?,?,?,?,?);
        
        
        
        
select @previousdate:=ADDDATE('2019-04-04',INTERVAL -1 DAY) from dual;
select e.emp_id as empId, emp_firstname as empFirstName,
					emp_lastname as empLastName,email,password,e.manager_id, 
					team_id,r.role_name as roleName,desgn_id as desgnId,t.check_in as checkIn,
					t.day_name as dayName, t.day_date as dayDate,
                    (select t.total_hours as totalHours
       from todayattendance t where t.day_date=ADDDATE('2019-04-04',INTERVAL -1 DAY)) as totalHours
					 from employees e left join role r on e.role_id=r.role_id
					left join todayattendance t on e.emp_id=t.emp_id 
		where e.email='sunil@t' and t.day_date ='2019-04-04';
       -- 11:00:00
       -- 10:02:00
       -- 08:58:00
		-- thusday
        -- 2019-04-04
        commit;
       select * from todayattendance;
       select dayname(sysdate()) from dual;
       delete from todayattendance where attendance_id not in  ('1','2','4','3','5','6','7','8','9','10','11','12','13','14','15','16');