use springfield;

/* distinct 
select * from personajes;
select count(distinct desc_personaje) from personajes;
select count(desc_personaje) total, count(distinct desc_personaje) total_distinct from personajes;

select desc_personaje, count(*) total
from personajes
group by desc_personaje
-- order by total desc;
having total > 1; 
*/
/* select and count
select count(*) total
count(id_personaje) total_personaje, 
count(id_familia) total_familia, 
count(id_sexo) total_sexo, 
count(id_lugar_residencia) total_lug_res,
count(id_profesion) total_profesion,
count(id_lugar_profesion) total_lug_prof
from personajes;
*/
/* nulls
select * from personajes
where id_matrimonio is null;
*/
/* union tables
create table tmp_personajes_hombres
select * from personajes
where id_sexo = 1;

create table tmp_personajes_mujeres
select * from personajes
where id_sexo = 2;

create table tmp_personajes
select * from tmp_personajes_hombres
union all -- just union is to avoid nulls
select * from tmp_personajes_mujeres;
*/
/* inner join
select per.id_personaje,
per.desc_personaje,
fam.desc_familia
from personajes per, familias fam
where per.id_familia = fam.id_familia;

select per.id_personaje,
per.desc_personaje,
fam.desc_familia
from personajes per
inner join familias fam on per.id_familia = fam.id_familia;*/

-- rollback; because I was deleted the id.familia 1 from familias
