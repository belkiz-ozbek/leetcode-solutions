# Write your MySQL query statement below
WITH Top_Thee_Unique_Salaries AS(
    SELECT e.name AS employee_name, 
           e.salary, 
           e.departmentId, 
           d.id, 
           d.name AS department_name,
           DENSE_RANK() OVER(PARTITION BY d.name ORDER BY salary DESC) 
           AS denseRank
    FROM Employee e
    JOIN Department d
    ON e.departmentId = d.id

)

SELECT department_name AS Department, 
       employee_name AS Employee, 
       salary AS Salary
FROM Top_Thee_Unique_Salaries
WHERE denseRank = 1 OR denseRank = 2 OR denseRank = 3



#+----+-------+--------+--------------+---------------+---------------+
#| id | name  | salary | departmentId | depatmentName | denseRank     |
#+----+-------+--------+--------------+---------------+---------------+
#| 1  | Joe   | 85000  | 1            | IT            | 2
#| 2  | Henry | 80000  | 2            | Sales         | 1
#| 3  | Sam   | 60000  | 2            | Sales         | 2
#| 4  | Max   | 90000  | 1            | IT            | 1
#| 5  | Janet | 69000  | 1            | IT            | 4
#| 6  | Randy | 85000  | 1            | IT            | 2
#| 7  | Will  | 70000  | 1            | IT            | 3
#+----+-------+--------+--------------+---------------+