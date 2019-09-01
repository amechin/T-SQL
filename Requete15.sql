/*
Requête N 15 (2 méthodes): Afficher les points de Burton obtenus dans chaque
cours sur 100 plutôt que sur 20
*/

SELECT C.NOM, CAST(R.POINTS AS float)/20*100 POINT
FROM ELEVES E
JOIN RESULTATS R ON E.NUM_ELEVE = R.NUM_ELEVE
JOIN COURS C ON C.NUM_COURS = R.NUM_COURS
WHERE E.NOM = 'BURTON'

