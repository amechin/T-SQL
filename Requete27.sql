/*
Requ�te N 27 : Obtenir le nom et le poids des �l�ves de 1�re ann�e plus lourds
que n�importe quel �l�ve de 2�me ann�e
*/

SELECT E.NOM, E.POIDS
FROM ELEVES E
WHERE E.ANNEE = 1 AND E.POIDS > (
	SELECT MAX(ELEVES.POIDS)
	FROM ELEVES
	WHERE ANNEE = 2
	)

