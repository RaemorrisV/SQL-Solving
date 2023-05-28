SELECT animal_id, name
      from ANIMAL_INS
      where intake_condition not in('Aged')
      order by animal_id;