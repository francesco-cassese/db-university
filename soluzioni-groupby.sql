-- MILESTONE 1: Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(`s`.`enrolment_date`) AS `enrollment_year`, COUNT(*) AS `enrolments`
FROM `students` AS `s`
WHERE 1
GROUP BY `enrollment_year`
ORDER BY `enrollment_year`; 

-- MILESTONE 2: Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT `t`.`office_address`, COUNT(*) AS `teacher_offices`
FROM `teachers` AS `t`
WHERE 1
GROUP BY `t`.`office_address`;