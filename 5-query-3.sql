SELECT student.nom, count(absence.id) as Nb_absence
FROM student 
INNER JOIN absence ON student.id = absence.id
GROUP BY student.nom
ORDER BY count(absence.id) DESC LIMIT 1