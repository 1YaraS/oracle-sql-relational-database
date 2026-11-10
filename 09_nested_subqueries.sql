/* File Name: lab9_Registration_Ex_Subqueries.sql
   Description: Solution for Lab Session No. 09 Exercises
*/

-- Question 3
SELECT DISTINCT stdNo 
FROM Register 
WHERE courseID IN (
    SELECT courseID 
    FROM Register 
    WHERE stdNo IN (
        SELECT stdNo 
        FROM Student 
        WHERE givennames = 'Marwan Ali'
    )
);

-- Question 4
UPDATE Course 
SET Cost = Cost * 1.10 
WHERE courseID IN (
    SELECT courseID 
    FROM Register 
    GROUP BY courseID 
    HAVING COUNT(stdNo) >= 2
);

-- Question 5
SELECT courseID, courseTitle, Cost 
FROM (
    SELECT Course.courseID, Course.courseTitle, Course.Cost 
    FROM Course
    JOIN Register ON Course.courseID = Register.courseID
    GROUP BY Course.courseID, Course.courseTitle, Course.Cost
    ORDER BY COUNT(Register.stdNo) ASC
) 
WHERE rownum = 1;

-- Question 6
SELECT courseTitle, Cost 
FROM Course 
WHERE courseID IN (
    SELECT courseID 
    FROM Register 
    WHERE stdNo IN (SELECT stdNo FROM Student WHERE Dept = 'IT') 
    AND semesterID IN (SELECT semesterID FROM Semester WHERE semesterCode = 2 AND semesterYear = 2012)
) 
ORDER BY Cost ASC;

-- Question 7
DELETE FROM Register 
WHERE stdNo IN (
    SELECT stdNo 
    FROM Student 
    WHERE givennames = 'Abdulaziz Saleh'
);