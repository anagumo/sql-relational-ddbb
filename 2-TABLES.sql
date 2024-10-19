/* Theory
Split tasks:
More common types: CHAR, VCHAR, INT, DECIMAL, BOOL
LOB Large Objects: images
Id ussally an int
All registers have desc, insert and modification properties
Primary Key identify every column in a table, is unique
Normal forms:
f1 not repeat data and have primary key, 
f2 attributes depends just of its primary key, 
f3 not dependency between columns 
*/

USE SPRINGFIELD;
/* create main table
create table if not exists CHARACTERS
(id_personaje INT,
desc_personaje VARCHAR(255),
id_family INT,
id_genre INT,
id_status INT,
id_address INT,
id_ocupation INT,
id_office INT,
date_insert DATETIME,
date_modification DATETIME);*/
/* alter table commands
SHOW COLUMNS FROM SPRINGFIELD.PERSONAJES;
SHOW TABLES FROM SPRINGFIELD;
SELECT * FROM CHARACTERS;
RENAME TABLE PERSONAJES TO NEW_TABLE_NAME;
DROP TABLE PERSONAJES;
ALTER TABLE CHARACTERS CHANGE date_modification date_modification DATE;
ALTER TABLE CHARACTERS CHANGE desc_personaje desc_character varchar(255); change name and type
ALTER TABLE CHARACTERS CHANGE desc_personaje varchar(255); change just type
ALTER TABLE PERSONAJES ADD new_property TYPE; add a new property
ALTER TABLE PERSONAJES ADD new_property TYPE POSITION; add a new property at a specific position
ALTER TABLE PERSONAJES ADD new_property TYPE AFTER property;
*/
/* add data about columns
DROP TABLE CHARACTERS;
CREATE TABLE CHARACTERS
(id_personaje INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
desc_personaje VARCHAR(255),
id_family INT,
id_genre INT,
id_status INT,
id_address INT,
id_ocupation INT,
id_office INT,
date_insert DATETIME,
date_modification DATETIME);

show columns from SPRINGFIELD.CHARACTERS;
*/
/* create tables
create table if not exists mascotas
(id_mascota int unsigned not null auto_increment primary key,
desc_mascota varchar(255),
id_family int,
fecha_insert datetime,
fecha_modification datetime);

create table if not exists FAMILIES
(id_family int unsigned not null auto_increment primary key,
desc_family varchar(255),
date_insert datetime,
date_modification datetime);

create table if not exists OCUPATIONS
(id_ocupation int unsigned not null auto_increment primary key,
desc_ocupation varchar(255),
date_insert datetime,
date_modification datetime);

create table if not exists GENRES
(id_genre int unsigned not null auto_increment primary key,
desc_genre varchar(255),
date_insert datetime,
date_modification datetime);

create table if not exists STATUS
(id_status int unsigned not null auto_increment primary key,
desc_status varchar(255),
date_insert datetime,
date_modification datetime);

create table if not exists ADRESSES
(id_address int unsigned not null auto_increment primary key,
desc_address varchar(255),
id_ciudad int,
date_insert datetime,
date_modification datetime);

create table if not exists CITIES
(id_city int unsigned not null auto_increment primary key,
desc_city varchar(255),
date_insert datetime,
date_modification datetime);

create table if not exists frases
(id_frase int unsigned not null auto_increment primary key,
desc_frase varchar(255),
id_personaje int,
date_insert datetime,
date_modificacion datetime

show tables from SPRINGFIELD;*/
/* use distinct
select count(*) from aux_profesiones;
select distinct descripcion from aux_profesiones;
select count(distinct descripcion) from aux_profesiones;

insert into ocupations (desc_ocupation, date_insert, date_modification)
select distinct descripcion, now(), now() from aux_profesiones;

select * from ocupations;
drop table aux_profesiones
*/
/*load data local infile '/Users/ari/Downloads/frases.txt'
INTO TABLE frases
FIELDS TERMINATED BY '|' ENCLOSED BY '' ESCAPED BY'';

SELECT * FROM frases;*/
/* creating foreing keys

alter table personajes
add foreign key fk_fam_pers(id_familia)
references familias(id_familia);

alter table personajes
add foreign key fk_sex_pers(id_sexo)
references sexos(id_sexo);

alter table personajes
add foreign key fk_lug_pers(id_lugar_residencia)
references lugares(id_lugar);

alter table personajes
add foreign key fk_lugp_pers(id_lugar_profesion)
references lugares(id_lugar);

alter table personajes
add foreign key fk_prof_pers(id_profesion)
references profesiones(id_profesion);

alter table mascotas
add foreign key fk_masc_fam(id_familia)
references familias(id_familia);

alter table lugares
add foreign key fk_ciu_lug(id_ciudad)
references ciudades(id_ciudad);*/

