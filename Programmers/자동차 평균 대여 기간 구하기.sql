SELECT CAR_ID, round(avg(DATEDIFF(end_date,start_date)+1),1) as 'AVERAGE_DURATION'
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    group by CAR_ID
    having avg(DATEDIFF(end_date,start_date)+1) >= 7
    order by AVERAGE_DURATION desc, CAR_ID desc;