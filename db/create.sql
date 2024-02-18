--
-- create tables
--

-- feedback GEE 30 jan 2024
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

CREATE TABLE Kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  PrimaireKleur varchar(15),
  SecundaireKleur varchar(15)
);

CREATE TABLE soort (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  soort VARCHAR(15)
);

CREATE TABLE patroon (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  patroon VARCHAR(15)
);

CREATE TABLE soortpatroon (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  patroon_id VARCHAR(15),
  soort_id VARCHAR(15)
);


--insertions --->


insert into products (name, description, code, price) values ('holy kow', 'een niet zo standaard koe met heilige krachten.', '1', 700);
insert into products (name, description, code, price) values ('schaap', 'wit schaap met een hele mooie vacht.', '2', 700);
insert into products (name, description, code, price) values ('paard', 'mooi robust beest die de kracht heeft om zelfs een caravan te trekken.', '3', 2500);
insert into products (name, description, code, price) values ('zwaan', 'wist je dat zwanen maar een halve hart hebben?', '4', 300);
insert into products (name, description, code, price) values ('fazant', 'fazanten stelen vaak eieren daarom wil ik ook van dit exemplaar af ', '5', 50);
insert into products (name, description, code, price) values ('egel', 'auw dat doet pijn!', '6', 30);
insert into products (name, description, code, price) values ('kaaskoe', 'en standaard koe die heel erg houd van kaas', '7', 750);
insert into products (name, description, code, price) values ('kip', 'een kleine kip die veel eieren legt', '8', 32);
insert into products (name, description, code, price) values ('zwart schaap', 'een mooi schaap met een donkere vacht', '9', 700);
insert into products (name, description, code, price) values ('koe', 'een standaard koe', '10',676);
insert into products (name, description, code, price) values ('kalf', 'een klein kalf met een mooie vacht  ','11', 600);
insert into products (name, description, code, price) values ('eend', 'een vogel op het water', '12', 20);

insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('zwart', 'wit');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('wit', 'zwart');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('bruin', 'wit');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('wit', 'oranje');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('bruin', 'zwart');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('bruin', 'zwart');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('wit', 'zwart');
insert into kleur (PrimaireKleur,SecundaireKleur ) values ('bruin', 'oranje');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('zwart', 'grijs');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('bruin', 'grijs');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('zwart', 'wit');
insert into Kleur (PrimaireKleur,SecundaireKleur ) values ('wit', 'oranje');

insert into soort (id, soort) values ('1', 'viervoeter');
insert into soort (id, soort) values ('2', 'gevogelte');
insert into soort (id, soort) values ('3', 'zeedier');

insert into patroon (id, patroon) values('1', 'gevlekt');
insert into patroon (id, patroon) values('2', 'gestreept');
insert into patroon (id, patroon) values('3', 'gaten');
insert into patroon (id, patroon) values('4', 'gestipt');
insert into patroon (id, patroon) values('5', 'fade');

insert into soortpatroon (soort_id, patroon_id ) values (1, 1);
insert into soortpatroon (soort_id, patroon_id ) values (1, 5);
insert into soortpatroon (soort_id, patroon_id ) values (1, 5);
insert into soortpatroon (soort_id, patroon_id ) values (2, 5);
insert into soortpatroon (soort_id, patroon_id ) values (2, 4);
insert into soortpatroon (soort_id, patroon_id ) values (1, 3);
insert into soortpatroon (soort_id, patroon_id ) values (1, 1);
insert into soortpatroon (soort_id, patroon_id ) values (1, 5);
insert into soortpatroon (soort_id, patroon_id ) values (1, 5);
insert into soortpatroon (soort_id, patroon_id ) values (1, 1);
insert into soortpatroon (soort_id, patroon_id ) values (1, 1);
insert into soortpatroon (soort_id, patroon_id ) values (2, 5);