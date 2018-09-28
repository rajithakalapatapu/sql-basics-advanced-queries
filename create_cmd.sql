SET ECHO ON;

drop table Dept_Locations;
drop table Works_on;
drop table Project;
drop table Dependent;
drop table Department CASCADE CONSTRAINTS;
drop table Employee CASCADE CONSTRAINTS;

Create table Employee(Fname varchar(15) NOT NULL, 
		      Minit varchar(15) NOT NULL,
		      Lname varchar(15) NOT NULL,
		      Ssn int NOT NULL,
		      Bdate date NOT NULL,
		      Address varchar(15) NOT NULL,
		      Sex char(10) NOT NULL,
		      Salary int NOT NULL,
		      Super_ssn int NOT NULL,
		      Dno int NOT NULL);

Create table Department(Dname varchar(15) NOT NULL,
			Dnumber int NOT NULL,
			Mgr_ssn int NOT NULL,
			Mgr_start_date date NOT NULL);

Create table Dept_Locations(Dnumber int NOT NULL,
		            Dlocation varchar(15) NOT NULL);

Create table Project(Pname varchar(20) NOT NULL,
		     Pnumber int NOT NULL,
		     Plocation varchar(20) NOT NULL,
		     Dnum int NOT NULL);

Create table Works_on(Essn int NOT NULL,
	              Pno int NOT NULL,
		      Hours int NOT NULL);

Create table Dependent(Essn int NOT NULL, 
		       Dependent_name varchar(32) NOT NULL,
                       Sex char(15) NOT NULL,
	               Bdate date NOT NULL,
	               Relationship varchar(32) NOT NULL);


Alter table Department add(primary key(Dnumber));

Alter table Employee add(primary key(Ssn),
			 foreign key (Super_ssn) references Employee(Ssn),
		         foreign key (Dno) references Department(Dnumber));

Alter table Dept_Locations add(primary key(Dnumber,Dlocation),
			       foreign key (Dnumber) references Department(Dnumber));

Alter table Project add(primary key(Pnumber),
			foreign key (Dnum) references Department(Dnumber));

Alter table Works_on add(primary key(Essn,Pno),
			 foreign key (Essn) references Employee(Ssn),
			 foreign key (Pno) references Project(Pnumber));

Alter table Dependent add(primary key(Dependent_name),
			  foreign key (Essn) references Employee(Ssn));

SET ECHO OFF;
