-- 회원테이블에서 모든 데이터를 가져오기
SELECT * FROM CUSTOMER;
select CUSTOMER_NO, NAME, ADDRESS FROM CUSTOMER C;

-- 회원테이블에서 회원번호와 이름만 가져오기
select NAME FROM CUSTOMER C;

-- 비교연산자
SELECT * FROM CUSTOMER C WHERE CUSTOMER_NO  = 1; 
SELECT * FROM CUSTOMER C WHERE CUSTOMER_NO  != 1; 
SELECT * FROM CUSTOMER C WHERE CUSTOMER_NO  < 3; 
SELECT * FROM CUSTOMER C WHERE CUSTOMER_NO  <= 3; 

-- 정렬: 쿼리 드래그한 후에 CTRL + SHIFT + F

-- 논리연산자
-- 서울에 사는 둘리 회원 데이터 가져오기
SELECT * FROM CUSTOMER C 
WHERE NAME = '둘리' AND ADDRESS ='서울';

-- 인천 또는 서울에 사는 회원데이터 가져오기
SELECT * FROM CUSTOMER C 
WHERE ADDRESS = '인천' or ADDRESS ='서울';

-- 주소가 서울이 아닌 회원데이터를 가져오기
-- 부정연산자는 빈값이 제외가 된다
SELECT * FROM CUSTOMER C 
WHERE not ADDRESS ='서울';

-- 연습문제
SELECT * FROM  BOOK B 
WHERE PRICE = 20000

SELECT * FROM  BOOK B 
WHERE 10000  <= 10000 AND PRICE <= 30000;

SELECT * FROM  BOOK B 
WHERE TITLE = '역사1' OR TITLE = '역사2';

SELECT * FROM  BOOK B 
WHERE PUB_DATE <= '2023-01-30' AND PRICE = 10000;

SELECT * FROM CONTACTS C 
WHERE LAST_NAME = '이';

SELECT * FROM CONTACTS C 
WHERE LAST_NAME !='김';

SELECT * FROM CONTACTS C 
WHERE FIRST_NAME = '윤서' or FIRST_NAME = '수아';

SELECT * FROM  CLASS C 
WHERE CLASS_NO = 1;


SELECT * FROM  CLASS C 
WHERE '10:00' <= CLASS_TIME ;


SELECT CLASS_NAME FROM  CLASS C 
WHERE  CLASS_TIME = '09:00' or CLASS_TIME = '11:00'; 


SELECT MOVIE_NAME, SEAT_NO FROM RESERVATION R 
WHERE `date` = '2024-04-21';

select MOVIE_NAME FROM RESERVATION R 
WHERE MOVIE_NAME != '아바타';


SELECT USER_NAME FROM RESERVATION R 
WHERE `date` = '2024-04-20' AND SEAT_NO = 'A2';

select * FROM PRODUCT P 
WHERE PRICE <= 2000;

select CATEGORY, PRODUCT_NAME FROM PRODUCT P 
where CATEGORY = '과자' or CATEGORY = '음료';

select PRODUCT_NAME, PRICE FROM PRODUCT P 
where 4000 <= PRICE and CATEGORY = '음료' ;
