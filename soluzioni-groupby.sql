-- MILESTONE 1: Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(`s`.`enrolment_date`) AS `enrollment_year`, COUNT(*) AS `enrolments`
FROM `students` AS `s`
WHERE 1
GROUP BY `enrollment_year`
ORDER BY `enrollment_year`; 