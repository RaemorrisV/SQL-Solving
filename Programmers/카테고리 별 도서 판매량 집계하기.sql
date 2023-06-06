SELECT a.category,sum(b.sales) as 'TOTAL_SALES'
    from BOOK a join BOOK_SALES b on a.book_id = b.book_id
    where b.sales_date like '2022-01%'
    group by a.category
    order by a.category;