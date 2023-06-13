(SELECT date_format(sales_date,'%Y-%m-%d') as SALES_DATE,product_id,user_id,sales_amount
    from ONLINE_SALE
    where sales_date like '2022-03%')
union
(SELECT date_format(sales_date,'%Y-%m-%d') as SALES_DATE,product_id, NULL as user_id ,sales_amount
    from OFFLINE_SALE 
    where sales_date like '2022-03%')
    order by SALES_DATE,product_id, user_id;