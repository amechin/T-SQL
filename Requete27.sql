/*
Requête N 27 : Obtenir le nom et le poids des élèves de 1ère année plus lourds
que n’importe quel élève de 2ème année
*/

SELECT E.NOM, E.POIDS
FROM ELEVES E
WHERE E.ANNEE = 1 AND E.POIDS > (
	SELECT MAX(ELEVES.POIDS)
	FROM ELEVES
	WHERE ANNEE = 2
	)

