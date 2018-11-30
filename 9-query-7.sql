SELECT dateAbs, count(id_student)
FROM absence
GROUP BY dateAbs