-- MILESTONE 1: Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT `s`.`name`,`s`.`surname`, `d`.`name`
FROM `students` AS `s`
	JOIN `degrees` AS `d`
		ON `s`.`degree_id` = `d`.`id`
WHERE `d`.`name` = 'Corso di Laurea in economia'

-- MILESTONE 2: Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT `d`.`name`, `d`.`level`, `de`.`name`
FROM `degrees` AS `d`
	JOIN `departments` AS `de`
		ON `d`.`department_id` = `de`.`id`
WHERE `d`.`level` = 'magistrale' AND `de`.`name` = 'Dipartimento di Neuroscienze';

-- MILESTONE 3: Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT `t`.`name`, `t`.`surname`, `c`.`name` AS `course_name` 
FROM `teachers` AS `t`
	JOIN `course_teacher` AS `ct`
		ON `t`.`id` = `ct`.`teacher_id`
	JOIN `courses` AS `c`
		ON `c`.`id` = `ct`.`course_id`
WHERE `t`.`id` = 44;

-- MILESTONE 4: Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti
-- e il relativo dipartimento, in ordine alfabetico per cognome e nome.

SELECT `s`.`name`, `s`.`surname`, `d`.`name`, `de`.`name`
FROM `students` AS `s`
	JOIN `degrees` AS `d`
		ON `s`.`degree_id` = `d`.`id`
	JOIN `departments` AS `de`
		ON `de`.`id` = `d`.`department_id`
WHERE 1
ORDER BY `s`.`surname`, `s`.`name`;

-- MILESTONE 5: Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT `d`.`name` AS `degrees_name`, `c`.`name` AS `couse_name`, `t`.`name`, `t`.`surname`
FROM `degrees` AS `d`
	JOIN `courses` AS `c`
		ON `c`.`degree_id` = `d`.`id`
	JOIN `course_teacher` AS `ct`
		ON `c`.`id` = `ct`.`course_id`
	JOIN `teachers` AS `t`
        ON `t`.`id` = `ct`.`teacher_id`
WHERE 1;