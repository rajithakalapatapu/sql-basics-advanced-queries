drop table Employee;
drop table Department;
drop table Dept_Locations;
drop table Project;
drop table Works_on;
drop table Dependent;

Create table Employee(Fname varchar(15),Minit varchar(15),Lname varchar(15),Ssn int,Bdate date,Address varchar(15),Sex char(10),Salary int,Super_ssn int, Dno int);

Create table Department(Dname varchar(15),Dnumber int,Mgr_ssn int,Mgr_start_date date);

Create table Dept_Locations(Dnumber int,Dlocation varchar(15));

Create table Project(Pname varchar(20),Pnumber int,Plocation varchar(20),Dnum int));

Create table Works_on(Essn int,Pno int,Hours);

Create table Dependent(Essn int,Dependent_name varchar(20),Sex char(15),Bdate date,Relationship varchar(15));


Alter table Employee add(primary key(Ssn),foreign key Dno references Department(Dnumber));

Alter table Department add(primary key(Dnumber));

Alter table Dept_Locations add(primary key(Dnumber,Dlocation),foreign key Dnumber references Department(Dnumber));

Alter table Project add(primary key(Pnumber),foreign key Dnum references Department(Dnumber));

Alter table Works_on add(primary key(Essn,Pno),foreign key Essn references Employee(Ssn),foreign key Pno references Project(Pnumber));

Alter table Dependent add(primary key(Dependent_name),foreign key Essn references Employee(Ssn));







