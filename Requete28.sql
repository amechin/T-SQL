/* Requête N 28 : Afficher la note minimale, la note maximale et la moyenne des
notes pour chaque cours */

SELECT R.NUM_COURS, MIN(R.POINTS) NOTE_MIN, MAX(R.POINTS) NOTE_MAX,AVG(CAST(R.POINTS AS FLOAT)) NOTE_MOY
FROM COURS C
JOIN RESULTATS R ON R.NUM_COURS=C.NUM_COURS
GROUP BY R.NUM_COURS