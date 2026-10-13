create table student 
(stuid  NUMBER,
 FNAME  VARCHAR2(20),
 LNAME  VARCHAR2(20),
 CITY   VARCHAR(10)
 );
 
 
select * from student;

drop table student;

insert into student values(1001, 'Ankit', 'Pandey', 'Pune')
insert into student values(1002, 'sai', 'pawar', 'hyd')
