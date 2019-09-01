SELECT NOM, SPECIALITE
FROM PROFESSEURS WHERE SPECIALITE 
IN ( SELECT SPECIALITE 
	FROM PROFESSEURS 
	GROUP BY SPECIALITE 
	HAVING COUNT(SPECIALITE) =2  ) 
ORDER BY NOM


select    prof.NOM, ISNULL(prof.SPECIALITE, 'Sp�cialit� inconnue') as specialite
from    PROFESSEURS    prof
where    ISNULL(prof.SPECIALITE, 'Sp�cialit� inconnue') in (


    select    ISNULL(PROFESSEURS.SPECIALITE, 'Sp�cialit� inconnue')
    from    PROFESSEURS
    group    by PROFESSEURS.SPECIALITE
    having    count(ISNULL(PROFESSEURS.SPECIALITE, 'Sp�cialit� inconnue')) = 2

)