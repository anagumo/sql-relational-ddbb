use springfield;

select desc_personaje,
char_length(desc_personaje) lenght1,
character_length(desc_personaje) lenght2,
length(desc_personaje) lenght3
from personajes;

select desc_personaje,
lcase(desc_personaje) lower1,
lower(desc_personaje) lower2
from personajes;

select desc_personaje,
ucase(desc_personaje) lower1,
upper(desc_personaje) lower2
from personajes;

select desc_mascota,
repeat('jub-jub ', 2) hub1,
length(desc_mascota) hub2,
length(repeat('jub-jub ', 4)) hub3
from mascotas
where id_mascota = 3;

select desc_mascota,
reverse(desc_mascota) reversed
from mascotas;

select desc_mascota, id_mascota,
concat(id_mascota + ' ', repeat(' pato ', 3))
from mascotas;

select desc_mascota,
trim(desc_mascota) frase1
from mascotas;

select desc_mascota,
instr(desc_mascota, " ") espacio1,
locate(desc_mascota, " ") espacio2,
from mascotas;