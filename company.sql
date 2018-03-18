CREATE TABLE EMPLOYEE 
    (Fname      VARCHAR(15)     NOT NULL,
    Minit       CHAR,
    Lname       VARCHAR(15)     NOT NULL,
    Ssn         CHAR(9)         NOT NULL,
    Bdate       DATE,
    Address     VARCHAR(30),
    Sex         CHAR,
    Salary      DECIMAL(10,2),
    Super_ssn   CHAR(9),
    Dno         INT             NOT NULL,
    PRIMARY KEY(Ssn)
    );
CREATE TABLE DEPARTMENT
    (Dname VARCHAR(15) NOT NULL,
    Dnumber INT  NOT NULL,
    Mgr_ssn CHAR(9) NOT NULL,
    Mgr_start_date DATE,
    PRIMARY KEY(Dnumber),
    UNIQUE(Dname),
    FOREIGN KEY(Mgr_ssn) REFERENCES EMPLOYEE(Ssn));
CREATE TABLE DEPT_LOCATIONS
    (Dnumber INT NOT NULL,
    Dlocation VARCHAR(15) NOT NULL,
    PRIMARY KEY(Dnumber, Dlocation),
    FOREIGN KEY(Dnumber) REFERENCES DEPARTMENT(Dnumber));
CREATE TABLE PROJECT
    (Pname VARCHAR(15) NOT NULL,
    Pnumber INT NOT NULL,
    Plocation VARCHAR(15),
    Dnum INT NOT NULL,
    PRIMARY KEY(Pnumber),
    UNIQUE(Pname),
    FOREIGN KEY(Dnum) REFERENCES DEPARTMENT(Dnumber));
CREATE TABLE WORKS_ON
    (Essn CHAR(9) NOT NULL,
    Pno INT NOT NULL,
    Hours DECIMAL(3,1) NOT NULL,
    PRIMARY KEY(Essn, Pno),
    FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn),
    FOREIGN KEY(Pno) REFERENCES PROJECT(Pnumber));
CREATE TABLE DEPENDENT
    (Essn CHAR(9) NOT NULL,
    Dependent_name VARCHAR(15) NOT NULL,
    Sex CHAR,
    Bdate DATE,
    Relationship VARCHAR(8),
    PRIMARY KEY(Essn, Dependent_name),
    FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn));

INSERT INTO EMPLOYEE
VALUES
    ('John','B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555', 5),
    ('Franklin','T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, '888665555', 5),
    ('Alicia','J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, '987654321', 4),
    ('Jennifer','S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, '888665555', 4),
    ('Ramesh','K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, '333445555', 5),
    ('Joyce','A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, '333445555', 5),
    ('Ahmad','V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, '987654321', 4),
    ('James','E', 'Borg', '888665555', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1);

INSERT INTO DEPARTMENT
VALUES
    ('Research',              5,  '333445555',    '1988-05-22'),
    ('Administration',        4,  '987654321',    '1995-01-01'),
    ('Headquarters',          1,  '888665555',    '1981-06-19')
    ;

INSERT INTO DEPT_LOCATIONS
VALUES
    (1,  'Houston'),
    (4,  'Stafford'),
    (5,  'Bellaire'),
    (5,  'Sugarland'),
    (5,  'Houston')
    ;

INSERT INTO WORKS_ON
VALUES
    ('123456789',  1, 32.5),
    ('123456789',  2, 7.5),
    ('666884444',  3, 40.0),
    ('453453453',  1, 20.0),
    ('453453453',  2, 20.0),
    ('333445555',  2, 10.0),
    ('333445555',  3, 10.0),
    ('333445555',  10, 10.0),
    ('333445555',  20, 10.0),
    ('999887777',  30, 30.0),
    ('999887777',  10, 10.0),
    ('987987987',  10, 35.0),
    ('987987987',  30, 5.0),
    ('987654321',  30, 20.0),
    ('987654321',  20, 15.0),
    ('888665555',  20, NULL)
    ;

INSERT INTO PROJECT
VALUES
    ('ProductX',            1,       'Bellaire',   5),
    ('ProductY',            2,       'Sugarland',  5),
    ('ProductZ',            3,       'Houston',    5),
    ('Computerization',     10,      'Stafford',   4),
    ('Reorganization',      20,      'Houston',    1),
    ('Newbenefits',         30,      'Stafford',   4)
    ;


INSERT INTO DEPENDENT
VALUES
    ('333445555',    'Alice',       'F',    '1986-04-05',   'Daughter'),
    ('333445555',    'Theodore',    'M',    '1983-10-25',   'Son'),
    ('333445555',    'Joy',         'F',    '1958-05-03',   'Spouse'),
    ('987654321',    'Abner',       'M',    '1942-02-28',   'Spouse'),
    ('123456789',    'Michael',     'M',    '1988-01-04',   'Son'),
    ('123456789',    'Alice',       'F',    '1988-12-30',   'Daughter'),
    ('123456789',    'Elizabeth',   'F',    '1967-05-05',   'Spouse')
    ;

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