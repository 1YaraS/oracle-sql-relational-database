CREATE TABLE Student (
    stdNo CHAR(5) PRIMARY KEY,
    lastname VARCHAR(25) NOT NULL,
    givennames VARCHAR(50) NOT NULL,
    Dept CHAR(4)
);
CREATE TABLE Course (
    courseID CHAR(8) PRIMARY KEY,
    courseTitle VARCHAR(50) NOT NULL UNIQUE,
    Cost DECIMAL(6,2) CHECK (Cost >= 0),
    Credits INT DEFAULT 2 CHECK (Credits BETWEEN 0 AND 200)
);
CREATE TABLE Semester (
    semesterID CHAR(5) PRIMARY KEY,
    semesterCode INT CHECK (semesterCode BETWEEN 1 AND 4),
    semesterYear INT CHECK (semesterYear BETWEEN 2000 AND 9999)
);
CREATE TABLE Register (
    stdNo CHAR(5) REFERENCES Student(stdNo) ON DELETE CASCADE,
    courseID CHAR(8) REFERENCES Course(courseID) ON DELETE CASCADE,
    semesterID CHAR(5) REFERENCES Semester(semesterID) ON DELETE CASCADE,
    Grade CHAR(2),
    Mark DECIMAL(4,2) CHECK (Mark BETWEEN 0.00 AND 100.00),
    PRIMARY KEY (stdNo, courseID, semesterID)
);