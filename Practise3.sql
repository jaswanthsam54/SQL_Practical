use SQL_practical;
#Display employee names and departments
SELECT EmpName, Department
FROM Employee;
#Select where salary is greater than 4000
SELECT *
FROM Employee
WHERE Salary > 40000;
#Select sales department
SELECT *
FROM Employee
WHERE Department = 'sales';
#Select Employee whose name starts with M 
SELECT *
FROM Employee
WHERE EmpName LIKE 'M%';
#Find Who joined in 2022
SELECT *
FROM Employee
WHERE YEAR(JoinDate) = 2022;