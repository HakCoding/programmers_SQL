SELECT
    animal_id ,
    name ,
    sex_upon_intake
FROM
    animal_ins
WHERE
    lower(name) in ('lucy' , 'ella' , 'pickle' , 
                    'rogan' , 'sabrina','mitty')
ORDER BY animal_id