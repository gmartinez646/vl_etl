create table resultados_origen(
    desc_resultado_origen varchar(50),
    id_resultado_final int
);
insert into resultados_origen(desc_resultado_origen, id_resultado_final)
values ('Muestra no apta para diagn�stico', 3);
insert into resultados_origen(desc_resultado_origen, id_resultado_final)
values ('Negativo', 2);
insert into resultados_origen(desc_resultado_origen, id_resultado_final)
values ('No detectable', 2);
insert into resultados_origen(desc_resultado_origen, id_resultado_final)
values ('No reactivo', 2);
insert into resultados_origen(desc_resultado_origen, id_resultado_final)
values ('Positivo', 1);
insert into resultados_origen(desc_resultado_origen, id_resultado_final)
values ('Reactivo', 1);
insert into resultados_origen(desc_resultado_origen, id_resultado_final)
values ('Detectable', 1);
insert into resultados_origen(desc_resultado_origen, id_resultado_final)
values ('*sin dato*', 4);

create table resultados(
    id int,
    desc_resultado varchar(20)
);

insert into resultados (id, desc_resultado)
     values (1, 'Confirmado');

insert into resultados (id, desc_resultado)
     values (2, 'Descartado');

insert into resultados (id, desc_resultado)
     values (3, 'Muestra no apta');

insert into resultados (id, desc_resultado)
     values (4, 'Sin Datos');

create table centros_testeo (
    id int,
    nombre varchar(150)
);
insert into centros_testeo(nombre,id)
values ('HOSPITAL MUNICIPAL PROFESOR DR. BERNARDO HOUSSAY', 1);
insert into centros_testeo(nombre,id)
values (upper('URI Dr. J. Burman'), 2);
insert into centros_testeo(nombre,id)
values (upper('CENTRO DE ATENCION PRIMARIA DE LA SALUD URI RAMON CARRILLO'), 3);
insert into centros_testeo(nombre,id)
values (upper('Centro de Testeo Vicente López'), 4);
insert into centros_testeo(nombre,id)
values (upper('Centro de Testeo Munro'), 5);

create table rango_edad (
    id int,
    rango varchar(50),
    edad_minima int,
    edad_maxima int
);
insert into rango_edad(id, rango, edad_minima, edad_maxima)
values (1,'0-19',0,19);
insert into rango_edad(id, rango, edad_minima, edad_maxima)
values (2,'20-29',20,29);
insert into rango_edad(id, rango, edad_minima, edad_maxima)
values (3,'30-59',30,59);
insert into rango_edad(id, rango, edad_minima, edad_maxima)
values (4,'>60',60,150);
