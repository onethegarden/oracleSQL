--https://programmers.co.kr/learn/courses/30/lessons/59041
--중복되는 이름이 있는 동물을 찾는 문제

SELECT NAME, COUNT(NAME) COUNT
FROM ANIMAL_INS
GROUP BY NAME
HAVING COUNT>1;

