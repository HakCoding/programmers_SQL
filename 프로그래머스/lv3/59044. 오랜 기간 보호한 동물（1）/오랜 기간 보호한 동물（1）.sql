SELECT result.name,result.datetime
from(
    select rownum rnum, re.name name, re.datetime datetime
    from (select * from animal_ins ins
          where ins.animal_id not in(select animal_id from animal_outs)
         order by ins.datetime) re
)result
where result.rnum<=3;