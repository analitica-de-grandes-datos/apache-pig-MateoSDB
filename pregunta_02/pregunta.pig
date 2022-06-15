/* 
Pregunta
===========================================================================

Para el archivo `data.tsv` compute la cantidad de registros por letra.
Almacene los resultados separados por comas. 

Escriba el resultado a la carpeta `output` del directorio actual. Para la 
evaluación, pig sera eejcutado ejecutado en modo local:

$ pig -x local -f pregunta.pig

        >>> Escriba su respuesta a partir de este punto <<<
*/
Texto = LOAD 'data.tsv' using PigStorage('\t') AS (letter:CHARARRAY, date:CHARARRAY, counts:INT);
letter = ORDER Texto by letter,counts;

STORE letter INTO './output' USING PigStorage(',');