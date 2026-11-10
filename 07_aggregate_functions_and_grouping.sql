-- Question 3
SELECT COUNT(DISTINCT courseID)
FROM Register;

-- Question 4
SELECT COUNT(stdNo)
FROM Register 
WHERE courseID = 'CSC152' AND Grade IN ('A+', 'A', 'B+');

-- Question 5
SELECT Dept, COUNT(stdNo)
FROM Student 
GROUP BY Dept;

-- Question 6
SELECT stdNo, COUNT(DISTINCT courseID) 
FROM Register 
WHERE Grade IS NOT NULL AND Grade != 'F' 
GROUP BY stdNo;

-- Question 7
SELECT stdNo, AVG(Mark) 
FROM Register 
GROUP BY stdNo;

-- Question 8 [B]
SELECT Semester.semesterID, Semester.semesterYear, COUNT(Register.stdNo) 
FROM Semester, Register
WHERE Semester.semesterID = Register.semesterID
GROUP BY Semester.semesterID, Semester.semesterYear
HAVING COUNT(Register.stdNo) >= 2;