select concat('/home/grep/src/',BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT)
    from USED_GOODS_FILE
    where board_id = (SELECT BOARD_ID
                            from USED_GOODS_BOARD
                            where VIEWS = (select max(VIEWS)
                            from USED_GOODS_BOARD))
    order by FILE_ID desc;