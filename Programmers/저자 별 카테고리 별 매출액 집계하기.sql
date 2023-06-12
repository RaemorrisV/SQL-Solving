select a.AUTHOR_ID,a.AUTHOR_NAME,b.CATEGORY,sum(total*price) as 'TOTAL_SALES'
    from BOOK b join AUTHOR a on b.AUTHOR_ID = a.AUTHOR_ID join (SELECT BOOK_ID,sum(sales) as 'total'
    from BOOK_SALES
    where DATE_FORMAT(SALES_DATE,'%Y-%m')='2022-01'
    group by BOOK_ID) c on b.BOOK_ID = c.BOOK_ID
    group by a.AUTHOR_ID,a.AUTHOR_NAME,b.CATEGORY
    order by a.AUTHOR_ID,b.CATEGORY desc;