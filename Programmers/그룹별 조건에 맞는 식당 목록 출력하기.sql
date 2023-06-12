SELECT p.MEMBER_NAME,r.REVIEW_TEXT,DATE_FORMAT(r.REVIEW_DATE,'%Y-%m-%d')
     from REST_REVIEW r join MEMBER_PROFILE p on r.MEMBER_ID = p.MEMBER_ID join (SELECT MEMBER_ID,count(MEMBER_ID) as 'o'
                                from REST_REVIEW
                                group by MEMBER_ID) c on r.MEMBER_ID=c.MEMBER_ID 
     where c.o = (SELECT count(MEMBER_ID)
                                from REST_REVIEW
                                group by MEMBER_ID
                                order by count(MEMBER_ID) desc
                                limit 1)
     order by r.REVIEW_DATE,r.REVIEW_TEXT;