/*Requ�te N 21 : Pour chaque professeurs, afficher sa date d�embauche, sa date
de derni�re promotion, ainsi que le nombre d�ann�es �coul�es entre ces deux
dates*/

SELECT CONVERT(VARCHAR, P.DATE_ENTREE, 103) DATE_ENTREE, 
	CONVERT(VARCHAR, P.DER_PROM, 103)_DATE_DER_PROM, 
	DATEDIFF(YEAR, DATE_ENTREE, DER_PROM) NB_ANNEES_ECOULEES
FROM PROFESSEURS P

