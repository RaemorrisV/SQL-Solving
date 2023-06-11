SELECT a.FLAVOR
    from JULY b join FIRST_HALF a on b.FLAVOR = a.FLAVOR
    group by a.FLAVOR
    order by sum(a.TOTAL_ORDER+b.TOTAL_ORDER) desc
    limit 3;