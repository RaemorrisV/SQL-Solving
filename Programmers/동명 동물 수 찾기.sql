SELECT name,count(name) as 'COUNT'
    from ANIMAL_INS
    group by NAME
    having count(name) >=2
    order by name;