--https://programmers.co.kr/learn/courses/30/lessons/59045
-- 각각의 테이블 조건을 줘서 이너조인 한 다음 결과 추출


SELECT A.ANIMAL_ID
      ,A.ANIMAL_TYPE
      ,A.NAME
FROM (
    SELECT ANIMAL_ID
         , ANIMAL_TYPE
         , NAME
    FROM ANIMAL_OUTS
    WHERE SUBSTR(
            SEX_UPON_OUTCOME
            ,0
            ,INSTR(SEX_UPON_OUTCOME,' ')-1
            ) 
       IN ('Neutered','Spayed')
    )A
    ,(
    SELECT ANIMAL_ID
         , ANIMAL_TYPE
         , NAME
    FROM ANIMAL_INS
    WHERE SUBSTR(
            SEX_UPON_INTAKE
            ,0
            ,INSTR(SEX_UPON_INTAKE,' ')-1
            ) 
       NOT IN ('Neutered','Spayed')
    )B
WHERE A.ANIMAL_ID=B.ANIMAL_ID
ORDER BY A.ANIMAL_ID