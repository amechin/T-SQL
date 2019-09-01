/*Requête N 21 : Pour chaque professeurs, afficher sa date d’embauche, sa date
de dernière promotion, ainsi que le nombre d’années écoulées entre ces deux
dates*/

SELECT CONVERT(VARCHAR, P.DATE_ENTREE, 103) DATE_ENTREE, 
	CONVERT(VARCHAR, P.DER_PROM, 103)_DATE_DER_PROM, 
	DATEDIFF(YEAR, DATE_ENTREE, DER_PROM) NB_ANNEES_ECOULEES
FROM PROFESSEURS P

