-- Question 1
SELECT DISTINCT *
FROM Student; 

-- Question 2
SELECT lastname, givennames
FROM Student
ORDER BY lastname ASC;

-- Question 3
SELECT courseTitle, Cost
FROM Course
ORDER BY Cost DESC;

-- Question 4
SELECT *
FROM Student
WHERE givennames LIKE 'A%';

-- Question 5
SELECT *
FROM Course
WHERE courseTitle LIKE '%Programming%';

-- Question 6
SELECT *
FROM Course
WHERE Cost BETWEEN 7000 AND 8500;

-- Question 7
SELECT *
FROM Register
WHERE mark BETWEEN 80 AND 100;

-- Question 8
SELECT *
FROM Student
WHERE Dept IN ('CS','IT');