SELECT assessment.nom_mat, grade.note, student.nom
FROM assessment, student, grade
WHERE grade.id_student = id_student AND grade.id_assessment = assessment.id_assessment