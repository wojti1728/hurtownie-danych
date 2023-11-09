-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-11-05 19:53:04.104

-- tables
-- Table: Aktualne Pordukty
CREATE TABLE Aktualne Pordukty (
    id_produktu int  NOT NULL,
    nazwa_produktu int  NOT NULL,
    magazyn_id_magazynu int  NOT NULL,
    CONSTRAINT Aktualne Pordukty_pk PRIMARY KEY  (id_produktu)
);

-- Table: Magazyn
CREATE TABLE Magazyn (
    id_magazynu int  NOT NULL,
    adres varchar(100)  NOT NULL,
    kraj_polozenia varchar(50)  NOT NULL,
    CONSTRAINT Magazyn_pk PRIMARY KEY  (id_magazynu)
);

-- Table: Poprzednie Stany Magazynu
CREATE TABLE Poprzednie Stany Magazynu (
    id_stanu int  NOT NULL,
    ilosc_produktow int  NOT NULL,
    data_stanu date  NOT NULL,
    Aktualne Pordukty_id_produktu int  NOT NULL,
    CONSTRAINT Poprzednie Stany Magazynu_pk PRIMARY KEY  (id_stanu)
);

-- Table: Produkty Wycofane
CREATE TABLE Produkty Wycofane (
    id_produktu int  NOT NULL,
    nazwa_produktu varchar(100)  NOT NULL,
    data_wycofania date  NOT NULL,
    Magazyn_id_magazynu int  NOT NULL,
    CONSTRAINT Produkty Wycofane_pk PRIMARY KEY  (id_produktu)
);

-- Table: Stan Magazynu
CREATE TABLE Stan Magazynu (
    id_stanu int  NOT NULL,
    ilosc_produktow bigint  NOT NULL,
    produkty_aktualne_id_produktu int  NOT NULL,
    CONSTRAINT Stan Magazynu_pk PRIMARY KEY  (id_stanu)
);

-- foreign keys
-- Reference: Poprzednie Stany Magazynu_Aktualne Pordukty (table: Poprzednie Stany Magazynu)
ALTER TABLE Poprzednie Stany Magazynu ADD CONSTRAINT Poprzednie Stany Magazynu_Aktualne Pordukty
    FOREIGN KEY (Aktualne Pordukty_id_produktu)
    REFERENCES Aktualne Pordukty (id_produktu);

-- Reference: Produkty Wycofane_Magazyn (table: Produkty Wycofane)
ALTER TABLE Produkty Wycofane ADD CONSTRAINT Produkty Wycofane_Magazyn
    FOREIGN KEY (Magazyn_id_magazynu)
    REFERENCES Magazyn (id_magazynu);

-- Reference: produkty_aktualne_magazyn (table: Aktualne Pordukty)
ALTER TABLE Aktualne Pordukty ADD CONSTRAINT produkty_aktualne_magazyn
    FOREIGN KEY (magazyn_id_magazynu)
    REFERENCES Magazyn (id_magazynu);

-- Reference: stan_magazynowy_produkty_aktualne (table: Stan Magazynu)
ALTER TABLE Stan Magazynu ADD CONSTRAINT stan_magazynowy_produkty_aktualne
    FOREIGN KEY (produkty_aktualne_id_produktu)
    REFERENCES Aktualne Pordukty (id_produktu);

-- End of file.

