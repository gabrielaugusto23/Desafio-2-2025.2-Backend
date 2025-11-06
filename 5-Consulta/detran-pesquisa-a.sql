USE detran;

-- A) Apresentar todos os dados dos veículos de um determinado proprietário (CPF)
SELECT *
FROM Veiculo
WHERE Proprietario_CPF = '111.111.111-11';