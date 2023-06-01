SELECT (price DIV 10000)*10000 as price_group, count(*) as 'PRODUCTS'
    from PRODUCT
    group by price_group
    order by price_group;