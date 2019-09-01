SELECT NOM, SPECIALITE
FROM PROFESSEURS WHERE SPECIALITE 
IN ( SELECT SPECIALITE 
	FROM PROFESSEURS 
	GROUP BY SPECIALITE 
	HAVING COUNT(SPECIALITE) =2  ) 
ORDER BY NOM


select    prof.NOM, ISNULL(prof.SPECIALITE, 'Spécialité inconnue') as specialite
from    PROFESSEURS    prof
where    ISNULL(prof.SPECIALITE, 'Spécialité inconnue') in (


    select    ISNULL(PROFESSEURS.SPECIALITE, 'Spécialité inconnue')
    from    PROFESSEURS
    group    by PROFESSEURS.SPECIALITE
    having    count(ISNULL(PROFESSEURS.SPECIALITE, 'Spécialité inconnue')) = 2

)