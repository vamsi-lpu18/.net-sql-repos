create table employees
(
	EmployeeID INT PRIMARY KEY,
	EmployeeName VARCHAR(100),
	Department VARCHAR(50),
	Salary DECIMAL(12,2),
	JoiningDate DATE
);
select max(salary),EmployeeName,Department from employees group by Department,EmployeeName;