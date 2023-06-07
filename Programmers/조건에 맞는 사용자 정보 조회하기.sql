SELECT USER_ID,NICKNAME, concat(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as '전체주소',
    concat(SUBSTRING(TLNO,1,3),'-',SUBSTRING(TLNO,4,4),'-',SUBSTRING(TLNO,8,4)) as '전화번호'
    from USED_GOODS_USER
    where USER_ID in (select WRITER_ID
                         from USED_GOODS_BOARD
                         group by WRITER_ID
                         having count(WRITER_ID)>=3)
    order by USER_ID desc;