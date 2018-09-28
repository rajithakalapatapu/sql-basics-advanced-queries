SET ECHO ON;

REM These are the missing entries that caused errors while inserting values into EMPLOYEE and WORKS_ON tables

insert into EMPLOYEE values('MISSING','M','MANAGER','888665555','01-JAN-1999','4536 hies,houston,tx','M',35000,null,5); 
insert into PROJECT values('Missing Project',3,'houston',5);


REM After inserting the above, I re-run the failed EMPLOYEE entries and failed WORKS_ON, DEPENDENT entries

insert into EMPLOYEE values ('Frank', 'T', 'Wong', '333445555', '08-DEC-1945', '638 Voss,Houston,TX', 'M', 40000, '888665555', 5); 
insert into EMPLOYEE values ('Jennifer', 'S', 'Wallace', '987654321', '20-JUN-1931', '291 Berry,Bellaire,TX', 'F', 43000, '888665555', 4); 
insert into EMPLOYEE values ('John', 'B', 'Smith', '123456789', '09-Jan-1955', '731 Fondren,Houston,TX', 'M', 30000, '333445555', 5); 
insert into EMPLOYEE values ('Alicia', 'J', 'Zelaya', '999887777', '19-JUL-1958', '3321 Castle,Spring,TX', 'F', 25000, '987654321', 4);
insert into EMPLOYEE values ('Ramesh', 'K', 'Narayan', '666884444', '15-SEP-1952', '971 Fire Oak,Humble,TX', 'M', 38000, '333445555', 5);
insert into EMPLOYEE values ('Joyce', 'A', 'English', '453453453', '31-JUL-1962', '5631 Rice Oak,Houston,TX', 'F', 25000, '333445555', 5);
insert into EMPLOYEE values ('Ahmad', 'V', 'Jabbar', '987987987', '29-MAR-1959', '980 Dallas,Houston,TX', 'M', 25000, '987654321', 4); 
insert into EMPLOYEE values ('Sheldon', 'C', 'Cucuou', '849934919', '22-MAR-1974', '11 Hollywood Blvd,Dallas,TX', 'M', 35500, '888665555', 8); 
insert into EMPLOYEE values ('Cameron', 'D', 'Thirteen', '111422203', '04-MAY-2001', '22 Univ Blvd,Arlington,TX', 'F', 80000, '987987987', 4);
insert into EMPLOYEE values ('Christina', 'S', 'Hisel', '241625699', '5-JUL-1986', '37 Church Row,Rochester,NY', 'F', 45000, '123456789', 6);


insert into WORKS_ON values ('123456789', 5, 32.5);
insert into WORKS_ON values ('123456789', 6, 7.5);
insert into WORKS_ON values ('666884444', 7, 40.0); 
insert into WORKS_ON values ('453453453', 5, 20.0); 
insert into WORKS_ON values ('453453453', 6, 20.0); 
insert into WORKS_ON values ('333445555', 7, 10.0);

REM this row is entered twice.... 
REM insert into WORKS_ON values ('333445555', 7, 10.0); 

insert into WORKS_ON values ('333445555', 10, 10.0); 
insert into WORKS_ON values ('333445555', 20, 10.0);
insert into WORKS_ON values ('999887777', 30, 30.0);
insert into WORKS_ON values ('999887777', 10, 10.0);
insert into WORKS_ON values ('987987987', 10, 35.0);
insert into WORKS_ON values ('987987987', 30, 5.0);
insert into WORKS_ON values ('987654321', 30, 20.0); 
insert into WORKS_ON values ('987654321', 20, 15.0);
insert into WORKS_ON values ('888665555', 20, 5.0);
insert into WORKS_ON values ('614370310', 3, 45.0); 
insert into WORKS_ON values ('849934919', 95, 23.0);
insert into WORKS_ON values ('111422203', 4, 45.0);
insert into WORKS_ON values ('241625699', 61, 4.0);
insert into WORKS_ON values ('111422203', 6, 5.0);

insert into DEPENDENT values ('999887777', 'John Smith', 'M', '19-JUL-1956', 'Spouse'); 
insert into DEPENDENT values ('987987987', 'Khadeja Begum', 'F', '29-MAR-1949', 'Spouse'); 
insert into DEPENDENT values ('987987987', 'Jalil Ahmad', 'M', '29-MAR-1929', 'Children');


REM Update DEPARTMENT table with the right foreign keys

update DEPARTMENT set Mgr_ssn =  '333445555' where Dnumber =  5;
update DEPARTMENT set Mgr_ssn =  '987654321' where Dnumber =  4;
update DEPARTMENT set Mgr_ssn =  '888665555' where Dnumber =  1;
update DEPARTMENT set Mgr_ssn =  '111111100' where Dnumber =  6;
update DEPARTMENT set Mgr_ssn =  '444444400' where Dnumber =  7;
update DEPARTMENT set Mgr_ssn =  '555555500' where Dnumber =  8;
update DEPARTMENT set Mgr_ssn =  '112244668' where Dnumber =  9;
update DEPARTMENT set Mgr_ssn =  '110110110' where Dnumber =  3;
update DEPARTMENT set Mgr_ssn =  '913323708' where Dnumber =  11;


REM Now add the NOT NULL constraint into DEPARTMENT table

alter table department modify Mgr_ssn not null;

REM This completes the insert process and all constraints are now fully active
REM This ends problem 2...

SET ECHO OFF;
