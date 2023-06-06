    from USED_GOODS_BOARD a join USED_GOODS_USER b on a.WRITER_ID = b.user_id
    where a.STATUS = 'DONE'
    group by (a.WRITER_ID)
    having sum(a.price) >= 700000
    order by sum(a.price);