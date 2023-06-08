select MONTH(START_DATE) , CAR_ID , COUNT(HISTORY_ID) AS RECORDS
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
    AND CAR_ID IN (SELECT CAR_ID
                   FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                   WHERE DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
                   GROUP BY CAR_ID
                   HAVING COUNT(CAR_ID) >= 5)
    group by month(START_DATE),car_id
    HAVING RECORDS >= 1
    order by month(START_DATE),car_id desc;