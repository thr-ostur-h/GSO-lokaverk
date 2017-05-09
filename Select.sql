a
SELECT nafn FROM Lag WHERE diskur_id LIKE 2;

b
SELECT nafn FROM lag WHERE flytjandi_id LIKE 1;

c
SELECT nafn FROM lag WHERE tegund LIKE 1;

d
SELECT nafn FROM lag WHERE lengd > 5;

e
SELECT nafn as "Diskur", CONVERT( utgafudagur, CHAR( 4 ) ) as "Útgáfuár"
FROM Diskur
WHERE utgafudagur > 20100000;

f
Þetta er ekki hægt vegna hverning töflurnar eru settar upp

g
SELECT Lag.nafn, Flytjandi.nafn AS LengstuLog
FROM Lag
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
SELECT Diskur.nafn as "Diskur", Tegund.nafn_tegund as "Tegund", Utgefandi.nafn as "Útgefandi"
FROM Diskur
JOIN Lag
ON Lag.diskur_id = Diskur.ID
JOIN Utgefandi
ON Utgefandi.ID = Diskur.utgefandi_id
JOIN Tegund
ON Tegund.ID = Lag.tegund
WHERE Diskur.utgafudagur > 19980000 AND Diskur.utgafudagur < 20170000
GROUP BY Utgefandi.nafn;
k
SELECT count(nafn)as "Fjöldi laga sem byrja á A"
FROM Lag
WHERE nafn LIKE "A%";
SELECT count(nafn) as "Fjöldi laga sem hafa 's' í nafninu"
FROM Lag
WHERE nafn LIKE "%s%";
l
SELECT nafn, 2017-faedingardagur as "Aldur"
FROM Flytjandi;
m
SELECT FORMAT(AVG(FORMAT(lengd,1)),1) AS "Meðallengd laga í mínútum"
FROM Lag;
n
SELECT Flytjandi.nafn as "Flytjandi", count(Lag.nafn) as "Fjöldi laga"
FROM Flytjandi
JOIN Lag
ON Flytjandi.ID = Lag.flytjandi_id
GROUP BY Flytjandi.nafn
HAVING count(Lag.nafn) > 4;
o
SELECT lag.nafn as "Lag", flytjandi.nafn as "Flytjandi",2017-flytjandi.faedingardagur as "Aldur"
FROM lag
JOIN flytjandi
ON lag.flytjandi_id = flytjandi.ID
GROUP BY lag.nafn
ORDER BY flytjandi.faedingardagur
LIMIT 5;
1
SELECT diskur.nafn as "Diskur", count(lag.nafn) as "Fjöldi laga"
FROM diskur
JOIN lag
ON lag.diskur = diskur.ID
GROUP BY diskur.nafn;
2
SELECT diskur.nafn as "Diskur", flokkur.nafn_flokkur as "Tegund"
FROM diskur
JOIN lag
ON lag.diskur_id = diskur.ID 
JOIN flytjandi
ON flytjandi.ID = lag.flytjandi_id
JOIN flokkur
ON flokkur.ID = flytjandi.tegund_id
GROUP BY diskur.nafn;
3
SELECT lag.nafn as "Lag", lag.texti as "Texti", flytjandi.nafn as "Flytjandi"
FROM lag
JOIN flytjandi
ON flytjandi.ID = lag.flytjandi_id
WHERE flytjandi.nafn = "Damon Albarn";