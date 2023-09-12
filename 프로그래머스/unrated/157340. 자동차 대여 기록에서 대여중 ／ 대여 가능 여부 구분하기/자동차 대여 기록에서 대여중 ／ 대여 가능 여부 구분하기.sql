WITH T AS (
    SELECT CAR_ID, HISTORY_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE '2022-10-16' BETWEEN start_date AND end_date
)
SELECT CAR_ID, "대여중" AS AVAILABILITY
FROM T
UNION ALL
SELECT DISTINCT C.CAR_ID, "대여 가능"
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY C
LEFT OUTER JOIN T ON T.CAR_ID = C.CAR_ID
WHERE T.CAR_ID IS NULL
ORDER BY 1 DESC