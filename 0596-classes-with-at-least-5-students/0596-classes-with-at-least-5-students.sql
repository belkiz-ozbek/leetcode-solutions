# Write your MySQL query statement below
# en az 5 öğrencisi olan sınıfları bul

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5