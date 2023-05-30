SELECT HISTORY_ID,CAR_ID, date_format(start_date,'%Y-%m-%d') as 'START_DATE',
 date_format(end_date,'%Y-%m-%d') as 'END_DATE',
 IF(DATEDIFF(END_DATE, START_DATE) >= 29, '장기 대여', '단기 대여') AS RENT_TYPE
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where start_date Like '2022-09%'
    order by HISTORY_ID desc;