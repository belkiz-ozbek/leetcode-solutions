# Write your MySQL query statement below
# otobüse girebilecek son kişiyi bul!

# turn sırasına göre eleman seç toplama ekle. toplam 1000 üzeri olunca dur bir önceki elemanı yazdır
#turn'e göre sırala

SELECT c.person_name
FROM (
    SELECT turn, person_name, SUM(weight) OVER (ORDER BY turn) AS cumulative_sum
    FROM Queue
) c
JOIN Queue q 
ON c.person_name = q.person_name
WHERE c.cumulative_sum <= 1000
ORDER BY c.turn DESC
LIMIT 1;

