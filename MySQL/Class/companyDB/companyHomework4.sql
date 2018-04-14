--Homework 4
--1.Who works on the Reorganization project?
SELECT Fname, Lname 
FROM ((EMPLOYEE JOIN WORKS_ON ON Ssn = Essn) JOIN PROJECT ON Pno = Pnumber)
WHERE Pname = "Reorganization"
;
--2.Who works in on a project that is located in Stafford? Do not show any repeated names.
SELECT DISTINCT Fname, Lname
FROM EMPLOYEE JOIN DEPT_LOCATIONS ON Dno = Dnumber
WHERE Dlocation = "Stafford"
;
--3.Which Employees have a Daughter, and what is the daughter’s name?
SELECT Fname, Lname, Dependent_Name
FROM EMPLOYEE JOIN DEPENDENT ON Ssn = Essn
WHERE Relationship = "Daughter"
;
--4.Tell me the names and addresses of all the managers, as well as the number of dependents they have.
SELECT Fname, Lname, Address, COUNT(*)
FROM ((EMPLOYEE JOIN DEPARTMENT ON Ssn = Mgr_ssn) JOIN DEPENDENT ON Mgr_ssn = Essn)
GROUP BY Essn
;
--5.Show me the names of all the employees who have a supervisor.
SELECT Fname, Lname 
FROM EMPLOYEE
WHERE Super_ssn IS NOT NULL
;
--6.What are names of employees who work in the Administration department who make less money
-- than at least one employee who works in the Research department.
SELECT DISTINCT Fname, Lname
FROM EMPLOYEE JOIN DEPARTMENT ON Dno = Dnumber
WHERE Dname = "Administration" AND Salary > ANY 
(SELECT Salary
FROM EMPLOYEE JOIN DEPARTMENT ON Dno = Dnumber
WHERE Dname = "Research")
;
--7.For each Project, show the project name, the number of employees who work on the project, 
--and the average hours per week each employee works on that project. 
--Order the results alphabetically by the name of the project.
SELECT DISTINCT Pname, AVG(Hours), COUNT(*)
FROM PROJECT JOIN WORKS_ON ON Pnumber = Pno
GROUP BY Pno
ORDER BY Pname
;
--8.For each employee, show the number of projects they work on.
SELECT DISTINCT Fname AS First_Name, Lname AS Last_Name, COUNT(*) AS Num_Proj
FROM EMPLOYEE JOIN WORKS_ON ON Ssn = Essn
GROUP BY Essn
;
--9.Show the names of all dependents who are dependents of someone who works on the reorganization project.
SELECT DISTINCT Dependent_Name
FROM ((DEPENDENT JOIN WORKS_ON ON DEPENDENT.Essn = WORKS_ON.Essn) JOIN PROJECT ON Pno = Pnumber)
WHERE Pname = "Reorganization"
;
--10.For employees who make less than $30000, change their salary to $30000. 
--For all other employees, give them a 10% raise.
UPDATE EMPLOYEE
SET Salary =
CASE 
   WHEN Salary >= 30000 THEN Salary + Salary*.10
   ELSE 30000
END
;