SELECT a.PRODUCT_ID, a.PRODUCT_NAME, sum(b.AMOUNT)*a.PRICE
    from FOOD_PRODUCT a join FOOD_ORDER b on a.PRODUCT_ID = b.PRODUCT_ID
    where b.PRODUCE_DATE like '2022-05%'
    group by a.PRODUCT_ID
    order by sum(b.AMOUNT)*a.PRICE desc, a.PRODUCT_ID;