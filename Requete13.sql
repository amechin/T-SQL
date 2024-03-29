SELECT P.NOM, P.SALAIRE_ACTUEL, (CAST(P.SALAIRE_ACTUEL AS FLOAT) - P.SALAIRE_BASE)/12 AUGMENTATION
FROM PROFESSEURS P


SELECT P.NOM, 
	P.SALAIRE_ACTUEL/12 SALAIRE_MENSUEL, 
	(P.SALAIRE_ACTUEL - P.SALAIRE_BASE)/DATEDIFF(MONTH, P.DATE_ENTREE, DER_PROM) PROMOTION_MENSUEL
FROM PROFESSEURS P