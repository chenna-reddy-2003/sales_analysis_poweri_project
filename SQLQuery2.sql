create table person(empid int,ename varchar(10),job varchar(10),age int,hiredate date,salary money)
select * from person
insert into person values(100,'kohial','cricket',39,'2026-9-20',50000),(200,'rohit','batmens',42,'2025-4-12',90000),(300,'gill','capatain',35,'2023-2-16',30000),(400,'dhoni','wkt',45,'2022-8-10',100000)
select * from person 

select * from person where empid='100'
select * from person where ename='kohial'
select * from person where salary='50000'
select * from person where hiredate='2025-4-12'

select * from person where salary between 30000 and 90000
select * from person where age between 39 and 42
select * from person where empid between 100 and 500
select * from person where salary<50000 and salary>90000
select * from person where salary between 30000 and 90000
select * from person where hiredate between '2026-9-20' and '2023-2-16' 

select * from person where age<39 and age>42
select * from person where empid<100 and empid>400

select * from person where ename in('kohial','rohit')
select * from person where empid in(100,300)
select * from person where age in(39,45)
select * from person where hiredate in('2025-4-12','2023-2-16')

select * from person where age='45' or age='39'
select * from person where empid='200' or empid='400'
select * from person where empid='200' or ename='kohial'
select * from person where ename='rohit' or age='45'
select * from person where age>39 or age<45

select * from person where not empid='200'
select * from person where not empid in(100,200)
select * from person where not salary between 40000 and 90000
select * from person where not salary<50000 and ename='kohial'

select * from person where ename like 'k%'
select * from person where empid like '__%'
select * from person where salary like '%____'
select * from person where hiredate like'____%'
select * from person where ename like '[%a-z]'
select * from person where ename like '[a-d%]'

create table customers1(empid int,ename varchar(10),salary money,age int)
select * from customers1
insert into customers1 values(1,'a',null,null)
insert into customers1 values(2,null,null,null)
insert into customers1 values(3,'c','10000',20)
insert into customers1 values(null,'d','2000',27)
select * from customers1
select * from customers1 where salary is null 
select * from customers1 where salary is not null
select * from customers1 where empid is null
select * from customers1 where ename is null
select * from customers1 where age is null
select * from customers1 where ename is not null

update person set empid=replace(empid,'100','101')
select * from person

alter table person
add marks int
select * from person

update person set marks='24'where empid='101'
select * from person

alter table person
drop column marks
select * from person

create table customers2(empid int,ename varchar(10),salary money,age int)
select * from customers2
insert into customers2 values(1,'a',null,null)
insert into customers2 values(2,null,null,null)
insert into customers2 values(3,'c','10000',20)
insert into customers2 values(null,'d','2000',27)
select * from customers2

delete from customers2 where empid='1'
select * from customers2
delete from customers2 where empid='2'
select * from customers2

truncate table customers2
select * from customers2

drop table customers2
select * from customers2

sp_rename 'person','chenna';
select * from chenna

sp_rename 'chenna','person'
select * from person

create table persons2(empid int IDENTITY(100,1),ename varchar(10),salary money)
select * from persons2
insert into persons2(ename)values('chenna')
select * from persons2
insert into persons2(ename)values('b')
select * from persons2
truncate table persons2
select * from persons2
insert into persons2(ename)values('f')
select * from persons2

create table persons3(empid int IDENTITY(100,1),ename varchar(10),salary money)
select * from persons3
insert into persons3(empid,ename)values(100,'hari')
select * from persons3
set identity_insert persons3 on
insert into persons3(empid,ename)values(100,'hari')
select * from persons3
insert into persons3(empid,ename)values(130,'b')
select * from persons3

select * from INFORMATION_SCHEMA.tables

select getdate()
select datepart(yy,getdate())
select datepart(mm,getdate())
select datepart(ss,getdate())
select datepart(hh,getdate())
select datepart(dw,getdate())

select * from person where datepart(yy,hiredate) in(2026,2025,2023)
select * from person where datepart(mm,hiredate)%4=0
select * from person where datepart(dw,hiredate)=1 and datepart(yy,hiredate)=2026
select * from person where datepart(dw,hiredate)=1
select * from person where datepart(yy,hiredate)=2023
select * from person where datepart(yy,hiredate) in (2023-2-16)

