-- 1번 문제
create table member (
    userid VARCHAR2(15),
    name VARCHAR2(20),
    password VARCHAR2(20),
    phone_number VARCHAR2(15),
    email VARCHAR2(100)
)

desc member;
select * from member;

-- 2번 문제
insert into member values ('user123', '사용자', 'a1234567890','011-234-5678','user@user.com');

-- 3번 문제
select * from member where userid='user123';

-- 4번 문제
update MEMBER
set name = '홍길동', 
    password = 'a1234', 
    PHONE_NUMBER = '011-222-3333', 
    EMAIL = 'user@user.co.kr'
where userid='user123';

-- 5번 문제
delete from member
where userid='user123' and password='a1234';

-- 6번 문제
TRUNCATE TABLE member;

-- 7번 문제
drop table member;