# Write your MySQL query statement below
# otobüse girebilecek son kişiyi bul!

# turn sırasına göre eleman seç toplama ekle. toplam 1000 üzeri olunca dur bir önceki elemanı yazdır
#turn'e göre sırala

SELECT person_name
FROM (
    SELECT turn, person_name, SUM(weight) OVER (ORDER BY turn) AS cumulative_sum
    FROM Queue
) c
WHERE cumulative_sum <= 1000
ORDER BY turn DESC
LIMIT 1;

