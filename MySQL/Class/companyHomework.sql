SELECT * FROM EMPLOYEE; --show everything in a table
SELECT Fname FROM EMPLOYEE
WHERE (Salary BETWEEN 30000 AND 50000);

--Homework Commands
--1 Who works on the Reorganization project?
SELECT Fname, Lname
FROM EMPLOYEE, WORKS_ON, PROJECT
WHERE Ssn=Essn AND Pno=Pnumber AND Pname='Reorganization';
--2 Who works on a project located in Houston?
SELECT Fname, Lname
FROM EMPLOYEE, WORKS_ON, PROJECT
WHERE Ssn=Essn AND Pno=Pnumber AND Plocation='Houston';
--3 Which Employees have a spouse?
SELECT Fname, Lname
FROM EMPLOYEE, DEPENDENT
WHERE Ssn=Essn AND Relationship='Spouse';
--4 Which Employee lives on a street named “Castle”
SELECT Fname, Lname
FROM EMPLOYEE
WHERE Address LIKE '%Castle%';
--5 Tell me the names and addresses of all the managers.
SELECT Fname, Lname, Address
FROM EMPLOYEE, DEPARTMENT
WHERE Ssn=Mgr_ssn;
--6 Show the names of all employees making more than $30,000 but less than $50,000
SELECT Fname, Lname 
FROM EMPLOYEE 
WHERE (Salary BETWEEN 30000 AND 50000);
--7 Show the project name, number, and location for all projects with “Product” in the product name.
SELECT Pname, Pnumber, Plocation
FROM PROJECT
WHERE Pname LIKE '%Product%';
--8 The company has decided to update their minimum salary to $30,000. 
--  Give any employee who makes less than $30,000 a year a raise to meet this new minimum.
UPDATE EMPLOYEE
SET Salary=30000
WHERE (Salary BETWEEN 0 and 30000);
--9 Since raising the minimum salary should benefit everyone, give everyone who made $30,000 a year or more a 10% raise.
UPDATE EMPLOYEE
SET Salary=Salary*1.1
WHERE Salary >= 30000;
--10 Change the New Benefits project to be under department 1.
UPDATE PROJECT
SET Dnum=1
WHERE Pname='Newbenefits';

--describe EMPLOYEE; -- lies this works it shows all the coumns in the table