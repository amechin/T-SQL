/*Requête N 20 : Quelle est l’augmentation mensuelle moyenne des salaires des
professeurs de C++ ? (utiliser la fonction AVG)*/


SELECT AVG((((CAST(P.SALAIRE_ACTUEL AS FLOAT)/P.SALAIRE_BASE)) - 1) * 100)
FROM PROFESSEURS P
WHERE P.SPECIALITE = 'C/C++'

