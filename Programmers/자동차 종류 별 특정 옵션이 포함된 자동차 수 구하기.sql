SELECT CAR_TYPE , count(CAR_TYPE) as 'CARS'
    from CAR_RENTAL_COMPANY_CAR
    where OPTIONS Like '%통풍시트%' or OPTIONS Like '%열선시트%' or OPTIONS Like '%가죽시트%'
    group by CAR_TYPE
    order by CAR_TYPE;