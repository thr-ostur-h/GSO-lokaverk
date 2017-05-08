
a
SELECT nafn FROM Lag WHERE diskur_id LIKE 2;

b
SELECT nafn FROM lag WHERE flytjandi_id LIKE 1;

c
SELECT nafn FROM lag WHERE tegund_id LIKE 1;

d
SELECT nafn FROM lag WHERE lengd > 5;

e
SELECT nafn FROM Diskur WHERE utgafudagur BETWEEN 2010-01-01 AND 9999-01-01;

f
Þetta er ekki hægt vegna hverning töflurnar eru settar upp

g
SELECT Lag.nafn, Flytjandi.nafn AS LengstuLog
FROM lag
JOIN Flytjandi
ON Flytjandi.ID=Lag.flytjandi_id
ORDER BY lengd DESC
LIMIT 5;

h
Þetta er ekki hægt vegna hverning töflurnar eru settar upp

i
SELECT utgefandi.nafn as "Utgefandi", count(diskur.nafn) as "Fjoldi diska"
from Utgefandi
JOIN diskur
ON Diskur.utgefandi_id = utgefandi.ID
GROUP BY utgefandi.nafn


j

k

l

m

n

o