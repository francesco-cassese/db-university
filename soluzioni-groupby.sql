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

-- MILESTONE 3: Calcolare la media dei voti di ogni appello d'esame

SELECT `es`.`exam_id` AS `exam` , AVG(`es`.`vote`) AS `media`
FROM `exam_student` AS `es`
WHERE 1
GROUP BY `exam`

-- MILESTONE 4: Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT `d`.`name`, COUNT(`de`.`id`) AS `courses`
FROM `departments` AS `d`
	JOIN `degrees` AS `de`
		ON `d`.`id` = `de`.`department_id`
WHERE 1
GROUP BY `d`.`id`