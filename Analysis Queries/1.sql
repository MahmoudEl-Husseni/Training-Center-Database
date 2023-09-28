// Q1: Number of employees in each department along with average salary of employees in this department.

SELECT Department.Dept_name, COUNT(E_ID) count_of_employees, AVG(salary) Average_salary
FROM Company_Employee, Department
WHERE Company_Employee.Dept_ID = Department.Dept_ID  
GROUP BY Department.Dept_ID ;
