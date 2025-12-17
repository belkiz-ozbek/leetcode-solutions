# Write your MySQL query statement below

#ANOTHER SOLUTION
SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);

#customer_id'ler kaç defa tekrar ediyor 
#SELECT customer_id
#FROM (
#    SELECT customer_id, COUNT(*) AS customer_id_tekrar_sayisi
#    FROM (
#        SELECT DISTINCT *
#        FROM Customer
#    ) c2
#    GROUP BY customer_id
#    ) c
#WHERE customer_id_tekrar_sayisi = 
#(
#    #kaç farklı product_id var
#    SELECT COUNT(*)
#    FROM Product
#) 
#
#
#

