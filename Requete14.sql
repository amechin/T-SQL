SELECT P.NOM,
	((CAST(P.SALAIRE_ACTUEL AS FLOAT) / P.SALAIRE_BASE) - 1)*100 PROMO
FROM PROFESSEURS P
WHERE ((CAST(P.SALAIRE_ACTUEL AS FLOAT) / P.SALAIRE_BASE) - 1)*100 > 25




SELECT T1.NOM,
		T1.PROMO
FROM (
	SELECT P.NOM,
		((CAST(P.SALAIRE_ACTUEL AS FLOAT) / P.SALAIRE_BASE) - 1)*100 PROMO
	FROM PROFESSEURS P
	)T1
WHERE T1.PROMO > 25