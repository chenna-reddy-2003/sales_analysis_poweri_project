use db2003
create table employee(empid_id int,emp_name varchar(10),emp_age int,emp_salary money,emp_hiredate date)
select * from employee
insert into employee values(100,'chenna','20',20000,'2020-02-16')
insert into employee values(200,'ramesh','21',30000,'2026-06-17')
insert into employee values(300,'sai','19',40000,'2019-05-20')
insert into employee values(400,'hari','23',50000,'2021-09-12')
insert into employee values(500,'raju','22',60000,'2018-04-15')
select * from employee
select * from employee where empid_id='200'
select * from employee where emp_name='sai'
select * from employee where emp_age='19'
select * from employee where emp_salary='20000'
select * from employee where emp_hiredate='2019-05-20'
select * from employee where emp_age>21
select * from employee where emp_salary>20000

select * from employee where emp_salary between  10000 and 30000
select * from employee where emp_age between 20 and 23
select * from employee where emp_hiredate between '2019-05-20' and '2018-04-15'
select * from employee where empid_id between 200 and 4000
select * from employee where emp_salary<20000 and emp_salary>30000
select * from employee where emp_salary<20000 and emp_name='chenna'
select * from employee where emp_age>20 and emp_age<22
select * from employee where emp_hiredate>'2019-05-20' and emp_hiredate<'2018-04-15'

select * from employee where empid_id in(100,200,300)
select * from employee where emp_name in('chenna','sai','hari')
select * from employee where emp_age in(20,19,22)
select * from employee where emp_salary in(20000,30000,50000)
select * from employee where emp_hiredate in('2019-05-20','2018-04-15')
 
select * from employee where emp_name like('%_a')
select * from employee where empid_id like('_0%')
select * from employee where emp_name like('sa_%')
select * from employee where emp_age like('2_%')
select * from employee where emp_salary like('____%')
select * from employee where emp_hiredate like('%____-05-20')


select * from employee where not empid_id= 200
select * from employee where not empid_id in(300,100)
select * from employee where not emp_salary>20000 and emp_salary<40000
select * from employee where not emp_salary between 10000 and 30000
select * from employee where not emp_name='chenna' and emp_name='hari'
select * from employee where not emp_age=20
select * from employee where not emp_hiredate='2019-05-20'

select * from employee where empid_id=100 or emp_name='chenna'
select * from employee where emp_name='hari' or emp_salary='20000'
select * from employee where emp_age=20 or emp_age=21
select * from employee where emp_hiredate='2019-05-20' or emp_salary=30000

create table person(empid int,ename varchar(10),salary money,age int)
select * from person
insert into person values(10,null,10000,20)
insert into person values(null,null,null,null)
insert into person values(null,'chenna',20000,null)
insert into person values(300,'hari',null,21)
select * from person
select * from person where empid is null
select * from person where empid is not null
select * from person where ename is null
select * from person where salary is null
select * from person where salary is not null
select * from person where age is null
select * from person where age is not null

update employee set emp_name=replace(emp_name,'raju','chinna')
select * from employee
update employee set empid_id=100 where emp_name in('chenna','chennae')
select * from employee

alter table person
add bonus int
select * from person
update person set bonus='500' where empid=10
select * from person
update person set bonus='1000' where empid=300
select * from person

alter table person
drop column hiredate
select * from person

delete from person where empid=10
select * from person
delete from person
select * from person
drop table person
select * from person

create table person (empid int,ename varchar(10))
select * from person
insert into person values(10,'chenna')
insert into person values(20,'sai')
select * from person
truncate table person
select * from person


create table person1(empid int identity(100,1),ename varchar(10))

insert into person values(10,'chenna')
insert into person values(20,'sai')

select * from person1
insert into person1(ename) values('chenna')
select * from person1
insert into person1(ename) values('hari')
select * from person1
truncate table person1
select * from person1
insert into person1(ename) values('sai')
select * from person1

create table sai1(empid int identity(100,1),ename varchar(10))
select * from sai1
insert into sai1(empid,ename) values(100,'k')
select * from sai1
set identity_insert sai1 on
insert into sai1(empid,ename) values(100,'k')
select * from sai1
truncate table sai1
select * from sai1
insert into sai1 (empid,ename) values(120,'k')
select * from sai1

select getdate()
select datepart(yy,getdate())
select datepart(mm,getdate())
select datepart(ss,getdate())
select datepart(dd,getdate())
select datepart(dw,getdate())
select datepart(hh,getdate())

select * from employee where datepart(yy,emp_hiredate) in (2020,2026,2019)
select * from employee where datepart(yy,emp_hiredate)%4=0
select * from employee where datepart(yy,emp_hiredate)=4 and datepart(yy,emp_hiredate)=2026
select * from employee where datepart(yy,emp_hiredate)=2020
select * from employee where datepart(yy,emp_hiredate) in (2020-02-16)

select emp_name +'joined on '+ datename(dw,emp_hiredate) from employee
select datename(dw,'1947-05-15') from employee
select empid_id,emp_salary, +'joined on '+ datename(dw,emp_hiredate) from employee

select dateadd(yy,2,getdate())
select dateadd(mm,3,getdate())
select dateadd(ss,20,getdate())
select dateadd(hh,30,getdate())
select dateadd(dw,4,getdate())

select emp_name,emp_hiredate,dateadd(yy,40,emp_hiredate)as dor from employee
select emp_name,emp_age,emp_salary,dateadd(mm,20,emp_hiredate) as dor from employee

select emp_hiredate,datediff(yy,emp_hiredate,getdate()) as year from employee
select emp_name,empid_id,datediff(yy,emp_hiredate,getdate()) as month from employee

