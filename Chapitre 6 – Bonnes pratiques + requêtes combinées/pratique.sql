-- 🛠 Script SQL : Insertion, Mise à jour, Suppression avec TRANSACTION
-- Gestion des données du blog

-- 🔹 Étape 1 : Démarrer la transaction
START TRANSACTION;

-- 🔹 Étape 2 : Insertion d’un nouvel article
INSERT INTO Article (titre, contenu, date_pub, id_utilisateur)
VALUES ('Nouveau post', 'Texte exemple', '2025-07-18', 1);

-- 🔹 Étape 3 : Mise à jour d’un utilisateur
UPDATE Utilisateur
SET email = 'alice.update@test.com'
WHERE id = 1;

-- 🔹 Étape 4 : Suppression d’un commentaire
DELETE FROM Commentaire
WHERE id = 3;

-- 🔹 Étape 5 : Valider la transaction
COMMIT;
-- En cas d’erreur, utiliser :
-- ROLLBACK;

-- 🔹 Étape 6 : Vérification des résultats
SELECT * FROM Article;
SELECT * FROM Utilisateur;
SELECT * FROM Commentaire;