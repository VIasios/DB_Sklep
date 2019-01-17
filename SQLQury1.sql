CREATE TABLE typy
(
	id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nazwa VARCHAR(50)
);
GO

CREATE TABLE skladniki
(
	id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nazwa VARCHAR(100),
	idTypu INT FOREIGN KEY REFERENCES typy(id),
	cena DECIMAL(9,2),
	dostepnosc INT
);
GO

CREATE TABLE alergeny
(
	id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	idSkladnika INT FOREIGN KEY REFERENCES skladniki(id),
	nazwa VARCHAR(100)
);
GO

CREATE TABLE miejscowosci
(
	id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nazwa VARCHAR(50),
	kodPocztowy INT
);
GO

CREATE TABLE uzytkownicy
(
	id INT  NOT NULL PRIMARY KEY IDENTITY(1,1),
	nazwaUzytkownika VARCHAR(50),
	imie VARCHAR(50),
	nazwisko VARCHAR(50),
	email VARCHAR(50),
	haslo VARCHAR(50),
	idMiejscowosci INT FOREIGN KEY REFERENCES miejscowosci(id),
	adres VARCHAR(100),
	kraj VARCHAR(50),
	numerTelefonu INT,
	idTypu INT FOREIGN KEY REFERENCES typy(id), 
	idAlergena INT FOREIGN KEY REFERENCES alergeny(id)
);
