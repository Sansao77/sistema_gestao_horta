-- Inserindo Canteiros
INSERT INTO `canteiros` (`nome`) VALUES
('Canteiro A - Hortaliças'),
('Canteiro B - Temperos'),
('Canteiro C - Legumes'),
('Canteiro D - Folhosas'),
('Canteiro E - Raízes');

-- Inserindo Instituições
INSERT INTO `instituicoes` (`nome`) VALUES
('Lar dos Idosos São Vicente'),
('Creche Municipal Esperança'),
('Centro Comunitário Recife'),
('Abrigo Temporário Nova Vida'),
('Associação de Moradores Boa Vista');

-- Inserindo Plantas
INSERT INTO `plantas` (`nome`) VALUES
('Alface'),
('Tomate'),
('Coentro'),
('Cebolinha'),
('Rúcula'),
('Pimentão'),
('Cenoura'),
('Beterraba'),
('Espinafre'),
('Manjericão');

-- Inserindo Voluntários
INSERT INTO `voluntarios` (`nome`, `idade`, `funcao`) VALUES
('Maria Silva', 45, 'Coordenadora'),
('João Santos', 32, 'Jardineiro'),
('Ana Paula', 28, 'Voluntaria'),
('Carlos Eduardo', 51, 'Voluntario'),
('Luciana Costa', 38, 'Educadora'),
('Pedro Henrique', 29, 'Voluntario'),
('Fernanda Oliveira', 42, 'Jardineira'),
('Roberto Lima', 55, 'Coordenador');

-- Inserindo Cultivos
INSERT INTO `cultivos` (`id_voluntario`, `id_planta`, `id_canteiro`, `created_at`) VALUES
(1, 1, 4, '2024-08-15'),
(2, 2, 1, '2024-08-20'),
(3, 3, 2, '2024-09-01'),
(4, 4, 2, '2024-09-01'),
(5, 5, 4, '2024-09-10'),
(6, 6, 1, '2024-09-15'),
(7, 7, 5, '2024-09-20'),
(8, 8, 5, '2024-09-25'),
(1, 9, 4, '2024-10-01'),
(2, 10, 2, '2024-10-05'),
(3, 1, 4, '2024-10-10'),
(4, 3, 2, '2024-10-15');

-- Inserindo Colheitas
INSERT INTO `colheitas` (`id_canteiro`, `quantidade`) VALUES
(4, 25),  -- Alface
(1, 18),  -- Tomate
(2, 30),  -- Coentro
(2, 28),  -- Cebolinha
(4, 22),  -- Rúcula
(1, 15),  -- Pimentão
(5, 35),  -- Cenoura
(5, 30),  -- Beterraba
(4, 20),  -- Espinafre
(2, 25);  -- Manjericão

-- Inserindo Doações
INSERT INTO `doacoes` (`id_colheita`, `quantidade`) VALUES
(1, 15),  -- 15kg de Alface
(2, 10),  -- 10kg de Tomate
(3, 20),  -- 20 maços de Coentro
(4, 18),  -- 18 maços de Cebolinha
(5, 12),  -- 12kg de Rúcula
(6, 8),   -- 8kg de Pimentão
(7, 25),  -- 25kg de Cenoura
(8, 20),  -- 20kg de Beterraba
(9, 15),  -- 15kg de Espinafre
(10, 15); -- 15 maços de Manjericão

-- Inserindo Doações para Instituições
INSERT INTO `doacoes_instituicoes` (`id_doacao`, `id_instituicao`, `created_at`) VALUES
(1, 1, '2024-10-20'),
(2, 2, '2024-10-21'),
(3, 3, '2024-10-22'),
(4, 2, '2024-10-22'),
(5, 4, '2024-10-23'),
(6, 5, '2024-10-24'),
(7, 1, '2024-10-25'),
(8, 3, '2024-10-26'),
(9, 4, '2024-10-27'),
(10, 2, '2024-10-28'),
(1, 5, '2024-10-28'),  -- Mesma colheita doada para outra instituição
(7, 2, '2024-10-29');  -- Mesma colheita doada para outra instituição
