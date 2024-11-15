use springfield;

/*Aplicando lo aprendido */
/* qué profesiones hay en la serie de los simpsons */
select * from profesiones;
select desc_profesion profesiones 
from profesiones;

/* ¿hay alguna profesión que esté duplicada? */
select distinct desc_profesion profesiones 
from profesiones;

/* cuántas profesiones hay */
select count(*) total_profesiones 
from profesiones;

/* mostrar todos los personajes y su sexo */
select per.desc_personaje where_personaje, sexo.desc_sexo where_sexo
from personajes per, sexos sexo
where per.id_sexo = sexo.id_sexo; 
-- inner join apply too
select per.desc_personaje join_personaje, sexo.desc_sexo join_sexo
from personajes per
inner join sexos sexo on per.id_sexo = sexo.id_sexo;

/* cuántos hombres y cuántas mujeres hay en springfield */
select
sexo.desc_sexo, count(*) total
from personajes per
inner join sexos sexo on per.id_sexo = sexo.id_sexo
group by sexo.desc_sexo;

/* Dónde vive cada personaje */
select per.desc_personaje personaje, lug.desc_lugar residencia
from personajes per
inner join lugares lug on per.id_lugar_residencia = lug.id_lugar;

/* Qué personjaes hacen home office */
select
per.desc_personaje,
per.id_lugar_residencia home,
per.id_lugar_profesion office
from personajes per
where per.id_lugar_residencia = per.id_lugar_profesion;

/* Qué personjaes no trabajan desde casa */
-- we use inner join since not all personaje has a profesion
select
per.id_personaje,
per.desc_personaje,
lug.desc_lugar home,
lug2.desc_lugar office
from personajes per
inner join lugares lug on per.id_lugar_residencia = lug.id_lugar
inner join lugares lug2 on per.id_lugar_profesion = lug2.id_lugar
and not per.id_lugar_residencia = per.id_lugar_profesion;

/* Cuántos personajes no son de la familia Simpsons ni Flanders */
select count(*) Familias
from personajes per
inner join familias fam on per.id_familia = fam.id_familia
where fam.desc_familia not in ('Simpsons', 'Flanders');

/* Cuántos personajes no son de la familia Simpsons ni Flanders
agrupados de menor núm. de miembros a mayor
 */
select fam.desc_familia Familia, count(*) Miembros
from personajes per
inner join familias fam on per.id_familia = fam.id_familia
where fam.desc_familia not in ('Simpsons', 'Flanders')
group by fam.desc_familia
order by Miembros desc;

/* Cuántas familias tienen 3 miembros */
select fam.desc_familia familia, count(*) miembros
from personajes per
inner join familias fam on per.id_familia = fam.id_familia
group by fam.desc_familia
having miembros = 3;
-- miembros <= 3; 3 o más miembros
-- miembros between 3 and 5; entre 3 y 5 miembors

/* Qué personajes no sabemos dónde vive */
select per.desc_personaje, per.id_lugar_residencia
from personajes per
where isnull(per.id_lugar_residencia);

/* Qué personajes viven en la calle Evergreen Terrace */
select per.desc_personaje personaje, lug.desc_lugar casa
from personajes per
left outer join lugares lug on per.id_lugar_residencia = lug.id_lugar
where lug.desc_lugar like '%Evergreen Terrace%';

/* Qué personajes vive en Evergeen Terrance y trabajan en la Planta Nuclear*/
select 
per.desc_personaje personaje,
lug.desc_lugar casa,
lug2.desc_lugar oficina
from personajes per
left outer join lugares lug on per.id_lugar_residencia = lug.id_lugar
left outer join lugares lug2 on per.id_lugar_profesion = lug2.id_lugar
where lug.desc_lugar like '%Evergreen Terrace%'
and lug2.desc_lugar like '%Nuclear%';

/* Qué personajes mujeres vive en Evergeen Terrance y trabajan en la Planta Nuclear*/
select 
per.desc_personaje personaje,
lug.desc_lugar casa,
lug2.desc_lugar oficina,
sex.desc_sexo
from personajes per
left outer join lugares lug on per.id_lugar_residencia = lug.id_lugar
left outer join lugares lug2 on per.id_lugar_profesion = lug2.id_lugar
left outer join sexos sex on per.id_sexo = sex.id_sexo
where (lug.desc_lugar like '%Evergreen Terrace%'
and lug2.desc_lugar like '%Nuclear%')
or sex.id_sexo = 2;

/* Listar 10 lugares de residencia */
select per.desc_personaje, lug.desc_lugar
from personajes per
inner join lugares lug on per.id_lugar_residencia = lug.id_lugar
limit 10;

/* Qué familias tienen mascotas */
select distinct fam.desc_familia
from familias fam
inner join mascotas mas on fam.id_familia = mas.id_familia;

/* Qué personajes tienen mascotas */
select distinct per.desc_personaje, mas.desc_mascota
from personajes per
inner join familias fam on per.id_familia = fam.id_familia
inner join mascotas mas on fam.id_familia = mas.id_familia;

SHOW VARIABLES LIKE 'local_infile';
