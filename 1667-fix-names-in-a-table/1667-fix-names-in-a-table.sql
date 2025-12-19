# Write your MySQL query statement below
#her satır için ilk elemanı seç, uppercase yap. geri kalanı lowercase
SELECT user_id, 
        CONCAT(
            UPPER(LEFT(name, 1)),
            LOWER(SUBSTRING(name, 2))
        ) AS name
FROM Users
ORDER BY user_id