create database abc;
use abc;

Create table EMP ( EMPNO integer(4) not null, ENAME varchar(30) not null, JOB varchar(10), MGR integer(4), HIREDATE date, SAL integer(7), DEPTNO integer(2) ); 
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1000,  'Manish' , 'SALESMAN', 1003,  '2020-02-18', 600,  30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1001,  'Manoj' , 'SALESMAN', 1003,  '2018-02-18', 600,  30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1002 , 'Ashish', 'SALESMAN',1003 , '2013-02-18',  750,  30 );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1004,  'Rekha', 'ANALYST', 1006 , '2001-02-18', 3000,  10);
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1005 , 'Sachin', 'ANALYST', 1006 ,  '2019-02-18', 3000, 10 );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1006,  'Pooja',  'MANAGER'  ,     null    , '2000-02-18' ,6000, 10 );
desc EMP;

Create table dept (dno integer(4) not null, dname varchar(10) not null,area varchar(30));
Insert into dept(dno,dname,area) values(10,'Store','Mumbai');
Insert into dept(dno,dname,area) values(20,'Purchase','Mumbai');
Insert into dept(dno,dname,area) values(30,'Store', 'Delhi');
Insert into dept(dno,dname,area) values(40,'Marketing','Pune');
Insert into dept(dno,dname,area) values(50,'Finance','Delhi');
Insert into dept(dno,dname,area) values(60,'Accounts','Mumbai');

delimiter $$;
create procedure fri( IN VAR1 INT,VAR2 INT )
begin
SELECT VAR1+VAR2;
END $$;

delimiter $$;
create procedure fri1( IN VAR11 INT,VAR22 INT )
begin
SELECT VAR11-VAR22;
END $$;

call fri1(22,11);

 delimiter $$;
create procedure fri11( IN VAR12 INT,VAR21 INT )
begin
SELECT VAR12*VAR21;
SELECT VAR12/VAR21;
END $$;

call fri11(22,11);


 delimiter $$;
create procedure XYXXZ(in str varchar(10))
begin
select Reverse(str);
end $$;




delimiter ##
create procedure tabless()
begin
create table emp_test(e_id integer, e_name varchar(10), e_joining_date date);
select emp_test;
end ##
call tabless();

delimiter ##
create procedure heena()
begin
insert into dept (dno , dname , area) values(70,'EDUCATION','PUNE');
end##
call heena();



delimiter ##
create procedure intdd(in  num integer)
begin
select num,num*num,num*num*num;
select sqrt(num);
select power(num,3);
end##
call intdd(2);





delimiter $$
create procedure usingout(out num int)
begin
declare b int default 10;
set num = b;
end $$
call usingout(@vv);
select @vv;

delimiter $$
create procedure together(inout x int)
begin
declare z int default 20;
set x= z;
end $$
call together(@aa);
select @aa;

delimiter $$
create procedure kapgate (inout x int)
begin
declare z int default 30;
set x = z;
end $$
call kapgate(@aa);
select @aa;

