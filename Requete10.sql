SELECT e.NOM, e.PRENOM
FROM ELEVES e
JOIN ACTIVITES_PRATIQUEES a ON e.NUM_ELEVE = a.NUM_ELEVE
WHERE a.NOM = 'Surf' AND a.NIVEAU = 1
