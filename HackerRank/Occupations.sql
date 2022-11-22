select 
    max(CASE WHEN OCCUPATION = 'Doctor' THEN NAME else NULL END),
    max(CASE WHEN OCCUPATION = 'Professor' THEN NAME else NULL END),
    max(CASE WHEN OCCUPATION = 'Singer' THEN NAME else NULL END),
    max(CASE WHEN OCCUPATION = 'Actor' THEN NAME else NULL END)
from (SELECT *, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY name) as rn
      from OCCUPATIONS) as a
      group by rn
      ;