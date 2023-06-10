select CATEGORY,price,PRODUCT_NAME
    from FOOD_PRODUCT
    where CATEGORY in ('과자','국','김치','식용유') and price in (SELECT max(PRICE)
    from FOOD_PRODUCT
    where CATEGORY in ('과자','국','김치','식용유')
    group by CATEGORY)
    order by price desc;