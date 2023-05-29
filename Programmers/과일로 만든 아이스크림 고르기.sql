SELECT flavor
     from ICECREAM_INFO
     where flavor in (select FLAVOR
            from FIRST_HALF
            where total_order > 3000)
            and ingredient_type = 'fruit_based';