select ename +'joined on'+ datename(dw,hiredate) from person
select datename(dw,1947-8-15) from person
select ename,salary, +'joined on'+ datename(dw,hiredate) from person
select ename,salary,hiredate,+'joined on'+datename(dw,hiredate) from person

select dateadd(yy,2,getdate())
select dateadd(yy,-3,getdate())
select dateadd(mm,4,getdate())
select dateadd(dw,7,getdate())
select dateadd(ss,6,getdate())

select ename,hiredate,salary,dateadd(yy,40,hiredate) as dor from person
select ename,dateadd(yy,20,hiredate) as dor from person
select empid,salary,dateadd(yy,50,hiredate) as dor from person

select ename,salary,hiredate,datediff(yy,hiredate,getdate()) as year from person
select ename,hiredate,datediff(mm,hiredate,getdate())as year from person
select hiredate,datediff(yy,hiredate,getdate())as month from person

select upper(ename) from person
select empid,upper(ename) as ename,salary from person
select lower(ename) from person
select empid,lower(ename) as ename,salary,hiredate from person
update person set ename=upper(ename)
select * from person
select len(hiredate) from person
select * from person where len(ename)=5
select left(ename,'3') from person
select right(salary,'2') from person
select left(empid,2)+left(ename,3) +'tcs @mailid.com' from person
select * from person where left(ename,3)='k'
update person set mailid=left(empid,2)+left(ename,3) +'tcs @mailid.com' 
select left(empid,2) + right(ename,3) from person

select charindex('@','chennareddy@')
select REPLICATE(' chenna',3)
select replace('hello','llo','abc')
select translate('hello','llo','abc')
select substring('hello welcome',4,5)
select stuff('hellowelcome',4,5,'chill')

select square(2)
select sign(100)
select power(3,3)
select abs(1)
select abs(-1)
select round(38.345,1)
select round(38.345,-1)
select floor(20.3)
select ceiling(20.2)

select CAST(10.1 as int)
select convert(int,10.9)
select ename +'earns'+ cast(salary as varchar) from person

select isnull(100,200)
select isnull(null,100)
select isnull(null,null) db130

masterdb

select * from ramu
select ename,salary,comm+comm as total from ramu
select ename,salary,comm+isnull(comm,0) as total from ramu
select ename,salary,isnull(cast(comm as varchar),'an') as total from ramu

db130
select empid,ename,salary,hiredate,rank()over(order by salary desc) as rank from person
select empid,salary,hiredate,dense_rank()over(order by salary,hiredate asc) as rank from person 
select empid,salary,hiredate,rank()over( partition by empid order by salary desc) as rank from person

