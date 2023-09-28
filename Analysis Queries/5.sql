// Q5: How many Hours does each employee spend in all projects?

SELECT CONCAT(Fname, ' ', Lname) Name, SUM(Hours) "Total Hours" 
FROM Company_Employee, Emp_Proj, Project 
WHERE Company_Employee.E_ID = Emp_Proj.E_ID 
	AND Project.P_ID = Emp_Proj.proj_ID 
GROUP BY Company_Employee.E_ID;

