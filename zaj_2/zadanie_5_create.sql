-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-11-05 19:43:13.165

-- tables
-- Table: Aktualna Ocena
CREATE TABLE Aktualna Ocena (
    id_zapisu int  NOT NULL,
    ocena int  NOT NULL,
    Pracownicy_id_pracownika int  NOT NULL,
    CONSTRAINT Aktualna Ocena_pk PRIMARY KEY  (id_zapisu)
);

-- Table: Poprzednie oceny
CREATE TABLE Poprzednie oceny (
    id_zapisu int  NOT NULL,
    ocena int  NOT NULL,
    data_oceny date  NOT NULL,
    Pracownicy_id_pracownika int  NOT NULL,
    CONSTRAINT Poprzednie oceny_pk PRIMARY KEY  (id_zapisu)
);

-- Table: Pracownicy
CREATE TABLE Pracownicy (
    id_pracownika int  NOT NULL,
    PESEL bigint  NOT NULL,
    Adres varchar(100)  NOT NULL,
    wynagrodzenie decimal(15,2)  NOT NULL,
    CONSTRAINT Pracownicy_pk PRIMARY KEY  (id_pracownika)
);

-- foreign keys
-- Reference: ocena_aktualna_Pracownicy (table: Aktualna Ocena)
ALTER TABLE Aktualna Ocena ADD CONSTRAINT ocena_aktualna_Pracownicy
    FOREIGN KEY (Pracownicy_id_pracownika)
    REFERENCES Pracownicy (id_pracownika);

-- Reference: ocena_historyczna_Pracownicy (table: Poprzednie oceny)
ALTER TABLE Poprzednie oceny ADD CONSTRAINT ocena_historyczna_Pracownicy
    FOREIGN KEY (Pracownicy_id_pracownika)
    REFERENCES Pracownicy (id_pracownika);

-- End of file.

