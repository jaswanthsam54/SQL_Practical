# Create Employee Table 
create database SQL_practical;
use SQL_practical;
CREATE TABLE employee (
EmpID int primary key not null,
Empname varchar(20) NOT NULL,
Dept varchar(20) default 'General',
Salary Decimal(10,2),
JoinData DATE ,
CHECK (Salary > 0)
);
#Add column Email Using ALTER COMMAND 
ALTER TABLE employee ADD email varchar(30);
#Modify Salary datatype
ALTER TABLE employee MODIFY Salary DECIMAL(12,2);
# Add UNIQUE constraint on Email
ALTER TABLE Employee ADD CONSTRAINT uq_email UNIQUE (Email);
#Rename column Dept to Department
ALTER TABLE employee RENAME COLUMN Dept TO Department;
#Drop Email column
ALTER TABLE employee drop column email;
#Rename table to Emp_Master
RENAME table employee TO emp_Master;
#Create copy of table structure only (no data)
CREATE TABLE Emp_copy LIKE emp_Master;
