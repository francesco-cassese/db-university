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

MILESTONE 4 : Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)

SELECT *
FROM `courses`
WHERE `courses`.`period` = 'I semestre' && `courses`.`year` = 1; 

MILESTONE 5 : Selezionare tutti gli appelli d esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

SELECT *
FROM `exams`
WHERE `exams`.`date` = '2020/06/20' && `exams`.`hour` > '14:00:00'; 