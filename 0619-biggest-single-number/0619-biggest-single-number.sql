# Write your MySQL query statement below
#sadece bir kere yazılmış sayıları bul
#bu sayılardan en büyüğünü döndür
#hiç yoksa null dönecek 

SELECT Max(num) AS num
FROM MyNumbers
WHERE num IN(
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING count(*) = 1
)




