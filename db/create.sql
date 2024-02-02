--
-- create tables
--

-- feedback GEE 30 jan 2024

--
-- die tabellen zijn met elkaar verbonden via 1:n of n:m relaties
-- bekijk eens de video uit de opdracht over tabellen toeveogen voor inspriratie
-- een voorbeeld van een extra tabel die voor bijna alles wat je verkoopt kan is "merk"


CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

CREATE TABLE Pimairekleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur varchar(15)
);

CREATE TABLE Secundairekleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur varchar(15)
);

CREATE TABLE soort {
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  soort VARCHAR(15)
};

CREATE TABLE patroon (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  patroon VARCHAR(15)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('holy kow', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '1', 10.5);
insert into products (name, description, code, price) values ('schaap jesse', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '2', 11);
insert into products (name, description, code, price) values ('groen paard, The', 'Pellentesque at nulla. Suspendisse potenti.', '3', 13.5);
insert into products (name, description, code, price) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '4', 13.5);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '5', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '6', 14);
insert into products (name, description, code, price) values ('kaaskoe', 'kaaskoe', '7', 881);
insert into products (name, description, code, price) values ('kleine kipje', 'kleine kip', '8', 451);
insert into products (name, description, code, price) values ('lelijk schaap', 'niet zo mooi schaap', '9', 122);
insert into products (name, description, code, price) values ('normale koe', 'koe', '10', 17);
insert into products (name, description, code, price) values ('kalf', 'kleine koe','11', 129);
insert into products (name, description, code, price) values ('eend', 'water vogel', '12', 2);

insert into Primairekleur (id, kleur) values ('1', 'wit');
insert into Primairekleur (id, kleur) values ('2', 'zwart');
insert into Primairekleur (id, kleur) values ('3', 'bruin');
insert into Primairekleur (id, kleur) values ('4', 'groen');
insert into Primairekleur (id, kleur) values ('5', 'blauw');
insert into Primairekleur (id, kleur) values ('6', 'grijs');
insert into Primairekleur (id, kleur) values ('7', 'geel');
insert into Primairekleur (id, kleur) values ('8', 'rood');

insert into SecundaireKleur (id, kleur) values ('1', 'wit');
insert into SecundaireKleur (id, kleur) values ('2', 'zwart');
insert into SecundaireKleur (id, kleur) values ('3', 'bruin');
insert into SecundaireKleur (id, kleur) values ('4', 'groen');
insert into SecundaireKleur (id, kleur) values ('5', 'blauw');
insert into SecundaireKleur (id, kleur) values ('6', 'grijs');
insert into SecundaireKleur (id, kleur) values ('7', 'geel');
insert into SecundaireKleur (id, kleur) values ('8', 'rood');

insert into soort (id, soort) values ('1', 'viervoeter');
insert into soort (id, soort) values ('2', 'gevogelte');
insert into soort (id, soort) values ('3', 'zeedier');

insert into patroon (id, patroon) values('1', 'gevlekt');
insert into patroon (id, patroon) values('2', 'gestreept');
insert into patroon (id, patroon) values('3', 'gaten');
insert into patroon (id, patroon) values('4', 'gestipt');
insert into patroon (id, patroon) values('5', 'fade');