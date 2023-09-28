// Q6: List No. Courses and Programs in each branch.

SELECT Branch.B_ID, COUNT(Course_code) "No. Courses", COUNT(Program.Prog_ID) "No. Programs" 
FROM Branch, Program, Teaches 
WHERE Branch.B_ID = Program.B_ID 
	AND Program.prog_ID = Teaches.Prog_ID 
GROUP BY Branch.B_ID;

