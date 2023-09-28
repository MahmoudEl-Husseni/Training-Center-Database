// Q4: How many Departments in each branch + Location + Budget + Area ?

SELECT Branch.B_ID, COUNT(Dept_ID) "NO. Departments", Location, Budget, Area 
FROM Branch, Department 
WHERE Branch.B_ID = Department.B_ID 
GROUP BY Branch.B_ID 
ORDER BY Area desc;