select max(salary) from person
select max(hiredate) from person
select min(salary) from person
select min(empid) from person
select sum(salary) from person
select round(sum(salary),-3,1) from person
select convert( varchar,round(sum(salary),-3,1)from person

select avg(salary) from person
select cast(avg(salary) as int) from person
select count(ename) from person
select count(*) from person

create table employes(deptno int,detname varchar(10),salary money,hiredate date)
select * from employes
insert into employes values(10,'hr','30000','2020-9-30'),(20,'sales','40000','2021-5-20'),(10,'hr','50000','2026-3-13'),(20,'software','40000','2027-5-14'),(30,'sales','10000','2019-5-16')
select * from employes
select detname,sum(deptno) as total from employes
group by detname 

select detname,count(*) as employescount from employes
group by detname
having count(*)>=2;
order by detname desc

select detname,avg(salary) as avgsalary from employes
group by detname
having avg(salary)>=1
order by avgsalary desc;

select detname,sum(deptno) as total from employes
group by rollup(detname)
order by isnull(detname,99) desc

select detname,sum(deptno) as total from employes
group by cube(detname)
order by isnull(detname,99) asc,isnull(detname,'z') asc

create table orders (empid int,ename varchar(10) not null)
select * from orders 
insert into orders values(100,'chenna')
select * from orders
insert into orders values(null,'hari')
select * from orders
insert into orders values(200, null)

create table orders1(empid int,ename varchar(10) unique)
select * from orders1
insert into orders1 values(10,'a')
select* from orders1
insert into orders1 values(10,'b')
select * from orders1
insert into orders1 values(20,'a')

create table orders2(empid int primary key,ename varchar(10))
select * from orders2
insert into orders2 values(100,'d')
select * from orders2
insert into orders2 values(200,'d')
select * from orders2
insert into orders2 values(200,'c')

create table orders3(empid int,ename varchar(10),age int,check(age>=18))
select * from orders3
insert into orders3 values(100,'a','17')
select * from orders3
insert into orders3 values(200,'b','19')
select * from orders3

create table orders4(empid int,city varchar(10) default 'vijawada')
select * from orders4
insert into orders4(empid) values(100)
select * from orders4
insert into orders4 values(200,'hyb')
select * from orders4


create table employe(empid int,ename varchar(10),esalary money)
select * from employe 
insert into employe values(10,'chenna','20000'),(20,'hari','30000'),(30,'raju','40000'),(40,'viswa','50000')
select * from employe

create table departments(did int,dname varchar(10),dsalary money)
select * from departments
insert into departments values(10,'vivak','80000'),(20,'tarun','90000'),(30,'sai','60000')
select * from departments

select e.ename,d.dname,d.dsalary from employe e inner join departments d on e.empid=d.did where d.dsalary>50000
select e.ename,d.dname,e.esalary from employe e left join departments d on e.empid=d.did 
select e.ename,d.dname,e.esalary from employe e left join departments d on e.empid=d.did where e.esalary<40000
select e.ename,d.dname,e.esalary from employe e right join departments d on e.empid=d.did 
select e.ename,d.dname,e.esalary from employe e right join departments d on e.empid=d.did where e.esalary>40000
select e.ename,d.dname,e.esalary from employe e full outer join departments d on e.empid=d.did 

select e.ename,d.dname,e.esalary from employe e cross join departments d 
select e.ename,d.dname,e.esalary from employe e cross join departments d where e.esalary<50000


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

select max(salary) as highestsecondsalary from person where salary<(select max(salary) from person)
select * from person where hiredate<(select hiredate from person where ename='rohit')
select * from person where salary<(select salary from person where ename='dhoni')
select ename from person where salary<(select salary from person where ename='rohit')
select ename from person where salary=(select max(salary) from person where salary<(select max(salary) from person))
select ename from person where age<(select age from person where age='30')
select * from person where age<(select age from person)

update person set salary=(select max(salary) from person) where empid=('101')
select * from person
update person set salary='70000'(select salary from person where empid=('200'))
select * from person

delete  from person where salary<(select salary from person where empid=('101'))
select * from person

select * from person where job in(select job from person where job in('cricket','batmens'))
select * from person where ename in(select ename from person where ename in('kohial','dhoni'))

select * from person where hiredate>any(select hiredate from person where empid='200')
select * from person where age<any(select age from person where ename='kohial')
select * from person where ename>any(select ename from person where age='39')

select top 3* from person
select top 3 salary from person
select distinct salary from person

select * from person where hiredate<all(select hiredate from person where ename='kohial')
select * from person where age>all(select age from person where hiredate='2025-04-12')
select * from person where ename<all(select ename from person where empid='200')
select * from person where salary>all(select ename from person where job='kohial')
SELECT *FROM employe e WHERE EXISTS (SELECT 1 FROM Departments d WHERE d.did = e.empid);

select * from(select ename,salary,hiredate,dense_rank()over(order by salary desc)as rank from person)as p where rank<=3
select * from(select empid,row_number()over(order by empid desc) as rank from person) as p where rank<=3
select * from(select salary from person where salary>50000) as hihestsalary
select * from(select empid from person where hiredate<'2025-04-12') AS higesthiredate
select * from(select hiredate,empid from person where empid=200) as higestempid where hiredate>=3 

with higestsalary as(select salary from person where salary>50000)select * from higestsalary
with avgsalary as(select salary from person where salary>40000) select * from avgsalary
with 





























 




















































