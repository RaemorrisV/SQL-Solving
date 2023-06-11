SELECT DATE_FORMAT(b.SALES_DATE,'%Y') as 'YEAR',DATE_FORMAT(b.SALES_DATE,'%m') as 'MONTH',a.GENDER,count(distinct a.USER_ID) as 'USERS'
    from USER_INFO a join ONLINE_SALE b on a.USER_ID = b.USER_ID
    where a.GENDER is not null
    group by DATE_FORMAT(b.SALES_DATE,'%Y'),DATE_FORMAT(b.SALES_DATE,'%m'),a.GENDER
    order by DATE_FORMAT(b.SALES_DATE,'%Y'),DATE_FORMAT(b.SALES_DATE,'%m'),a.GENDER;