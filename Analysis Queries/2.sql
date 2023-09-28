// Q2: Name of Employee who won First Remuneration most.

SELECT CONCAT(Fname, ' ', Lname) AS Name 
FROM Company_Employee
where E_ID =  
	(SELECT First_EID 
	 FROM 
	 	(SELECT First_EID, COUNT(First_EID)  AS cnt FROM Remuneration GROUP BY First_EID) t 
	WHERE cnt =  
		(SELECT MAX(cnt2) max FROM 
			(SELECT COUNT(First_EID) cnt2 FROM Remuneration GROUP BY First_EID) t2)
	);