select upper(emp_name) from employee
select empid_id,lower(emp_name) as emp_salary,emp_name from employee
select lower(emp_name) from employee
update employee set emp_name=lower(emp_name) 
select * from employee
select len(emp_name) from employee
select * from employee where len(emp_name)=3
select right(emp_name,4) from employee
select left(emp_name,3) from employee
select left(empid_id,2)+left(emp_name,3) +'tcs@gmailid.com' from employee 
select * from employee where left(emp_name,2)=a

select charindex('@','chennareddy@')
select REPLICATE('@','3')
select replace('welocmoe','elo','abc')
select TRANSLATE('welocme','loc','abc')
select stuff('welcome',4,5,'go')

select square(2)
select power(2,3)
select abs(-1)
select abs(100)
select round(38.456,1)
select ceiling(10.1)
select FLOOR(10.1)
select sign(1)

select isnull(100,null)
select isnull(200,100)
select cast(10.1 as int)
select convert( int, 10.1)
select empid,ename,salary,comm+ comm as total from ramu
select empid,ename,salary+isnull(comm,0) as total from ramu
select salary,comm,isnull(cast(salary as varchar),'an') as comm from ramu

select empid_id,emp_salary,emp_hiredate,rank()over(order by emp_salary desc) as rank from employee
select empid_id,emp_name,emp_salary,dense_rank()over(order by emp_salary,empid_id desc) as dense_rank from employee
select empid_id,emp_name,row_number()over(order by empid_id desc) as row_number from employee
SELECT emp_name,emp_salary,LAG(emp_salary) OVER (ORDER BY emp_salary) AS previous_emp_salary FROM Employee
select emp_name,emp_salary,lead(emp_salary)over(order by emp_salary) as next_emp_salary from employee
select ename +'earns'+ cast (salary as varchar) from ramu

select max(emp_salary) as secondhighestslary from employee where emp_salary<(select max(emp_salary) from employee)
select max(emp_salary) from employee 
select min(emp_salary) from employee
select max(emp_hiredate) from employee
select min(emp_hiredate) from employee
select sum(emp_salary) from employee
select round(sum(emp_salary),3,0) from employee
select convert (varchar,round(sum(emp_salary),-3,0)from employee
select avg(emp_salary) from employee
select cast(avg(emp_salary) as int) from employee
select count(emp_name) from employee
select count(*) from employee
select distinct emp_name from employee

create table employees(empid int,ename varchar(10),salary money,job varchar(10))
select * from employees
insert into employees values(100,'kohial','20000','hr'
insert into employees values(200,'rohit','30000','cricket')
insert into employees values(300,'dhoni','30000','cricket')
insert into employees values(400,'kohial','20000','hr')
insert into employees values(500,'rohit','20000','hr')
select * from employees
select job,sum(salary) as total from employees
group by job
select job,sum(salary) as toatl from employees
group by job
order by job asc

select job,count(*) as employeescount from employees
group by job
having count(*)>1
order by job desc

select job,avg(salary) as avgsalary from employees
group by job

select empid,max(salary) as hihestsalary from employees
group by empid
order by max(salary) desc

select job,sum(salary) as total from employees
group by rollup( job)


create table emp11(empid int,ename varchar(10) not null)
select * from emp11
insert into emp11 values(100,'chenna')
select * from emp11
insert into emp11 values(200,null)
select * from emp11

create table emp12(empid int,ename varchar(10) unique)
select * from emp12
insert into emp12 values(100,'chenna')
select * from emp12
insert into emp12 values(100,'ramesh')
select * from emp12
insert into emp12 values(200,'chenna')

create table emp13(empid int,ename varchar(10) primary key)
select * from emp13
insert into emp13 values(100,'chenna')
select * from emp13
insert into emp13 values(200,'chenna')
select * from emp13

create table emp14(empid int,ename varchar(10),age int,check(age>19)
select * from emp14
insert into emp14 values(100,'chenna','20')
select * from emp14
insert into emp14 values(100,'chenna','19')

create table emp15(empid int,ename varchar(10),city varchar(10) default'vij')
select * from emp15
insert into

create table unions(empid int,ename varchar(10),salary money)
select * from unions
insert into unions values(100,'dhoni','1000'),(200,'sharma','20000'),(300,'gill','50000')
select * from unions

create table unions1(empid int,ename varchar(10),salary money)
select * from unions1
insert into unions1 values(100,'dhoni','30000'),(400,'kohial','1000'),(500,'kishan','40000')
select * from unions1

select empid,ename,salary from unions
union
select empid,ename,salary from unions1

select empid,ename,salary from unions
union all
select empid,ename,salary from unions1

select empid,ename,salary from unions
intersect
select empid,ename,salary from unions1

select empid,ename,salary from unions
except
select empid,ename,salary from unions1


select max(emp_salary) as secondhighestemp_salary from employee where emp_salary<(select max(emp_salary) from employee)
select * from employee where emp_hiredate>(select emp_hiredate from employee where emp_name='chenna')
select * from employee where emp_name=(select emp_name from employee where emp_age='21')

update employees set salary='40000'(select salary from employees where empid='100')
select * from employees
update employees set ename='chenna'(select ename from employees where empid='200')
select * from employees

select * from employee where emp_salary in(select emp_salary from employee where emp_salary in(20000,50000))
select * from employee where emp_salary>any(select emp_salary from employee where empid_id='100')
select * from employee where emp_name<any(select emp_name from employee where emp_name='chenna')

with highestemp_salary as(select emp_salary from employee where emp_salary>50000)update employee set emp_salary='100'
select 






















