SELECT a.REST_ID,a.REST_NAME,a.FOOD_TYPE,a.FAVORITES,a.ADDRESS, round(sum(b.REVIEW_SCORE)/count(a.REST_ID),2) as 'SCORE'
    from REST_INFO a join REST_REVIEW b on a.REST_ID = b.REST_ID
    where a.ADDRESS like '서울%'
    group by a.REST_ID
    order by SCORE desc, a.FAVORITES desc;