# Write your MySQL query statement below
#ANOTHER SOLUTION
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%' OR 
      conditions LIKE '% DIAB1%';


#WITH
#DIAB1_Patient_Id AS(
#    SELECT patient_id
#    FROM Patients,
#    JSON_TABLE(
#      CONCAT('["', REPLACE(conditions, ' ', '","'), '"]'),
#      '$[*]' COLUMNS (disease VARCHAR(100) PATH '$')
#    ) jt
#    WHERE disease LIKE 'DIAB1%'
#)
#
#SELECT p.patient_id, patient_name, conditions
#FROM Patients p
#INNER JOIN DIAB1_Patient_Id dp
#ON p.patient_id = dp.patient_id
