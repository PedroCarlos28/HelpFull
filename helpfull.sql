-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2025 às 01:26
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `helpfull`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `diarios`
--

CREATE TABLE `diarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto_diario` text NOT NULL,
  `humor` enum('Feliz','Triste','Neutro','Ansioso','Bravo','Calmo','Grato') NOT NULL,
  `data_criacao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `diarios`
--

INSERT INTO `diarios` (`id`, `usuario_id`, `texto_diario`, `humor`, `data_criacao`) VALUES
(2, 1, 'oi tudo bem? estou feliz', 'Feliz', '2025-11-03 16:02:06'),
(3, 1, 'hj estou muito grate com o pai treacarde', '', '2025-11-03 16:02:39'),
(4, 1, 's', 'Neutro', '2025-11-03 16:03:04'),
(5, 1, 'aaa', 'Ansioso', '2025-11-03 16:03:18'),
(6, 1, 'sdsdadsa', '', '2025-11-03 16:03:26'),
(7, 1, 'asdasdas', 'Calmo', '2025-11-03 16:03:30'),
(8, 1, 'asdasdas', '', '2025-11-03 16:03:34'),
(9, 1, 'sasadsa', '', '2025-11-03 16:07:46'),
(10, 1, 'asdasdasdas', 'Bravo', '2025-11-03 16:09:35'),
(11, 1, 'asdasasdas', 'Grato', '2025-11-03 16:09:39'),
(12, 1, 'oi', 'Feliz', '2025-11-03 16:10:12'),
(13, 2, 'Hoje acordei feliz', 'Feliz', '2025-11-18 14:13:49'),
(14, 2, 'asdasdas', 'Ansioso', '2025-11-18 15:08:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Pedro', 'pedroo@gmail.com', '$2y$10$D0C0NxLInqJRXErlZ6NqsejAX.dwM.XsZznnreFM3gJOkJYnnf5uK'),
(2, 'Maria', 'maria@gmail.com', '$2y$10$Jc75dFVkL1OTDRQi7Ur4xOJFGaHoqK4rWkWA8.mGPSqgqW5/G2VHm');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `diarios`
--
ALTER TABLE `diarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `diarios`
--
ALTER TABLE `diarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `diarios`
--
ALTER TABLE `diarios`
  ADD CONSTRAINT `diarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
