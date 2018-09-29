REM Insert 3 records that do not violate any integrity constraints.

set echo on;

insert into employee values('Regina','G','Jeorge',567890357,'07-JAN-1977','Millers Road,Dallas','F',98000, 666666609,7);


insert into department values('CEO office', 78, 567890357, '01-JAN-2000');


insert into dept_locations values (78, 'Irving'); 

set echo off;
