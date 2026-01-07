
-- Table EMPLOYE
INSERT INTO Employe (idEmp, nom, prenom, poste) VALUES
(1, 'amrani', 'najwa', 'Developpeur'),
(2, 'ganga', 'Ahmed', 'Chef de projet'),
(3, 'EL HADDAD', 'sara', 'Developpeur'),
(4, 'ALAMI', 'Ahmed', 'Designer');
-- Table PROJET

INSERT INTO Projet (idProjet, titre, dateDeb, dateFin, idChef) VALUES
(234, 'Application Mobile', '2026-01-01', '2026-03-10', 2),
(98, 'Site Web', '2025-10-02', '2026-12-01', 4),
(123, 'Site E-commerce Beauty', '2026-02-10', '2026-05-01', 1);


-- Table TACHE
INSERT INTO Tache (idTache, libelle, etat, priorite, idProjet) VALUES
(1, 'Fullstack development', 'Terminée', 1, 234),
(2, 'Design UI/UX', 'En cours', 2, 234),
(3, 'Security audit', 'Non commencée', 4, 123),
(4, 'Front-end development', 'En cours', 3, 98);
-- 1) Afficher tous les projets
SELECT titre, dateDeb, dateFin
FROM Projet;

-- 2) Employés dont le nom commence par 'EL'
SELECT *
FROM Employe
WHERE nom LIKE 'EL%';

-- 3) Tâches du projet 234 par priorité croissante
SELECT *
FROM Tache
WHERE idProjet = 234
ORDER BY priorite ASC;

-- 4) Projets qui se terminent avant Avril 2026
SELECT *
FROM Projet
WHERE dateFin < '2026-04-01';

-- 5) Tous les employés développeurs
SELECT *
FROM Employe
WHERE poste = 'Developpeur';

-- 6) Tâches terminées du projet 98
SELECT *
FROM Tache
WHERE idProjet = 98
AND etat = 'Terminée';

-- 7) Projets مع المسؤول ديالهم
SELECT p.titre, p.dateDeb, p.dateFin,
       e.nom AS nomChef,
       e.prenom AS prenomChef
FROM Projet p
JOIN Employe e
ON p.idChef = e.idEmp;

-- 8) تاش ديال projet "Site E-commerce Beauty"
SELECT t.*
FROM Tache t
JOIN Projet p
ON t.idProjet = p.idProjet
WHERE p.titre = 'Site E-commerce Beauty';

-- 9) عدد التاش اللي تسالات فـ هاد المشروع
SELECT COUNT(*) AS nbTachesTerminees
FROM Tache t
JOIN Projet p
ON t.idProjet = p.idProjet
WHERE p.titre = 'Site E-commerce Beauty'
AND t.etat = 'Terminée';

-- 10) المشاريع اللي تسالات فـ 2025
SELECT COUNT(*) AS projetsTermines2025
FROM Projet
WHERE YEAR(dateFin) = 2025;

-- تغيير تاريخ نهاية المشروع 234
UPDATE Projet
SET dateFin = '2026-05-16'
WHERE idProjet = 234;

-- تغيير حالة المهمة 98 إلى "Terminée"
UPDATE Tache
SET etat = 'Terminée'
WHERE idTache = 98;
-- حذف المهام غير المبتدأة فالمشروع 123
DELETE FROM Tache
WHERE idProjet = 123
AND etat = 'Non commencée';

-- حذف الموظف ALAMI AHMED
DELETE FROM Employe
WHERE nom = 'ALAMI'
AND prenom = 'Ahmed';

