SELECT assessment.nom_mat, max(grade.note) as Note_max
FROM assessment, grade
WHERE assessment.id_assessment = grade.id_assessment
GROUP BY assessment.nom_mat