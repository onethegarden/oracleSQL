--https://programmers.co.kr/learn/courses/30/lessons/59409
--DECODE로 중성화 여부 파악
--instr으로 ' '공백까지의 위치 찾고 공백 위치 전 -1 해줘서 단어까지의 위치 찾음
--substr 문자열이 들어가는 부분이 맞으면 o 

SELECT 
    ANIMAL_ID, 
    NAME, 
    DECODE(
        SUBSTR(
            SEX_UPON_INTAKE
            ,0
            ,INSTR(SEX_UPON_INTAKE,' ')-1
            )
        ,'Neutered','O'
        ,'Spayed','O'
        ,'X'
    ) AS 중성화 
FROM ANIMAL_INS
ORDER BY ANIMAL_ID

