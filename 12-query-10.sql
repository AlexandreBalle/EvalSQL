SELECT class.nom, avg(grade.note) as Moy_generale
FROM grade, assessment, class
WHERE grade.id_assessment = assessment.id_assessment AND class.id_class = assessment.id_class
GROUP BY class.nom
