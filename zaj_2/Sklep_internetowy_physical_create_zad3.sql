-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-11-02 22:53:35.704

-- tables
-- Table: Dostawy
CREATE TABLE Dostawy (
    id_firmy_kurierskiej int  NOT NULL,
    nip int  NOT NULL,
    adres varchar(50)  NOT NULL,
    nazwa varchar(50)  NOT NULL,
    CONSTRAINT Dostawy_pk PRIMARY KEY  (id_firmy_kurierskiej)
);

-- Table: Klienci
CREATE TABLE Klienci (
    id_klienta int  NOT NULL,
    numer_telefonu varchar(12)  NOT NULL,
    adres varchar(50)  NOT NULL,
    imie varchar(50)  NOT NULL,
    nazwisko varchar(50)  NOT NULL,
    CONSTRAINT Klienci_pk PRIMARY KEY  (id_klienta)
);

-- Table: Produkty
CREATE TABLE Produkty (
    id_produktu int  NOT NULL,
    wydawca varchar(50)  NOT NULL,
    numer_isbn int  NOT NULL,
    tytul varchar(50)  NOT NULL,
    autor varchar(50)  NOT NULL,
    islosc_stron int  NOT NULL,
    CONSTRAINT Produkty_pk PRIMARY KEY  (id_produktu)
);

-- Table: Sprzedaz
CREATE TABLE Sprzedaz (
    data_sprzedazy date  NOT NULL,
    id_klienta int  NOT NULL,
    id_produktu int  NOT NULL,
    id_firmy_kurierskiej int  NOT NULL,
    Klienci_id_klienta int  NOT NULL,
    Dostawy_id_firmy_kurierskiej int  NOT NULL,
    Produkty_id_produktu int  NOT NULL
);

-- foreign keys
-- Reference: Sprzedaz_Dostawy (table: Sprzedaz)
ALTER TABLE Sprzedaz ADD CONSTRAINT Sprzedaz_Dostawy
    FOREIGN KEY (Dostawy_id_firmy_kurierskiej)
    REFERENCES Dostawy (id_firmy_kurierskiej);

-- Reference: Sprzedaz_Klienci (table: Sprzedaz)
ALTER TABLE Sprzedaz ADD CONSTRAINT Sprzedaz_Klienci
    FOREIGN KEY (Klienci_id_klienta)
    REFERENCES Klienci (id_klienta);

-- Reference: Sprzedaz_Produkty (table: Sprzedaz)
ALTER TABLE Sprzedaz ADD CONSTRAINT Sprzedaz_Produkty
    FOREIGN KEY (Produkty_id_produktu)
    REFERENCES Produkty (id_produktu);

-- End of file.

