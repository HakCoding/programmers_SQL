SELECT animal_id, ins.name 
FROM animal_ins AS ins
INNER JOIN animal_outs AS outs USING(animal_id)
WHERE outs.datetime IS NOT NULL
ORDER BY DATEDIFF(outs.datetime, ins.datetime) DESC
LIMIT 2;