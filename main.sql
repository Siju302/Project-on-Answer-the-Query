CREATE TABLE 
IF NOT EXISTS Students (
    StudentID INTEGER PRIMARY KEY,
    StudentName TEXT,
    Age INTEGER,
    Grade TEXT,
    Score INTEGER,
    EnrollDate DATE
);

INSERT INTO Students 
    (StudentID, StudentName, Age, Grade, Score, EnrollDate) 
VALUES
(1, 'Alice Johnson', 15, '10A', 85, '2022-09-01'),
(2, 'Andrew White', 14, '9B', 78, '2021-09-01'),
(3, 'George Orwell', 16, '11A', 92, '2020-09-01'),
(4, 'Diana Ford', 15, '10A', 88, '2022-09-01');

-- Convert student names to uppercase (string function)
SELECT UPPER(StudentName) AS Uppercase_Name
FROM Students;

-- Find the length of each student’s name
SELECT StudentName, LENGTH(StudentName) AS Name_Length
FROM Students;

-- Extract the enrollment year
SELECT StudentName, YEAR(EnrollDate) AS Enroll_Year
FROM Students;

-- Find the average score per grade
SELECT Grade, AVG(Score) AS Average_Score
FROM Students
GROUP BY Grade;

-- Find the top student (highest score)
SELECT StudentName, Score
FROM Students
WHERE Score = (SELECT MAX(Score) FROM Students);
