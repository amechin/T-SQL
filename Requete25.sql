/*Requête N 25 : Afficher par ordre décroissant les points de Irving obtenus dans
chaque cours, sur 100 plutôt que sur 20 (2 méthodes)*/

SELECT E.NOM, CAST(R.POINTS AS FLOAT) * 5
FROM ELEVES E
JOIN RESULTATS R ON R.NUM_ELEVE = E.NUM_ELEVE
WHERE E.NOM = 'IRVING'
ORDER BY R.POINTS DESC