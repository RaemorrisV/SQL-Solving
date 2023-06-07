SELECT distinct a.CAR_ID
    from CAR_RENTAL_COMPANY_CAR a join CAR_RENTAL_COMPANY_RENTAL_HISTORY b on a.CAR_ID=b.CAR_ID
    where CAR_TYPE = '세단' and START_DATE like '2022-10%'
    order by a.CAR_ID desc;