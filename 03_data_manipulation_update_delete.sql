UPDATE Course 
SET courseTitle = 'Database 1' 
WHERE courseID = 'IT125';

UPDATE Student 
SET lastname = 'Almosa' 
WHERE lastname = 'Mosa' 
AND Dept = 'IT';

UPDATE Student 
SET Dept = 'IT';

UPDATE Course 
SET Cost = Cost * 1.05 
WHERE courseTitle = 'C Programming';

DELETE FROM Register 
WHERE stdNo = 'S0421';

DELETE FROM Student 
WHERE givennames = 'Omar Riyadh' 
AND lastname = 'Mohammad';