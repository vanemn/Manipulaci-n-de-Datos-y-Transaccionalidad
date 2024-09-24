--muestra tabla

SELECT * FROM inscritos;

--¿Cuántos registros hay?
SELECT COUNT(*) AS total_registros FROM INSCRITOS;

--¿Cuántos inscritos hay en total?

SELECT SUM(cantidad) AS total_inscritos FROM INSCRITOS;

--¿Cuál o cuáles son los registros de mayor antigüedad?

SELECT * FROM INSCRITOS WHERE fecha = (SELECT MIN(fecha) FROM INSCRITOS);

--¿Cuántos inscritos hay por día?

SELECT fecha, SUM(cantidad) AS inscritos_por_dia
FROM INSCRITOS
GROUP BY fecha;

--¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?

SELECT fecha, SUM(cantidad) AS total_inscritos
FROM INSCRITOS
GROUP BY fecha
ORDER BY total_inscritos DESC
LIMIT 1;
