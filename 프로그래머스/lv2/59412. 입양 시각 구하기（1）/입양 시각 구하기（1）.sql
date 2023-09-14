SELECT HOUR,COUNT(HOUR) AS COUNT
from( 
    SELECT EXTRACT(HOUR FROM CAST(DATETIME AS TIMESTAMP)) AS HOUR
    FROM ANIMAL_OUTS
)
GROUP BY HOUR
HAVING HOUR BETWEEN 9 AND 19
ORDER BY HOUR;