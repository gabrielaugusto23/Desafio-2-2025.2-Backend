USE detran;

-- D) Número de veículos por modelo, em ordem decrescente
SELECT 
  M.descricao AS modelo,
  COUNT(V.Placa) AS total_veiculos
FROM Modelo M
LEFT JOIN Veiculo V ON M.idModelo = V.Modelo_idModelo
GROUP BY M.descricao
ORDER BY total_veiculos DESC;