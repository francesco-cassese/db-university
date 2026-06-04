MILESTONE 1 : Selezionare tutti gli studenti nati nel 1990 (160).

SELECT * 
FROM `students`
WHERE YEAR(`students`.`date_of_birth`) = 1990