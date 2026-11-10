/* File Name: lab11_Registration_Ex_Views.sql
   Description: Solution for Lab Session No. 11 Exercises
*/

-- Question 3
CREATE VIEW Students_GradesForCS AS
SELECT Student.stdNo, Student.lastname, Student.givennames, 
       Course.courseID, Course.courseTitle, Register.Grade, 
       Semester.semesterID, Semester.semesterCode, Semester.semesterYear
FROM Student
JOIN Register ON Student.stdNo = Register.stdNo
JOIN Course ON Register.courseID = Course.courseID
JOIN Semester ON Register.semesterID = Semester.semesterID
WHERE Student.Dept = 'CS';

-- Question 3.1
SELECT givennames, lastname, Grade 
FROM Students_GradesForCS 
WHERE stdNo = 'S0001';

-- Question 3.2
SELECT givennames, courseTitle 
FROM Students_GradesForCS 
WHERE stdNo = 'S0711';

-- Question 3.3
SELECT givennames, semesterID, Grade 
FROM Students_GradesForCS 
WHERE stdNo = 'S0001' AND semesterID = 'SM01';

-- Question 4
CREATE VIEW ITStudents AS
SELECT * FROM Student
WHERE Dept = 'IT'
WITH CHECK OPTION;

-- Question 4.1
INSERT INTO ITStudents (stdNo, lastname, givennames, Dept) VALUES ('S0021', 'Majed', 'Naif', 'IT');
INSERT INTO ITStudents (stdNo, lastname, givennames, Dept) VALUES ('S0312', 'Sultan', 'Saud', 'IT');

-- Question 5
SELECT Register.stdNo, UPPER(Course.courseTitle) AS CourseTitle_Upper
FROM Register
JOIN Course ON Register.courseID = Course.courseID
WHERE Register.stdNo = 'S0001';

-- Question 6
SELECT LOWER(Student.givennames || ' ' || Student.lastname) AS StudentName
FROM (
    SELECT Student.givennames, Student.lastname 
    FROM Student
    JOIN Register ON Student.stdNo = Register.stdNo
    WHERE Register.courseID = 'CSC152'
    ORDER BY Register.Mark DESC
)
WHERE rownum = 1;

-- Question 7
CREATE TABLE Course_Backup AS 
SELECT * FROM Course;