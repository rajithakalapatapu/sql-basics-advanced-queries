set echo on;

REM 1. Select all the attributes for all employees whose last name is 'Jones' or ‘James’.
select * from employee where lname='Jones' OR lname='James';

REM 2. Select all the attributes for all employees whose first name is 'Kim' or ‘Wilson’.
select * from employee where fname='Kim' OR fname='Wilson';

REM 3. Select the names and Ssn of employees who work on more than one project and count the total hours that the employees work on.  
select E.fname,E.lname,E.Ssn ,count(W.Pno),sum(W.Hours) from employee E JOIN Works_on W on E.Ssn=W.ESsn group by E.fname,E.lname,E.Ssn having count(Pno)>1;

REM 4. For each PROJECT, retrieve the project name, number, and location plus the number of employees who works on the project.
select P.Pname,P.Pnumber,P.Plocation,count(W.Essn) from project P JOIN works_on W on P.Pnumber=W.Pno group by P.Pnumber,P.Pname,P.Plocation;

REM 5. For each employee who works in department 5 on a project in Houston, retrieve the employee’s Ssn, first and last names, and the project number, name, and hours for each project that the employee works on.
select E.Ssn,E.fname,E.lname,W.hours from employee E JOIN works_on W on E.Ssn=W.Essn where W.pno=(select P.Pnumber from project P where P.Dnum=5 and P.Plocation='Houston');

REM 6. Retrieve the last name and first name of all employees who work more than 40 hours per week total (on all their projects).
select E.fname,E.lname from employee E,works_on W where W.Hours>40 and E.Ssn=W.Essn;

REM 7. Select the first and last name of each employee who is a supervisor, plus count the total number of employees supervised by each supervisor.
select S.fname,S.lname,count(E.Ssn) from employee E JOIN employee S on E.Ssn=S.Super_ssn group by S.fname,S.lname;

REM 8.  For each project determine the total hours that employees work on that project per week.
select sum(Hours),Pno from works_on group by Pno;

REM 9.  Find which employee has more than 2 dependents.
select Essn,count(Dependent_name) from dependent group by Essn having count(Dependent_name)>2;

REM 10.  Find which employee has more than 1 children.
select Essn,count(Dependent_name) from Dependent where Relationship='Children' group by Essn having count(Dependent_name)>1;

REM 11.  Find all the employee who works in the department that is located in Atlanta. Select their first name and last name.
select fname,lname from employee where Address='Atlanta';

REM 12. Find all the departments located in Houston and list how many projects are their under those departments.
select Dnum,count(Pnumber) from Project where Plocation='Houston' group by Dnum;

set echo off;
