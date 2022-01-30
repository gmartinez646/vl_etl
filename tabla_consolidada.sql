create table testeos (
    fecha_carga date,
    sexo varchar(1),
    edad int,
    rango_edad int,
    fecha_estudio date,
    resultado int,
    establecimiento_carga int
);

insert into testeos (fecha_carga, sexo, edad, rango_edad, fecha_estudio, resultado, establecimiento_carga)
select to_date(origen."Fecha Apertura", 'DD/MM/YYYY'), origen."Sexo Legal", origen."Edad Diagnostico", re.id, to_date(origen."Fecha de toma de muestra", 'DD/MM/YYYY'), r.id, ct.id
  from "20220128" origen
  join resultados_origen ro on origen."Resultado"=ro.desc_resultado_origen
  join resultados r on ro.id_resultado_final= r.id
  join rango_edad re on origen."Edad Diagnostico" >= re.edad_minima and origen."Edad Diagnostico"  <= re.edad_maxima
  join centros_testeo ct on origen."Establecimiento de Carga" = ct.nombre;
