SELECT avg(grade.note) as Note_moy, assessment.nom_mat
FROM assessment
INNER JOIN grade ON assessment.id_assessment = grade.id_assessment
GROUP BY assessment.nom_mat