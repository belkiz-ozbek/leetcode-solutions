# Write your MySQL query statement below
# manager bir çalışan ve en az bir çalışan ona rapor gönderiyor

#tüm manager'ları bul. manager'ın çalışanlarının yaş ort. bul.

SELECT e.employee_id, e.name, COUNT(*) AS reports_count, ROUND(AVG(e2.age), 0) average_age
FROM Employees e
INNER JOIN Employees e2 ON e.employee_id = e2.reports_to 
GROUP BY employee_id 
ORDER BY employee_id;

