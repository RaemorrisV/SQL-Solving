SELECT ANIMAL_ID,NAME
    from ANIMAL_INS 
    where upper(name) Like '%EL%' and ANIMAL_TYPE ='Dog'
    order by name;