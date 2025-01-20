-- Database: U4-W3-L1

--DROP DATABASE IF EXISTS "U4-W3-L1";

/*
CREATE DATABASE "U4-W3-L1"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Italian_Italy.1252'
    LC_CTYPE = 'Italian_Italy.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
*/

/*
CREATE TABLE Clienti(
     numero_cliente SERIAL PRIMARY KEY,
	 nome VARCHAR(50) NOT NULL,
	 cognome VARCHAR(50) NOT NULL,
	 regione_residenza VARCHAR(50) NOT NULL,
	 data_nascita DATE NOT NULL
);

CREATE TABLE Prodotti (
    id_prodotto SERIAL PRIMARY KEY,
	descrizione VARCHAR(100) NOT NULL,
	in_produzione BOOLEAN NOT NULL,
	in_commercio BOOLEAN NOT NULL,
	data_attivazione DATE NOT NULL,
	data_disattivazione DATE
);

CREATE TABLE Fornitori(
    numero_fornitore SERIAL PRIMARY KEY,
	denominazione VARCHAR(50) NOT NULL,
	regione_residenza VARCHAR(50) NOT NULL
);

CREATE TABLE Fatture(
    numero_fattura SERIAL PRIMARY KEY,
	tipologia VARCHAR(50) NOT NULL,
	importo FLOAT NOT NULL,
	iva INTEGER NOT NULL,
	id_cliente INTEGER REFERENCES Clienti(numero_cliente),
	data_fattura DATE DEFAULT CURRENT_DATE,
	numero_fornitore INTEGER REFERENCES Fornitori(numero_fornitore)
);
*/

INSERT INTO Clienti(nome, cognome, regione_residenza, data_nascita) 
VALUES
('Giuliano','Torrisi','Sicilia','1999-02-27'),
('Mario','Rossi','Campania','2002-10-05'),
('Valerio','Giacchini','Emilia','1982-05-19');
('Francesco','Schettino','Emilia','1980-05-19');

INSERT INTO Prodotti(descrizione,in_produzione,in_commercio,data_attivazione,data_disattivazione)
VALUES
('Ford','TRUE','TRUE','1918-01-01',NULL),
('Toyota','TRUE','TRUE','2018-01-01',NULL),
('Mazda','FALSE','FALSE','1918-01-01','2020-01-01'),
('Ferrari','TRUE','TRUE','2017-01-01',NULL),
('Porsche','TRUE','TRUE','1918-01-01',NULL);

INSERT INTO Fornitori(denominazione,regione_residenza)
VALUES
('Brembo','Lombardia'),
('Enkkei','Molise'),
('BBS','Sicilia');

INSERT INTO Fatture(tipologia,importo,iva,id_cliente,data_fattura,numero_fornitore)
VALUES
('A',40000,20,1,'2024-01-01',2),
('A',10000,22,2,'2025-01-01',3),
('B',200,10,3,'2025-01-01',2),
('B',500,20,2,'2023-01-01',1),
('A',50000,22,3,'2024-01-01',3),
('B',60,0,4,'2023-01-01',1),
('A',10000,22,2,'2025-01-01',3),