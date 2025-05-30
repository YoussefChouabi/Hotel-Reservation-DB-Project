-- create by youssef chouabi 
-- n*appoge:2330884

-- Création de la base de données
CREATE DATABASE  base_donne;
USE base_donne;

-- Table Hôtel
CREATE TABLE Hotel (
    Id_Hotel INT AUTO_INCREMENT PRIMARY KEY,
    Ville VARCHAR(255),
    Pays VARCHAR(255),
    Code_postal INT
);

-- Table Client
CREATE TABLE Client (
    Id_Client INT AUTO_INCREMENT PRIMARY KEY,
    Adresse VARCHAR(255),
    Ville VARCHAR(255),
    Code_postal INT,
    Email VARCHAR(255),
    Telephone VARCHAR(20),
    Nom_complet VARCHAR(255)
);

-- Table Type_Chambre
CREATE TABLE Type_Chambre (
    Id_Type INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR(50),
    Tarif DECIMAL(10, 2)
);

-- Table Chambre
CREATE TABLE Chambre (
    Id_Chambre INT AUTO_INCREMENT PRIMARY KEY,
    Numero INT,
    Etage INT,
    Fumeur BOOLEAN,
    Id_Hotel INT,
    Id_Type INT,
    FOREIGN KEY (Id_Hotel) REFERENCES Hotel(Id_Hotel),
    FOREIGN KEY (Id_Type) REFERENCES Type_Chambre(Id_Type)
);

-- Table Réservation
CREATE TABLE Reservation (
    Id_Reservation INT AUTO_INCREMENT PRIMARY KEY,
    Date_arrivee DATE,
    Date_depart DATE,
    Id_Client INT,
    Id_Chambre INT,
    FOREIGN KEY (Id_Client) REFERENCES Client(Id_Client),
    FOREIGN KEY (Id_Chambre) REFERENCES Chambre(Id_Chambre)
);

-- Table Evaluation
CREATE TABLE Evaluation (
    Id_Evaluation INT AUTO_INCREMENT PRIMARY KEY,
    Date_eval DATE,
    Note INT,
    Commentaire TEXT,
    Id_Client INT,
    FOREIGN KEY (Id_Client) REFERENCES Client(Id_Client)
);