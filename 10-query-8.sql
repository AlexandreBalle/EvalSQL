SELECT class.nom, count(grade.note)
FROM grade, class, assessment
WHERE grade.id_assessment = assessment.id_assessment AND class.id_class = assessment.id_class
GROUP BY class.nom
