set @hour := -1;
SELECT (@hour := @hour + 1) as 'hour', (select count(*)
        from ANIMAL_OUTS
        where hour(datetime) = @hour)
    from ANIMAL_OUTS
    where @hour < 23;