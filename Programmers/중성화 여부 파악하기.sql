SELECT ANIMAL_ID,NAME, IF(SEX_UPON_INTAKE Like 'Neutered%' or SEX_UPON_INTAKE Like 'Spayed%','O','X') as '중성화'
    from ANIMAL_INS
    order by ANIMAL_ID;