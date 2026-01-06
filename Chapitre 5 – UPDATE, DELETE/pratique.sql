-- 🔹 UPDATE : Modifier un utilisateur
UPDATE Utilisateur
SET nom = 'Alice Dupont',
    email = 'alice.dupont@test.com'
WHERE id = 1;

-- 🔹 UPDATE : Modifier plusieurs articles
UPDATE Article
SET titre = 'Article mis à jour'
WHERE id_utilisateur = 1;

-- 🔹 DELETE : Supprimer un commentaire
DELETE FROM Commentaire
WHERE id = 2;

-- 🔹 DELETE : Supprimer plusieurs articles
DELETE FROM Article
WHERE date_pub < '2024-01-01';

-- 🔹 Vérification
SELECT * FROM Utilisateur;
SELECT * FROM Article;