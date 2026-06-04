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

MILESTONE 6 : Selezionare tutti i corsi di laurea magistrale (38)

SELECT *
FROM `degrees`
WHERE `degrees`.`name` LIKE '%magistrale%';

MILESTONE 7 : Da quanti dipartimenti è composta l università? (12)

SELECT COUNT(*)
FROM `departments`
WHERE 1;

MILESTONE 8 : Quanti sono gli insegnanti che non hanno un numero di telefono? (50)

SELECT COUNT(*)
FROM `teachers`
WHERE `teachers`.`phone` IS NULL;

BONUS : Ho selezionato i nomi dei Dipartimenti che si trovano in una piazza

SELECT `name`
FROM `departments`
WHERE `departments`.`address` LIKE 'Piazza%';

BONUS : Ho selezionato gli studenti che sono nati nel 1990 e che non avevano il numero di registrazione.

SELECT *
FROM `students`
WHERE YEAR(`students`.`date_of_birth`) = 1990 && `students`.`registration_number` IS NULL;

BONUS : Ho selezionato gli insegnati che hanno come provider hotmail oppure quelli che non hanno un numero di telefono registrato 

SELECT *
FROM `teachers`
WHERE `teachers`.`email` LIKE '%@hotmail.com' || `teachers`.`phone` IS NULL;

BONUS : Ho selezionato tutti i corsi che valgono tra i 5 e i 10 crediti cfu, estremi compresi.

SELECT *
FROM `courses`
WHERE `courses`.`cfu` >= 5 && `courses`.`cfu` <= 10 ;

BONUS: Ho selezionato tutti i corsi che appartengono al primo anno E che hanno un numero di crediti cfu maggiore o uguale a 10 oppure un numero di crediti minore o uguale a 5.

SELECT *
FROM `courses`
WHERE `courses`.`year` = 1 && (`courses`.`cfu` <= 5 || `courses`.`cfu` >= 10);

BONUS: Ho selezionato tutti gli studenti nati prima del 1990, escludendo però quelli il cui cognome inizia con la lettera 'S'. 

SELECT *
FROM `students`
WHERE YEAR(`students`.`date_of_birth`) < 1990 && `students`.`surname` NOT LIKE 'S%';