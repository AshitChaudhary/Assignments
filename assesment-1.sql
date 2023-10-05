
create database employees; 

create table worker
( worker_id int, 
first_name varchar(50),
last_name varchar(50),
salary int,
joining_date datetime,
department varchar(50)
);

insert into worker ( worker_id ,first_name,last_name,salary,joining_date,department) 
values
(1 , 'Monika'   ,   'Arora'   , 100000 , '2014-2-20 09:00:00' , 'HR'),
(2 , 'Niharika' ,   'Verma'   ,  80000 , '2014-6-11 09:00:00' , 'Admin'),
(3 , 'Vishal'   ,   'Singhal' , 300000 , '2014-2-20 09:00:00' , 'HR'),
(4 , 'Amitabh'  ,   'Singh'   , 500000 , '2014-2-20 09:00:00' , 'Admin'),
(5 , 'Vivek'    ,   'Bhati'   , 500000 , '2014-6-11 09:00:00' , 'Admin'),
(6 , 'Vipul'    ,   'Bhati'   , 200000 , '2014-6-11 09:00:00' , 'Account'),
(7 , 'Satish'   ,   'Kumar'   ,  75000 , '2014-1-20 09:00:00' , 'Account'),
(8 , 'Geetika'  ,   'Chauhan' ,  90000 , '2014-4-11 09:00:00' , 'Admin');

 
/* 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
Ascending and DEPARTMENT Descending*/

select*from worker 
order by  first_name  asc, department desc; 


/*2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
from the Worker table.*/

select* from worker 
where first_name in ('satish', 'vipul');

/*3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
contains six alphabets.*/

select * from worker 
where first_name like '_____h';

#4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 

select* from worker 
where salary between 0 and 1;

#5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

select first_name,department,joining_date
from worker
group by first_name, department,joining_date
having count(department and joining_date) < 2
order by department;

#6. Write an SQL query to show the top 6 records of a table. 

select*from worker limit 6;

#7. Write an SQL query to fetch the departments that have less than five people in them. 

select count(department) "PEOPLE",department from worker
group by department
having department < 5;

#8. Write an SQL query to show all departments along with the number of people in there. 

select count(department) "People",department from worker
group by department;

/*9. Write an SQL query to print the name of employees having the highest salary in each 
department.*/ 

 select max(salary), department
 from worker
 group by department;
 
Page-2

#1 To display all the records form STUDENT table. 

SELECT * FROM student ; 

#2. To display any name and date of birth from the table STUDENT. 

SELECT StdName, DOB 
FROM student ; 

#3. To display all students record where percentage is greater of equal to 80 FROM student table. 

SELECT * FROM student 
WHERE percentage >= 80; 

#4. To display student name, stream and percentage where percentage of student is more than 80 

SELECT StdName, Stream, Percentage 
WHERE percentage > 80;
 
#5. To display all records of science students whose percentage is more than 75 form student table. 

SELECT * from student 
WHERE stream = ‘Science’ 
AND percentage > 75;