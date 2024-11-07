CREATE DATABASE GESTION_DE_FLOT
USE GESTION_DE_FLOTTE

--CREATION TABLEAU VEHICULES

create table TABLEAU_VEHICULES(
Plaque_Immatriculation varchar (100),
Marque varchar (100),
Modéle varchar (100),
Année int,
Couleur varchar (100),
NIV varchar (150),
);


--CREATION TABLEAU PILOTES

create table TABLEAU_PILOTES(
License_Number varchar (100),
First_Name varchar (100),
Last_Name varchar (100),
Phone int,
Adresse varchar (100),
City varchar (100),
States varchar,
Zip_Code int,
);

--CREATION TABLEAU DEPLACEMENTS

create table TABLEAU_DEPLACEMENTS(
VehiculeId int,
DriverId int,
StartDate date,
EndDate date,
StartLocation varchar (100),
EndLocation varchar (100),
Distance varchar (100),
);


--CREATION TABLEAU D'ENTRETIEN

create table TABLEAU_ENTRETIEN(
VehiculeId int,
Maintenance_Date date ,
Descriptions varchar (250),
Coût money ,
);

--ENREGISTREMENTS DES DONNEES DANS TABLE VEHICULE

insert into TABLEAU_VEHICULES
values 
('ABC123', 'Toyota', 'Corolla' , 2020, 'blanc', '1HGCM82633A004352'),
('XYZ789', 'Ford', 'Fusion' , 2018, 'Bleu', '2HGCM82633A004353');

--REPONSE 3 SUPPRIMEZ LE PREMIER VÉHICULE DU TABLEAU VÉHICULES

delete from  TABLEAU_VEHICULES
where Plaque_Immatriculation = 'ABC123';


--REPONSE 5  METTEZ À JOUR LA COULEUR DU DEUXIÈME VÉHICULE DANS LE TABLEAU VÉHICULES SUR « ROUGE »
update TABLEAU_VEHICULES
set Couleur = 'Rouge'



select * from TABLEAU_VEHICULES

--ENREGISTREMENTS DES DONNEES DANS TABLE PILOTES

insert into TABLEAU_PILOTES
values 
('D1234567', 'Michael', 'Smith' , 1234567890, '123 Main St', 'Anytown', 'CA',12345),
('D7654321', 'Sarah', 'Connor' , 0987654321, '456 Elm St', 'Otherville', ' NY',54321 );


--REPONSE 7 METTEZ À JOUR LE NUMÉRO DE TÉLÉPHONE DU PREMIER CONDUCTEUR DANS LE TABLEAU CONDUCTEURS

update TABLEAU_PILOTES
set Phone = 222333444
where First_Name = 'Michael'


select * from TABLEAU_PILOTES



insert into TABLEAU_DEPLACEMENTS
values
(1, 1, '2024-07-01', '2024-07-02', 'Los Angeles', 'San Francisco',380),
(2, 2, '2024-07-03', '2024-07-04', 'New York', 'Washington DC',225);

-- REPONSE 4 INSÉREZ UN ENREGISTREMENT SUPPLÉMENTAIRE DANS LA TABLE VOYAGES

insert into TABLEAU_DEPLACEMENTS
values

(2, 1, '2024-07-05', '2024-07-06', 'Boston', 'Philadelphie',300);

-- REPONSE 8 SUPPRIMEZ LE VOYAGE AVEC TRIPID = 2 DE LA TABLE VOYAGES

delete from TABLEAU_DEPLACEMENTS
where DriverId = 2

select * from TABLEAU_DEPLACEMENTS


insert into TABLEAU_ENTRETIEN
values
(1, '2024-06-15', 'Vidange dhuile', 50.00 ),
(2, '2024-06-20', 'Remplacement des pneus', 300.00 );

--REPONSE 2 METTRE À JOUR LE COÛT DU DEUXIÈME ENREGISTREMENT DE MAINTENANCE À 350,00 $.

update TABLEAU_ENTRETIEN
set Coût = 350.00
where VehiculeId = 2 

-- REPONSE 6 INSÉREZ UN NOUVEL ENREGISTREMENT DE MAINTENANCE DANS LA TABLE MAINTENANCE 

insert into TABLEAU_ENTRETIEN
values
(1, '2024-07-10', 'Inspection des freins', 100.00 );





select * from TABLEAU_ENTRETIEN