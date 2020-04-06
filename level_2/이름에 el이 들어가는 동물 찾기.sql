--https://programmers.co.kr/learn/courses/30/lessons/59047
--el, El이 들어가는 동물 

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE (NAME LIKE '%el%' or name like 'El%')
AND ANIMAL_TYPE = 'Dog'
order by name