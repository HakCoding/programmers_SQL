select animal_id, name
from (
    SELECT i.ANIMAL_ID, i.NAME
    from ANIMAL_INS i
    join ANIMAL_OUTS o
    on i.ANIMAL_ID = o.ANIMAL_ID
    order by o.DATETIME - i.DATETIME desc
)
where rownum <= 2