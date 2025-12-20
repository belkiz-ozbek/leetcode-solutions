# Write your MySQL query statement below

SELECT (
    IFNULL(
        (SELECT Salary
        FROM Employee e
        WHERE salary < (SELECT MAX(salary) FROM Employee)
        ORDER BY salary DESC 
        LIMIT 1), NULL
        )
) AS SecondHighestSalary;



#yanlış çözümüm----
#ifnull koşula uyan satırı döndürür.
#iç sorgu hiç satır dönmezse null değildir.
#COALESCE de kullanılabilir(parametre sayısı fazla olduğunda kullanılması şarttır) 

#SELECT IFNULL(salary, 'NULL')
#AS SecondHighestSalary
#FROM Employee e
#WHERE salary < (SELECT MAX(salary) FROM Employee)
#ORDER BY salary DESC 
#LIMIT 1;
