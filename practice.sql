create table student(epid int,ename varchar(10),age int,salary money,hiredate date)
select * from student
insert into student values(100,'chenna','20',10000,'2026-1-1'),(200,'hari','30',20000,'2020-4-20'),(300,'raju','23',30000,'2024-9-24'),(400,'viswa','24',40000,'2010-5-19'),(500,'tarun','19',50000,'2019-6-23')
select * from student
select * from student where epid='100'
select * from student where ename='hari'
select * from student where age='30'
select * from student where salary='10000'
select * from student where hiredate='2026-1-1'

select * from student where salary between 10000 and 40000
select * from student where age between 20 and 30
select * from student where epid between 200 and 400
select * from student where hiredate between '2026-1-1' and '2019-6-23'

select * from student where salary>10000 and salary<50000
select * from student where age>20 and age<30
select * from student where epid>100 and age<400
select * from student where hiredate>'2026-1-1' and hiredate<'2019-6-23'

select * from student where epid in(100,200,300)
select * from student where ename in('chenna','hari','viswa')
select * from student where age in(20,23,30)
select * from student where salary in(20000,30000,10000)
select * from student where hiredate in('2026-1-1','2019-6-23'

select * from student where ename like '%a'
select * from student where epid like '1__%'
select * from student where ename like '__e%'
select * from student where age like '%__'
select * from student where salary like '%___'
select * from student where hiredate like '2026__%'
select * from student where hiredate like '%____6'
select * from student where ename like '(a-z)%'

select * from student where not epid='100'
select * from student where not epid in(100,200)
select * from student where not salary='20000'
select * from student where not age in(20,30,24)
select * from student where not age>20 and age<30
select * from student where not salary between 10000 and 20000
select * from student where not salary>10000 and salary<50000
select * from student where not ename like '%a'


select * from student where age=20 or age=30
select * from student where salary=10000 or salary=30000
select * from student where epid=200 or epid=400
select * from student where ename='chenna' or ename='hari'
select * from student where hiredate='2026-1-1' or hiredate='2019-6-23'

create table student1(empid int,ename varchar(10),salary money,age int)
select * from student1
insert into student1 values(100,null,null,'20')
insert into student1 values(null,'chenna','10000',null)
insert into student1 values(200,'hari',null,21)
insert into student1 values(null,null,null,null)
select * from student1
select * from student1 where empid is null
select * from student1 where ename is null
select * from student1 where salary is null
select * from student1 where age is null

select * from student1 where empid is not null
select * from student1 where ename is not null
select * from student1 where salary is not null
select * from student1 where age is not null

alter table student
add marks int
update student set marks='100' where epid='100'
select * from student
update student set marks='200' where epid in(300,400)
select * from student

alter table student
drop column marks
select * from student

update student set ename=replace(ename,'tarun','sai')
select * from student
update student set age=replace(age,'30','21')
select * from student

create table emp(empid int,ename varchar(10),salary money)
select * from emp
insert into emp values(1,'a','1000'),(2,'b','2000'),(3,'c','3000'),(4,'d','4000')
select * from emp

delete from emp where empid='1'
select * from emp
delete from emp where ename='b'
select * from emp
delete from emp
select * from emp

drop table emp
select * from emp

create table emp1(empid int,ename varchar(10),salary money)
select * from emp1
insert into emp1 values(1,'a','1000'),(2,'b','2000'),(3,'c','3000'),(4,'d','4000')
select * from emp1

truncate table emp1
select * from emp1

sp_rename'student','chenna'
select * from chenna
sp_rename'chenna','student'
select * from student


create table students(empid int IDENTITY(100,1),ename varchar(10))
select * from students
insert into students(ename)values('A')
select * from students
insert into students(ename)values('b')
insert into students(ename)values('c')
insert into students(ename)values('d')
select * from students

truncate table students
select * from students

insert into students(ename)values('f')
select * from students

create table students1(empid int IDENTITY(100,1),ename varchar(10))
select * from students1
insert into students1(ename)values('a')
select * from students1

insert into students1(empid,ename)values(120,'k')
set identity_insert students1 on
select * from students1
insert into students1(empid,ename) values(120,'k')
select * from students1

select getdate()
select datepart(yy,getdate())
select datepart(mm,getdate())
select datepart(ss,getdate())
select datepart(hh,getdate())
select datepart(dw,getdate())
select datepart(m,getdate())

select * from student where datepart(yy,hiredate) in(2020,2019,2010)
select * from student where datepart(yy,hiredate)%4=0
select * from student where datepart(yy,hiredate)=2020
select * from student where datepart(yy,hiredate)=2020 and datepart(dw,hiredate)=2
select * from student where datepart(yy,hiredate) in (2026-1-1)


select ename +'joined on '+ datename(dw,hiredate) from student
select datename(dw,'1947-8-15') from student
select ename,hiredate, +'joined on '+datename(dw,hiredate) from student
select age,salary,+'joined on '+datename(dw,hiredate) from student
select epid,ename,salary,age,salary, +'joined on '+ datename(dw,hiredate) from student

select dateadd(yy,2,getdate())
select dateadd(mm,4,getdate())
select dateadd(hh,45,getdate())
select dateadd(dw,39,getdate())
select dateadd(yy,-5,getdate())

select ename,hiredate,dateadd(yy,40,hiredate) as dor from student
select epid,ename,dateadd(mm,40,hiredate) as dor from student
select hiredate,salary,dateadd(yy,20,hiredate) as dor from student

select ename,hiredate,DATEDIFF(yy,hiredate,getdate()) as year from student
select ename,salary,hiredate,datediff(mm,hiredate,getdate()) as month from student
select epid,ename,salary,hiredate,age,datediff(yy,hiredate,getdate()) as month from student
select epid,ename,salary,hiredate,age,datediff(yy,hiredate,getdate()) as year from student

select upper(ename) from student
select epid,lower(ename) as salary,ename from student
select lower(ename) from student
select epid,upper(ename) as ename,salary from student

select len(ename) from student
select * from student where len(ename)=4

select left(ename,'4') from student
select right(ename,'5') from student

select left(ename,2)+left(epid,3) +'tcs@gmailid.com' from student
select * from student where left(ename,2)='a'
select * from student where left(ename,2)in right(empid,3)    


select charindex('@','chennareddy@')
select REPLICATE('@',5)
select replace('hello','llo','abc')
select TRANSLATE('hello ','llo','abc')
select stuff('helloworld',4,5,'go')

select square(2)
select power(2,3)
select sign(100)
select abs(1)
select round(38.467,1)
select round(38.478,-1)
select floor(10.1)
select ceiling(10.9)


select isnull(100,null)
select isnull(100,200)
select cast(10.1 as int)
select convert(int,10.9)
select ename +'earns'+cast(salary as varchar) from student


select empid,ename,salary,comm+comm as total from ramu
select empid,ename,salary+isnull(comm,0)as total from ramu
select salary,comm,isnull(cast(salary as varchar),'an') as comm from ramu

select epid,salary,hiredate,rank()over(order by salary) as rank from student
select epid,salary,ename,hiredate,dense_rank()over(order by hiredate) as rank from student
select epid,age,salary,ename,hiredate,row_number()over(order by salary) as rank from student
select epid,age,salary,ename,hiredate,DENSE_RANK()over(partition by salary order by salary) as rank from student

select max(salary) from student
select min(salary) from student
select max(hiredate) from student
select sum(salary) from student
select round(sum(salary)-3,0) from student
select convert(varchar,round(sum(salary),-3),0) from student

select avg(salary) from student
select cast(avg(salary) as int) from student
select count(epid) from student
select count(age) from student
select count(*) from student


create table employes(deptno int,detname varchar(10),salary money,hiredate date)
select * from employes
insert into employes values(10,'hr','30000','2020-9-30'),(20,'sales','40000','2021-5-20'),(10,'hr','50000','2026-3-13'),(20,'software','40000','2027-5-14'),(30,'sales','10000','2019-5-16')
select * from employes
select deptno,count(*) as employescount from employes
group by deptno
having count(*)>=2

select detname,count(*) as employescount from employes
group by detname
having count(*)>=2

select detname,avg(salary) as avgsalary from employes
group by detname
having avg(salary)>=1
 
select deptno,sum(salary) as total from employes
group by deptno
having sum(salary)>=2

select deptno,sum(salary) as total from employes
group by cube(deptno)
order by isnull(deptno,99) desc

create table emp11(empid int,ename varchar(10) not null)
select * from emp11
insert into emp11 values('100','chenna')
select * from emp11
insert into emp11 values(200,null)
select * from emp11


create table emp12(empid int,ename varchar(10) unique)
select * from emp12
insert into emp12 values('100','chenna')
select * from emp12
insert into emp12 values('200','chenna')
select * from emp12

create table emp14(empid int,ename varchar(10) primary key)
select * from emp14
insert into emp14 values('100','chenna')
select * from emp14
insert into emp14 values('200','chenna')
select * from emp14

create table emp15(empid int,ename varchar(10),age int,check(age>18))
select * from emp15
insert into emp15 values('10','raju','19')
select * from emp15
insert into emp15 values('20','chenna','16')

create table emp16(empid int,ename varchar(10),city varchar(10) default 'vij')
insert into emp16(empid,ename) values('10','chenna')
select * from emp16
insert into emp16 values('20','raju','mumbai')
select * from emp16


create table employees1(empid int,ename varchar(10),esalary money)
select * from employees1
insert into employees1 values('10','chenna',20000),('20','raju',30000),('30','hari',40000),('40','viswa',50000)
select * from employees1

create table department1(did int,dname varchar(10),dsalary money)
select * from department1
insert into department1 values('10','tarun',60000),('20','vivak',70000),('30','sai',80000),('40','reddy',90000)
select * from department1

select  e.ename,d.dname from employees1 e right join department1 d on e.empid=d.did
select e.ename,d.dname from employees1 e cross join department1 d


select distinct salary from employes 
select distinct deptno,salary from employes
select top 3* from employees1
select top 4* from employees1
select ename from employees1
select ename,esalary from employees1
select ename from employees1 where ename='chenna'
select empid from employees1 where empid='10'


































