-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/09/2025 às 17:05
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `associacao_amanda`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associados`
--

CREATE TABLE `associados` (
  `id_associado` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `comunidade` varchar(255) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `data_associado` date NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `profissao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `associados`
--

INSERT INTO `associados` (`id_associado`, `nome_completo`, `email`, `cpf`, `cidade`, `comunidade`, `cep`, `data_associado`, `telefone`, `profissao`) VALUES
(1, 'Carolina', 'carolina@gmail.com', '52678570863', 'Sao Francisco', 'Rocinha', '39336000', '2025-09-18', '38999999999', 'Trabalhadora Rural'),
(2, 'Cha eun woo', 'chaeunwoo@gmail.com', '36748950986', 'são paulo', 'santos', '30045679', '2025-08-18', '38999777655', 'ator'),
(3, 'Felipe', 'felipe@gmail.com', '34565778900', 'Uberlandia', 'Morumbi', '56798702', '2025-08-05', '27809746587', 'cantor'),
(4, 'Raquel', 'raquel@gmail.com', '34586709278', 'Mirabela', 'Campos Gerais', '39800004', '2025-09-12', '37998876445', 'modelo'),
(5, 'Apollo', 'apollo@gmail.com', '16010834577', 'Campos do Jordao', 'Campinas', '39000300', '2025-09-05', '3899090845', 'engenheiro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contribuicao`
--

CREATE TABLE `contribuicao` (
  `id_contribuicao` int(11) NOT NULL,
  `data_vencimento` date NOT NULL,
  `valor_pago` float NOT NULL,
  `mes_referencia` varchar(50) NOT NULL,
  `pendencia` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_associado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contribuicao`
--

INSERT INTO `contribuicao` (`id_contribuicao`, `data_vencimento`, `valor_pago`, `mes_referencia`, `pendencia`, `status`, `id_associado`) VALUES
(1, '2025-02-28', 25463, 'abril', 'nao ha', 'pago', NULL),
(2, '2024-08-03', 1000, 'novembro', 'nao ha', 'pago', NULL),
(3, '2023-09-07', 4655, 'outubro', 'nao ha', 'pago', NULL),
(4, '2025-03-05', 456, 'julho', 'nao ha', 'pago', NULL),
(5, '2023-05-06', 200, 'julho', 'nao ha', 'pago', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `associados`
--
ALTER TABLE `associados`
  ADD PRIMARY KEY (`id_associado`);

--
-- Índices de tabela `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD PRIMARY KEY (`id_contribuicao`),
  ADD KEY `id_associado` (`id_associado`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD CONSTRAINT `contribuicao_ibfk_1` FOREIGN KEY (`id_associado`) REFERENCES `associados` (`id_associado`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
