CREATE TABLE Klienci (
    ID_klienta SERIAL PRIMARY KEY,
    Numer_telefonu VARCHAR(15),
    Adres VARCHAR(255),
    Imie VARCHAR(50),
    Nazwisko VARCHAR(50)
);

CREATE TABLE Dostawy (
    ID_firmy_kurierskiej SERIAL PRIMARY KEY,
    NIP VARCHAR(15),
    Adres VARCHAR(255),
    Nazwa VARCHAR(100)
);

CREATE TABLE Produkty (
    ID_produktu SERIAL PRIMARY KEY,
    Wydawca VARCHAR(100),
    Numer_ISBN VARCHAR(13),
    Tytul VARCHAR(255),
    Autor VARCHAR(100),
    Ilosc_stron INT
);

CREATE TABLE Sprzedaz (
    SaleID SERIAL PRIMARY KEY,
    Data_sprzedazy DATE,
    ID_klienta INT,
    ID_firmy_kurierskiej INT,
    ID_produktu INT,
    Ilosc_sprzedanych INT,
    Cena_sprzedazy DECIMAL(10, 2),
    Kwota_sprzedazy DECIMAL(10, 2)
);