--https://programmers.co.kr/learn/courses/30/lessons/59411
--입양간 시간 - 보호소에 들어온시간으로 정렬하고 각 테이블 innerjoin 해서 rownum으로 두 행 출력


SELECT ANIMAL_ID, NAME
FROM (SELECT 
      A.ANIMAL_ID AS ANIMAL_ID
      ,A.NAME AS NAME
     FROM ANIMAL_INS A, ANIMAL_OUTS B
     WHERE A.ANIMAL_ID = B.ANIMAL_ID
     ORDER BY (B.DATETIME-A.DATETIME) DESC)
WHERE ROWNUM<3