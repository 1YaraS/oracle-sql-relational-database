SELECT courseTitle, Credits
FROM Course;
SELECT givennames
FROM Student
WHERE Dept = 'CS';
SELECT *
FROM Course
WHERE Cost > 7500;
SELECT courseTitle,
       Credits,
       Cost,
       Cost * 1.15 AS New_Cost
FROM Course;
SELECT Course.*
FROM Course, Register
WHERE Course.courseID = Register.courseID
AND Register.stdNo = 'S0201';