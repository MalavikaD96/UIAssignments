create table Worker(
worker_id int PRIMARY key,
first_name varchar2(20),
last_name varchar2(20),
salary number(7),
joining date,
department varchar(10)
);

create table Bonus(
worker_ref_id int,
bonus_date date,
bonus_amount number(7)
);

create table Title(
worker_ref_id int,
worker_title varchar2(20),
affected_from date);


insert into worker values(001,'Monika','Arora',100000,
TO_DATE('2014-02-20 09:00:00', 'YYYY/MM/DD HH:MI:SS'),'HR');

insert into worker values(002,'Niharika','Verma',80000,
TO_DATE('2014-06-11 09:00:00', 'YYYY/MM/DD HH:MI:SS'),'Admin');

insert into worker values(003,'Vishal','Singhal',300000,
TO_DATE('2014-02-20 09:00:00', 'YYYY/MM/DD HH:MI:SS'),'HR');

insert into worker values(004,'Amitabh','Singh',500000,
TO_DATE('2014-02-20  09:00:00', 'YYYY/MM/DD HH:MI:SS'),'Admin');

insert into worker values(005,'Vivek','Bhati',500000,
TO_DATE('2014-06-11 09:00:00', 'YYYY/MM/DD HH:MI:SS'),'Admin');

insert into worker values(006,'Vipul','Diwan',200000,
TO_DATE('2014-06-11 09:00:00', 'YYYY/MM/DD HH:MI:SS'),'Account');

insert into worker values(007,'Satish','Kumar',75000,
TO_DATE('2014-01-20 09:00:00', 'YYYY/MM/DD HH:MI:SS'),'Account');

insert into worker values(008,'Geetika','Chauhan',90000,
TO_DATE('2014-04-11 09:00:00', 'YYYY/MM/DD HH:MI:SS'),'Admin');


insert into bonus values(1,to_date('2016-02-20','YYYY/MM/DD HH:MI:SS'),5000);
insert into bonus values(2,to_date('2016-06-11 ','YYYY/MM/DD HH:MI:SS'),3000);
insert into bonus values(3,to_date('2016-02-20 ','YYYY/MM/DD HH:MI:SS'),4000);
insert into bonus values(1,to_date('2016-02-20','YYYY/MM/DD HH:MI:SS'),4500);
insert into bonus values(2,to_date('2016-06-11','YYYY/MM/DD HH:MI:SS'),3500);

insert into title values(1,'Manager',to_date('2016-02-20','YYYY/MM/DD'));
insert into title values(2,'Executive',to_date('2016-06-11 ','YYYY/MM/DD'));
insert into title values(8,'Executive',to_date('2016-06-11 ','YYYY/MM/DD'));
insert into title values(5,'Manager',to_date('2016-06-11 ','YYYY/MM/DD'));
insert into title values(4,'Asst. Manager',to_date('2016-06-11 ','YYYY/MM/DD'));
insert into title values(7,'Executive',to_date('2016-06-11 ','YYYY/MM/DD'));
insert into title values(6,'Lead',to_date('2016-06-11 ','YYYY/MM/DD'));
insert into title values(3,'Lead. Manager',to_date('2016-06-11 ','YYYY/MM/DD'));


1. select first_name AS Worker_name from worker;
2. select UPPER(first_name) from worker;
3. select UNIQUE(department) from worker;
4. select SUBSTR(first_name,1,3) from worker;
5. select INSTR(first_name,'A',1) from worker where first_name='Amitabh';
6. select RTRIM(first_name)from worker;  
7. select LTRIM(department)from worker;
8. select COUNT(UNIQUE(department)) from worker;
9. select REPLACE(first_name, 'A', 'X') from worker;
10. select first_name||' '||last_name AS complete_name from worker;

