INSERT INTO class ( nom ) VALUES ( '20.4' );

INSERT INTO student ( nom, prenom, mail, id_class ) VALUES ( 'Dupont', 'Michel', 'Dupont@gmail.com', 1);
INSERT INTO student ( nom, prenom, mail, id_class ) VALUES ( 'Pontdu', 'Francis', 'pontdu@gmail.com', 1);
INSERT INTO student ( nom, prenom, mail, id_class ) VALUES ( 'Dupont', 'Jacqueline', 'jpt@gmail.com', 1);

ALTER TABLE grade
ADD note FLOAT(20) UNSIGNED;
 
INSERT INTO assessment ( nom_mat, nom_formateur, dateAss, id_class ) VALUES ( 'Git', 'Pierre', 0000-00-00, 1);
INSERT INTO grade ( dateG, id_student, id_assessment, note ) VALUES ( 0000-00-00, 1, 1, 9);
INSERT INTO grade ( dateG, id_student, id_assessment, note ) VALUES ( 0000-00-00, 1, 2, 16);
INSERT INTO grade ( dateG, id_student, id_assessment, note ) VALUES ( 0000-00-00, 1, 3, 13);

INSERT INTO assessment ( nom_mat, nom_formateur, dateAss, id_class ) VALUES ( 'Sql', 'Pierre', 0000-00-00, 1);
INSERT INTO grade ( dateG, id_student, id_assessment, note ) VALUES ( 0000-00-00, 1, 1, 12);
INSERT INTO grade ( dateG, id_student, id_assessment, note ) VALUES ( 0000-00-00, 1, 3, 15);

INSERT INTO absence ( dateAbs, id_student ) VALUES ( '1991-05-13', 1);
INSERT INTO absence ( dateAbs, id_student ) VALUES ( '1991-05-15', 1);

