-- Question 1
SELECT DISTINCT *
FROM Student; 

-- Question 2
SELECT lastname, givennames
FROM Student
ORDER BY lastname ASC;

-- Question 3
SELECT givennames 
FROM Student 
WHERE Dept = 'IT' 
ORDER BY lastname DESC;

-- Question 4
SELECT * FROM (SELECT * FROM Course WHERE Cost > 5000 ORDER BY Cost ASC) 
WHERE rownum <= 3;

-- Question 5
SELECT stdNo, givennames, lastname 
FROM Student 
WHERE givennames LIKE '%ha%' OR lastname LIKE '%ha%';

-- Question 6
SELECT * FROM Course 
WHERE Cost BETWEEN 6000 AND 8000;

-- Question 7
SELECT courseTitle, Credits, Cost 
FROM (SELECT courseTitle, Credits, Cost FROM Course ORDER BY Cost ASC) 
WHERE rownum = 1;

-- Question 8
SELECT * FROM (SELECT * FROM Register WHERE Grade IN ('A', 'A+') ORDER BY courseID) 
WHERE rownum <= 3;