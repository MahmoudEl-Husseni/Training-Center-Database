// Q3: List Employees works in both Company and Training Center.
SELECT t.* 
FROM Training_Employee t, Company_Employee c 
WHERE t.E_ID = c.E_ID;
