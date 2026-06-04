MILESTONE 1 : Selezionare tutti gli studenti nati nel 1990 (160).

SELECT * 
FROM `students`
WHERE YEAR(`students`.`date_of_birth`) = 1990;

MILESTONE 2 : Selezionare tutti i corsi che valgono più di 10 crediti (479)

SELECT *
FROM `courses`
WHERE `courses`.`cfu` > 10;

MILESTONE 3 : Selezionare tutti gli studenti che hanno più di 30 anni

SELECT *
FROM `students`
WHERE `students`.`date_of_birth` > 1996;