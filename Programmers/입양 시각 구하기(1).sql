SELECT HOUR(DATETIME) as 'HOUR', count(HOUR(DATETIME))
    from ANIMAL_OUTS
    where HOUR(DATETIME) >=9 and  HOUR(DATETIME)<=19
    group by HOUR(DATETIME)
    order by HOUR(DATETIME);