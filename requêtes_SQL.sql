-- create by youssef chouabi 
-- n*appoge:2330884

-- a. Liste des réservations avec nom du client et ville de l’hôtel
SELECT R.Id_Reservation, C.Nom_complet, H.Ville
FROM Reservation R
JOIN Client C ON R.Id_Client = C.Id_Client
JOIN Chambre Ch ON R.Id_Chambre = Ch.Id_Chambre
JOIN Hotel H ON Ch.Id_Hotel = H.Id_Hotel;

-- b. Clients habitant à Paris
SELECT * FROM Client WHERE Ville = 'Paris';

-- c. Nombre de réservations par client
SELECT C.Nom_complet, COUNT(R.Id_Reservation) AS Nb_Reservations
FROM Client C
LEFT JOIN Reservation R ON C.Id_Client = R.Id_Client
GROUP BY C.Id_Client;

-- d. Nombre de chambres par type
SELECT T.Type, COUNT(C.Id_Chambre) AS Nb_Chambres
FROM Type_Chambre T
LEFT JOIN Chambre C ON T.Id_Type = C.Id_Type
GROUP BY T.Id_Type;

-- e. Chambres non réservées entre deux dates
SELECT Ch.*
FROM Chambre Ch
WHERE NOT EXISTS (
    SELECT 1
    FROM Reservation R
    WHERE R.Id_Chambre = Ch.Id_Chambre
    AND R.Date_depart >= '2025-06-01'  -- Date de début saisie
    AND R.Date_arrivee <= '2025-06-30' -- Date de fin saisie
);

