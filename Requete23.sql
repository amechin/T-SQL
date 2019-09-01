/* Requ�te N 23 : Afficher le nom et la date d�entr�e des professeurs pour lesquels il
s�est �coul� plus de 50 mois entre la derni�re promotion et aujourd�hui
Utiliser la fonction DATEADD(interval, number, date)*/

SELECT P.NOM
FROM PROFESSEURS P
WHERE DATEDIFF(MONTH, DER_PROM, GETDATE()) > 50

