-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Fev-2023 às 16:33
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `avisos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `boletins`
--

CREATE TABLE `boletins` (
  `id` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `conteudo` longtext NOT NULL,
  `tipo_aviso` varchar(50) NOT NULL,
  `nivel_permissao` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `remetente` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `boletins`
--

INSERT INTO `boletins` (`id`, `titulo`, `conteudo`, `tipo_aviso`, `nivel_permissao`, `data`, `remetente`) VALUES
(126, 'Noticia N°1', 'Essa é a notícia de número um publicada por mim', 'noticia, atividades, urgente, duvidas', '0', '2023-02-23', 'Roberto'),
(127, 'Notícia N°2', 'Essa é a notícia número 2 publicada por mim', 'noticia, atividades, urgente', '2', '2023-02-23', 'Roberto'),
(128, 'Nótica número 3', 'Essa é a notícia número 3 publicada por mim', 'noticia', '1', '2023-02-23', 'Roberto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `permissao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `nome`, `permissao`) VALUES
(21, 'Roberto', 'Diretoria');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `boletins`
--
ALTER TABLE `boletins`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `boletins`
--
ALTER TABLE `boletins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
