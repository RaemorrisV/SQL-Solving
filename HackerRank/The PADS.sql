select concat(name,'(',substr(occupation,1,1),')')
       from OCCUPATIONS
       order by name  asc
       ;
select concat('There are a total of ',count(occupation),' ',lower(occupation),'s.')
       from OCCUPATIONS
       group BY occupation
       order by count(occupation), occupation asc
       ;       