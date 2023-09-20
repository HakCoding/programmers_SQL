SELECT DISTINCT(car_id) FROM car_rental_company_car AS c
INNER JOIN car_rental_company_rental_history AS h USING(car_id)
WHERE car_type IN('세단') AND DATE_FORMAT(start_date, '%Y-%m') = '2022-10'
ORDER BY 1 DESC;