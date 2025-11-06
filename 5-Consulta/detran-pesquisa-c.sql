USE detran;

-- C) Mostrar dados da infração e do veículo no período DE... ATÉ...
SELECT 
  I.idInfracao,
  I.data_hora,
  I.velocidade_aferida,
  T.descricao AS tipo_infracao,
  V.Placa,
  V.Chassi,
  V.cor,
  V.Ano_fabricado,
  P.Nome AS proprietario
FROM Infracao I
JOIN Tipo_infracao T ON I.Tipo_infracao_idTipo_infracao = T.idTipo_infracao
JOIN Veiculo V ON I.Veiculo_Placa = V.Placa
JOIN Proprietario P ON V.Proprietario_CPF = P.CPF
WHERE I.data_hora BETWEEN '2025-10-01' AND '2025-11-05';
