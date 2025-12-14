# Write your MySQL query statement below
#üçgen olma şartı: her kenar diğer iki kenarın toplamından küçük farkından büyük olmalı.
SELECT x, y, z, 
CASE WHEN (ABS(x-y) < z AND z< (x+y)) 
AND (ABS(x-z) < y AND y < (x+z)) 
AND (ABS(y-z) < x AND x < (y+z)) 
THEN 'Yes' ELSE 'No' END
AS triangle
FROM Triangle
