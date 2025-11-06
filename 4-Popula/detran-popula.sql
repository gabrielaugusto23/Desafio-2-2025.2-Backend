USE detran;

-- -----------------------------------------------------
-- Populando tabela Proprietario
-- -----------------------------------------------------
INSERT INTO Proprietario (CPF, Nome, Endereco, Bairro, Cidade, Estado, Sexo, Data_nascimento) VALUES
('111.111.111-11', 'João Silva', 'Rua das Flores, 123', 'Centro', 'São Paulo', 'SP', 'Masculino', '1985-05-10'),
('222.222.222-22', 'Maria Oliveira', 'Av. Brasil, 456', 'Jardins', 'São Paulo', 'SP', 'Feminino', '1990-03-22'),
('333.333.333-33', 'Carlos Pereira', 'Rua A, 78', 'Industrial', 'Campinas', 'SP', 'Masculino', '1978-12-05'),
('444.444.444-44', 'Ana Costa', 'Rua B, 89', 'Boa Vista', 'Curitiba', 'PR', 'Feminino', '1988-07-15'),
('555.555.555-55', 'Pedro Santos', 'Rua C, 101', 'Centro', 'Rio de Janeiro', 'RJ', 'Masculino', '1992-09-30');

-- -----------------------------------------------------
-- Populando tabela Telefones
-- -----------------------------------------------------
INSERT INTO Telefones (id_telefone, Numero_telefone, Descricao, Proprietario_CPF) VALUES
(1, '(11) 99999-1111', 'Celular', '111.111.111-11'),
(2, '(11) 98888-2222', 'Residencial', '222.222.222-22'),
(3, '(19) 97777-3333', 'Comercial', '333.333.333-33'),
(4, '(41) 96666-4444', 'Celular', '444.444.444-44'),
(5, '(21) 95555-5555', 'Celular', '555.555.555-55');

-- -----------------------------------------------------
-- Populando tabela Categoria
-- -----------------------------------------------------
INSERT INTO Categoria (idCategoria, descricao) VALUES
(1, 'Passeio'),
(2, 'Comercial'),
(3, 'Carga'),
(4, 'Moto'),
(5, 'Oficial');

-- -----------------------------------------------------
-- Populando tabela Modelo
-- -----------------------------------------------------
INSERT INTO Modelo (idModelo, descricao) VALUES
(1, 'Gol'),
(2, 'Onix'),
(3, 'Uno'),
(4, 'Civic'),
(5, 'HB20');

-- -----------------------------------------------------
-- Populando tabela Veiculo
-- -----------------------------------------------------
INSERT INTO Veiculo (Placa, Chassi, cor, Ano_fabricado, Categoria_idCategoria, Modelo_idModelo, Proprietario_CPF) VALUES
('ABC1234', '9BWZZZ377VT004251', 'Prata', 2018, 1, 1, '111.111.111-11'),
('DEF5678', '8HGTRS123JT004252', 'Preto', 2020, 1, 2, '222.222.222-22'),
('GHI9012', '7YTRES789LT004253', 'Branco', 2016, 2, 3, '333.333.333-33'),
('JKL3456', '6QWERT456UT004254', 'Vermelho', 2019, 4, 4, '444.444.444-44'),
('MNO7890', '5ASDFG123RT004255', 'Azul', 2021, 5, 5, '555.555.555-55');

-- -----------------------------------------------------
-- Populando tabela Agente
-- -----------------------------------------------------
INSERT INTO Agente (matricula, nome, data_contratacao) VALUES
(1001, 'Agente Carlos', '2015-04-12'),
(1002, 'Agente Fernanda', '2017-08-22'),
(1003, 'Agente Paulo', '2018-01-15'),
(1004, 'Agente Luiza', '2020-06-10'),
(1005, 'Agente Roberto', '2021-09-05');

-- -----------------------------------------------------
-- Populando tabela Tipo_infracao
-- -----------------------------------------------------
INSERT INTO Tipo_infracao (idTipo_infracao, valor, descricao) VALUES
(1, 150, 'Excesso de velocidade até 20%'),
(2, 300, 'Excesso de velocidade entre 20% e 50%'),
(3, 880, 'Excesso de velocidade acima de 50%'),
(4, 195, 'Estacionar em local proibido'),
(5, 130, 'Avançar sinal vermelho');

-- -----------------------------------------------------
-- Populando tabela Local
-- -----------------------------------------------------
INSERT INTO Local (longitude, latitude, velocidade_permitida) VALUES
(-46.633309, -23.550520, 60),
(-46.648140, -23.563210, 80),
(-46.661440, -23.570890, 50),
(-49.273251, -25.428356, 40),
(-43.209373, -22.911014, 60);

-- -----------------------------------------------------
-- Populando tabela Infracao
-- -----------------------------------------------------
INSERT INTO Infracao (idInfracao, data_hora, velocidade_aferida, Agente_matricula, Tipo_infracao_idTipo_infracao, Local_longitude, Local_latitude, Veiculo_Placa) VALUES
(1, '2025-11-01 14:35:00', 75, 1001, 1, -46.633309, -23.550520, 'ABC1234'),
(2, '2025-10-15 09:12:00', 110, 1002, 2, -46.648140, -23.563210, 'DEF5678'),
(3, '2025-09-20 16:40:00', 160, 1003, 3, -46.661440, -23.570890, 'GHI9012'),
(4, '2025-08-05 12:10:00', 50, 1004, 4, -49.273251, -25.428356, 'JKL3456'),
(5, '2025-07-22 18:55:00', 70, 1005, 5, -43.209373, -22.911014, 'MNO7890');