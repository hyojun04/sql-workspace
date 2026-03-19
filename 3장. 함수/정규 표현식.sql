--REGEXP_LIKE 함수

SELECT * FROM MESSAGES
WHERE REGEXP_LIKE(content, '[0-9]{3}-[0-9]{4}-[0-9]{4}');

-- 임의의 문자 하나와 일치 '.'
SELECT * FROM MESSAGES
WHERE REGEXP_LIKE(content, '[0-9]{3}.[0-9]{4}.[0-9]{4}');

-- '.'과 일치 일치 '\.'
SELECT * FROM MESSAGES
WHERE REGEXP_LIKE(content, '[0-9]{3}\.[0-9]{4}\.[0-9]{4}');



--REGEXP_INSTR 함수
select content,
    REGEXP_INSTR(content, '\S+@\S+\.\S+') AS email,
    REGEXP_INSTR(content, '\d{3}[-. ]\d{4}[-. ]\d{4}[-. ]') AS phone,
    REGEXP_INSTR(content, '\.') AS period,
    REGEXP_INSTR(content, '[가-힣]+') AS kor
from MESSAGES;



--REGEXP_SUBSTR 함수
select content,
    REGEXP_SUBSTR(content,
    '[a-zA-Z0-9+-_.]+@[a-zA-Z0-9+-_.]+\.[a-zA-Z0-9+-_.]+') AS email,
    REGEXP_SUBSTR(content, '\d{3}[-. ]\d{4}[-. ]\d{4}') AS phone,
    REGEXP_SUBSTR(content, '[가-힣 ]+') AS kor
from messages;



--REGEXP_REPLACE 함수
select content,
REGEXP_REPLACE(content, '\d{3}[-. ]\d{4}[-. ]\d{4}','*') as phone
from messages;
    
    