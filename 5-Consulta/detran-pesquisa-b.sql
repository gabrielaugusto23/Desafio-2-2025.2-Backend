USE detran;

-- B) Consultar proprietário(s) por qualquer parte do nome
SELECT *
FROM Proprietario
WHERE Nome LIKE '%Maria%';