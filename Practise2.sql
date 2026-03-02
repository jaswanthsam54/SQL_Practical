use SQL_practical;
#Insert at least 6 employee records
create table Employee (
EmpID int primary key not null,
Empname varchar(20) NOT NULL,
Department varchar(20) default 'General',
Salary Decimal(10,2),
JoinDate DATE 
);
INSERT INTO Employee (EmpID, EmpName, Department, Salary, JoinDate) VALUES
(101, 'Ram', 'IT', 45000, '2023-01-10'),
(102, 'Sita', 'HR', 38000, '2023-02-15'),
(103, 'Arjun', 'Finance', 52000, '2022-11-20'),
(104, 'Meena', 'IT', 47000, '2023-03-12'),
(105, 'Ravi', 'Marketing', 30000, '2023-04-05'),
(106, 'Anita', 'Finance', 28000, '2023-05-18');
#Insert only specified records EmpID , Empname , Department
INSERT INTO Employee (EmpID, EmpName, Department)
VALUES (107, 'Kiran', 'IT');
#Update Salary of ALL Employee
SET SQL_SAFE_UPDATES = 0;
UPDATE Employee
SET Salary = Salary + 5000;
SET SQL_SAFE_UPDATES = 1;
# increase salary of IT department 
SET SQL_SAFE_UPDATES = 0;
UPDATE Employee
SET Salary = Salary * 1.15
WHERE Department = 'IT';
SET SQL_SAFE_UPDATES = 1;
#Change department of EmpID 105 to HR
UPDATE Employee
SET Department = 'HR'
WHERE EmpID = 105;
# Delete employees whose salary is below 30000
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Employee
WHERE Salary < 30000;
SET SQL_SAFE_UPDATES = 1;
#Delete all employees from Finance department
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Employee
WHERE Department = 'Finance';
SET SQL_SAFE_UPDATES = 1;
#Copy all records from Employee into Backup_Employee
create table Backup_Employee (
EmpID int primary key not null,
Empname varchar(20) NOT NULL,
Department varchar(20) default 'General',
Salary Decimal(10,2),
JoinDate DATE 
);
INSERT INTO Backup_Employee
SELECT * FROM Employee;
# OUTPUT CHECK 
SELECT * from Backup_Employee;