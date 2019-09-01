/*
Requête N 29 : Pour chaque élève, afficher la note minimale, la note maximale et
la moyenne des notes pour chaque cours
*/

SELECT C.NOM, E.NOM, MIN(R.POINTS) NOTE_MIN, MAX(R.POINTS) NOTE_MAX,AVG(CAST(R.POINTS AS FLOAT)) NOTE_MOY
FROM ELEVES E
JOIN RESULTATS R ON R.NUM_ELEVE=E.NUM_ELEVE
JOIN COURS C ON C.NUM_COURS=R.NUM_COURS
GROUP BY R.NUM_COURS, E.NOM, C.NOM
ORDER BY C.NOM, E.NOM ASC