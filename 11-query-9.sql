SELECT class.nom
FROM student, class
WHERE student.id_class = class.id_class
GROUP BY class.nom
ORDER BY count(student.id) DESC
LIMIT 1