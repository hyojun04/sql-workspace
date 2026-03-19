select initcap('qweruip'), lower('QWERTYUI'), upper('qwertuio')
from dual;

select length('hyojun'), length('효준'), lengthb('자바전문가그룹')
from dual;

select concat('java','specialist'), substr('javaspecialist',5,7), instr('JavaSpecialist','S')
from dual;

select lpad(17600,10,'*'), rpad('Java',10,'-')
from dual;

select ltrim('JavaSpecialist','Jav'), ltrim(' JavaSpecialist'), trim(' JavaSpecialist ')
from dual;

select replace('JavaSpecialist','Java','BigData'), replace('Java Specialist',' ','')
from dual;

select translate('javaspecialist','abcdefghijklmnopqrstuvwxyz','defghijklmnopqrstuvwxyzabc')
from dual;

/*
문제. EMPLOYEES 테이블에서 JOB_ID가 it_prog인 사원의 이름과 급여를 출력하세요. 조건 1) 비교하기 위한 값은 소문자로 입력해야 합니다. (힌트 : LOWER 함수 이용)
조건 2) 이름은 앞 3문자까지 출력하고 나머지는 *로 출력합니다. 이 열의 열 별칭은
name입니다. (힌트 : RPAD 함수와 SUBSTR 함
수 또는 SUBSTR 함수와 LENGTH 함수 이용)
조건 3) 급여는 전체 10자리로 출력하되 나머지 자리는 * 로 출력합니다. 이 열의 열 별칭은 salary입니다. 
*/
select rpad(substr(FIRST_NAME,1,3),length(first_name),'*') as name, lpad(SALARY,10,'*') as salary
from EMPLOYEES
where lower(JOB_ID) = 'it_prog';
