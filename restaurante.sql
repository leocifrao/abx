-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Mar-2020 às 21:47
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurante`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pratos`
--

CREATE TABLE `pratos` (
  `codigo` varchar(30) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `preco` float NOT NULL,
  `calorias` int(11) NOT NULL,
  `destaque` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pratos`
--

INSERT INTO `pratos` (`codigo`, `nome`, `categoria`, `descricao`, `preco`, `calorias`, `destaque`) VALUES
('brie-geleia', 'Tapas de Queijo Brie e Geleia', 'Entradas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 14, 400, 0),
('camarao-alho', 'Camarões Ao Alho', 'Entradas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 16, 340, 1),
('cheesecake-cereja', 'Cheese Cake de Cereja', 'Sobremesas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 16, 680, 1),
('churrasco-misto', 'Churrasco Misto', 'Pratos Principais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 26, 700, 0),
('costelinha', 'Costelinha de Porco', 'Pratos Principais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 29, 930, 0),
('creme-papaya', 'Creme de Papaya com Cassis', 'Sobremesas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 15, 520, 0),
('flan-frutas-vermelhas', 'Flan de Frutas Vermelhas', 'Sobremesas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 14, 620, 0),
('jardim-cogumelos', 'Jardim de Cogumelos', 'Entradas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 12, 290, 0),
('petit-gateau', 'Petit Gateau', 'Sobremesas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 19, 720, 0),
('picanha-brasileira', 'Picanha à Brasileira', 'Pratos Principais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 28, 890, 1),
('salada-grega', 'Salada Grega', 'Entradas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 11, 180, 0),
('salmao-legumes', 'Salmão Aos Legumes', 'Pratos Principais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales justo eu mauris tincidunt, id dignissim magna elementum. Sed euismod efficitur tortor eu facilisis. Proin augue nunc, luctus hendrerit velit sit amet, iaculis porta velit. In vulputate tristique urna. Praesent tempus ipsum augue, si', 29, 690, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pratos`
--
ALTER TABLE `pratos`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
