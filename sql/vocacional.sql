-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 25-Set-2018 às 02:34
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "-03:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vocacional`
--
CREATE DATABASE IF NOT EXISTS `vocacional` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `vocacional`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `cand_id` int(11) NOT NULL,
  `cand_nome` varchar(30) NOT NULL,
  `cand_email` varchar(30) NOT NULL,
  `cand_serie` varchar(30) NOT NULL,
  `cand_tel` varchar(22) NOT NULL,
  `resultado_curso` varchar(700) NOT NULL,
  `cand_cidade` varchar(200) NOT NULL,
  `cand_date` varchar(20) NOT NULL,
  `ip_visitante` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatoUNIDESC`
--

CREATE TABLE `candidatoUNIDESC` (
  `cand_id` int(11) NOT NULL,
  `cand_nome` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cand_email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cand_serie` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cand_tel` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultado_curso` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cand_cidade` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cand_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `candidatoUNIDESC`
--

INSERT INTO `candidatoUNIDESC` (`cand_id`, `cand_nome`, `cand_email`, `cand_serie`, `cand_tel`, `resultado_curso`, `cand_cidade`, `cand_date`) VALUES
(10, 'Marcos', 'mpaulo.ar@gmail.com', '3', '30255990', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(11, 'Eduarda Alicy', 'eduarda.alicy@hotmail.com', '3', '82416470', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(12, 'Alícia Sousa', 'sousaalicia85@gmail.com', '3', '92873740', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(13, 'Mayara garcia Maciel', 'maay.gmaciel@gmail.com', '3', '93750052', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(14, 'Adrine ', 'adrineyasmin.ay@gmail.com', '3', '95523270', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(15, 'Flávia Gabriele Sampaio dos Sa', 'fgabriele34@gmail.com', '3', '96521308', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(16, 'Mateus Neves Sousa Ramos', 'mateus.skinny@gmail.com', '3', '98203630', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(17, 'Suyanne Lopes ', 'suyanne10@hotmail.com', '3', '91535387', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(18, 'Janaína', 'janakruaysan@gmail.com', '3', '91645025', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(19, 'Lorrany Gaspar', 'lorranygaspar09@gmai.com', '3', '98819737', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(20, 'Miria de Melo', 'miriamelo@icloud.com', '3', '91355667', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(21, 'Ingrid Messias dos Santos ', 'Ingrid _0017@hotmail.com', '3', '94183406', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(22, 'Ingrid Larissa ', 'iaiav8@gmail.com', '3', '81401975', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(23, 'Amanda Santos Veloso', 'flica_flica@outlook.com', '3', '99090278', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(24, 'Maria Luíza Alves da Costa', 'jesuslene.alves@hotmail.com', '3', '94153285', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(25, 'Luzia ', 'sousaluzia4@gmail.com', '3', '84949908', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Ocidental', '2016 - 27 '),
(26, 'Jaqueline', 'jakepaz640@gmail.com', '3', '92610438', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(27, 'Rafaella Gomes Bezerra ', 'rafagomesjem@gmail.com', '3', '91790060', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(28, 'Ana Gabriella Silva Ramso ', 'bybyella2011@hotmail.com', '3', '93712121', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(29, 'Juan Henrique', 'ruaanhs@gmail.com', '3', '96294165', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(30, 'Rodrigo Canuto Rocha', 'rodrigorocha1915@gmail.com', '3', '93593534', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(31, 'ANGELO MARCIO', 'contador.angelo@gmail.com', '3', '92568985', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(32, 'renata', 'renata.educ@hotmail.com', '3', '92989873', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(33, 'Danilo', 'danilo_dnt@outlook.com', 'Concluido', '84406926', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Brasilia', '2016 - 27 '),
(185, 'Isadora', 'isa@gmail.com', 'concluido', '91963430', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Brasilia', '2016 - 27 '),
(37, 'Layne Veloso', 'lala3214@hotmail.com', '3', '81125748', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(38, 'Lorena Ferreira', 'lorenafsilva@icloud.com', '3', '99386313', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Brasilia', '2016 - 27 '),
(39, 'Nycolle Duarte', 'nycolleduaarte@gmail.com', '3', '92977906', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(40, 'Marcos', 'mpaulo.ar@gmail.com', 'Concluido', '30255990', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(41, 'lana', 'lanaaliraa@outlook.com', '3', '91475916', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(42, 'luis allan ', 'luisallan58@gmail.com', '3', '92992322', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 27 '),
(43, 'Yan ribeiro gonçalves', 'yanrineiro.villa@gmail.com', '3', '91557094', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(44, 'Jaqueline Tavares', 'jacquelline18@gmail.com', '3', '91560464', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(45, 'Alicia Lima da Conceição', 'aliinegah@gmail.com', '3', '93375421', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(46, 'eduardo', 'eduardosantosdias2014@gmail.co', '3', '93465290', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Brasilia', '2016 - 27 '),
(47, 'Estefane ', 'estefanemello98@gmail.com', '3', '99587887', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(48, 'Thallys Silva Braz', 'thallys.braz1@hotmail.com', '3', '98033526', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(49, 'Gustavo Bezerra da  Silva', 'gustavobs226@gmail.com', '3', '93475968', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(50, 'Diego freitas', 'diegofreitas911@gmail.com', '3', '96099059', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(51, 'Priscila', 'priscilabarboza1999@gmail.com', '3', '96322286', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(52, 'Luiz Henrique Cassimiro', 'luizcassimiro123456789@gmail.c', '3', '86546736', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(53, 'igor da cunha matias ', 'igor.cunha2011@gmail.com', '3', '92155502', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(54, 'renan ribeiro silva', 'renanrb.2016@gmail.com', '3', '86812560', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(55, 'marcela dos santos oliveira', 'marzinhaluza@gmail.com', '3', '96024650', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(56, 'Keven ', 'kevenjordao.oficial@gmail.com', '3', '83332341', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(57, 'Natanael Rodrigues', 'natanaelrodriguesmanos@gmail.c', '3', '98658885', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(58, 'daniel', 'daniel_san16@outlook.com', '3', '83195924', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(59, 'Edis Henrique da Silva Peres', 'edis.rick@hotmail.com', '3', '93832519', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(60, 'Robson Vinicius Espindola Tele', 'viniciusteles53@gmail.com', '3', '96928190', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(61, 'juan martim alamino neto', 'juan.martins.alamino@gmail.com', '3', '98093475', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(62, 'rhuan felipe', 'rhuanfelipe27@hotmail.com', '3', '95684541', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(63, 'Patrick Vieira ', 'Patricksouza.vieira13@gmail.co', '3', '93923910', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(64, 'jeyze karyne dos santos brito', 'jeyzedossantos@gmail.com', '3', '95874585', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(65, 'Victor Hugo Lopes de Queiroz', 'victor.lopes.queiroz@hotmail.c', '3', '98369094', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(66, 'erica da silva ', 'ericasilva589@gmail.com', '3', '95978927', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(67, 'Paulo Victor M Bueno', 'paulomarquesvictor2015@gmail.c', '3', '93866248', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(68, 'Geisse Saraiva Vieira', 'saraivageisse@gmail.com', '3', '96846760', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(69, 'Bruna Ranielly', 'bruna.ranielly@hotmail.com', '3', '92963021', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(70, 'Thalita Pereira Mendes', 'thalita-p.m@hotmail.com', '3', '95094773', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(71, 'Sara Barbosa De Barros ', 'sarabarbosabarros@outlook.com', '3', '92529752', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(72, 'Rhanna Carolyne Silva Oliveira', 'caaoli.co@gmail.com', '3', '98666895', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(73, 'cezar silva sousa ', 'c5zarsilva@gmail.com', '3', '93771633', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(74, 'victor hugo viana oliveira nun', 'victorhugoviaana9876@gmail.com', '3', '96742912', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(75, 'Marcelo Henrique de Oliveira ', 'marcelooliveirafi4@gmail.com', '3', '81629004', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(76, 'JEANY PAES LANDIM DA SILVA', 'jepaes07@gmail.com', '3', '92095958', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(77, 'Joana Dark Leal dos santos', 'joanaleal1902@gmail.com', '3', '91778742', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(79, 'pedro henrique araujo', 'araujo.pedro62@gmail.com', '3', '92470856', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(80, 'ana victoria de oliveira lima ', 'anavictoriadeoliveira@gmail.co', '3', '91471002', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(81, 'Mirela ', 'mirelacosta41@hotmail.com', '3', '98613429', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(82, 'Marcos Braga', 'Xkiritoxx201@gmail.com', '3', '91299283', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(83, 'andre sena', 'THEAndresenadasilva@gmail.com', '3', '81738598', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(84, 'Débora', 'priscilabarboza1999@gmail.com', '3', '92852093', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(85, 'willyam gutemberg da silva nog', 'willyamguto@gmail.com', '3', '92735998', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(86, 'Daniella', 'daniellafsn@gmail.com ', '3', '91884733', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(87, 'victor de souza Rodrigues', 'victor.vsr140@gmail.com', '3', '96032669', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(88, 'clayton da silva carvalho', 'claytons407@gmail.com', '3', '98093907', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(89, 'Edis Henrique da Silva Peres', 'edis.rick@hotmail.com', '3', '93832519', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(90, 'Pablo Jesus da Silva Telles Gu', 'pablojesus98@hotmail.com', '3', '96117039', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(91, 'jaqueline ribeiro pereira', 'jaquespd3@gmail.com', '3', '98388283', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(92, 'Ana Karoline Fernandes', 'Kfernandesmesquita@gmail.com', '3', '95571177', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Ocidental', '2016 - 27 '),
(93, 'marcus vinicius', 'viniciusmalq190@gmail.com ', '3', '85200312', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(94, 'Daniel Campos', 'danielcampos@hotmail.com', '3', '96115750', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(95, 'Natasha oliveira', 'natachamariaoliveira944@gmail.', '3', '92566926', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(96, 'douglas ferreira Santos', 'douglasferreiradfs987@gmail.co', '3', '93573444', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(97, 'gabriel alberto de oliveira lo', 'gabrielalberto@e-mail.com', '3', '96828641', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(98, 'alan dos santos costa', 'salan8032@gmail.com', '3', '99548606', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(99, 'Matheus Fontes Silva', 'kiko09.fontessilva@gmail.com', '3', '85297103', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(100, 'Gabriel dos Santos Costa', 'Icegabriel1234@gmail.com', '3', '91689609', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(101, 'João Carlos Souza Magalhães', 'joaocarlossouzamagahaes@gmail.', '3', '91790060', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(102, 'Lucas Vaz', 'lucasvaz.7@hotmail.com', '3', '92633008', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(103, 'agatha Borges Carvalho ', 'agathaborgescarvalho@gmail.com', '3', '36200301', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(104, 'Fabricio Alencar', 'fabricioalencar@hotmail.com', '3', '96341478', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(105, 'daniela', 'daniela.gestevao@gmail.com', 'Concluido', '91471002', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Ocidental', '2016 - 27 '),
(106, 'Guilherme marques dos Santos', 'guilhermemarques28@outlook.com', '3', '91841446', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(107, 'Debora Pereira da SIlva ', 'deborasilva4523@gmail.com', '3', '91958409', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(108, 'Jecimiel Arruda', 'jecimielarruda4@gmail.com', '3', '98617552', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(109, 'suzany souza ribeiro', 'suzanysouzaribeiro@gmail.com', '3', '92887192', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(110, 'Pedro Aurelio', 'juniorpedro@gmail.com', 'Concluido', '94621235', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Ocidental', '2016 - 27 '),
(112, 'Fernanda Negreiros Reis', 'fernandangrs_@hotmail.com', '2', '81557951', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(113, 'ingrid lopes de lima', 'indy.llopes03@gmail.com', '3', '93077092', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(114, 'Marcílio R. de Souza Junior', 'marciliojrt@gmail.com', '2', '82779534', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(115, 'Kevyn Clayds', 'kevynclayds@gmail.com', '2', '84675093', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(116, 'Alexandre Magalhães C. da Cunh', 'alexandremagalhaes878@gmail.co', '3', '85508557', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(117, 'Alexia Thais', 'alexiathaislima@hotmail.com', '3', '81032517', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(118, 'Yan rodrigues', 'maconha3001@hotmail.com', '2', '88432254', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(119, 'caio luiz ', 'caiobareta5@gmail.com', '3', '86162373', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(120, 'João Guilherme', 'leiladiaspineo@gmail.com', '2', '93169330', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(121, 'Isamara santos', 'isamarasantos23977@gmail.com', '2', '91854605', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(122, 'Renata Barcelos ', 'renatasb123@gmail.com', '3', '93540110', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(123, 'Patrícia Feliciano da Silva', 'felicianopatricia632@gmail.com', '3', '91535793', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(124, 'Eduardo Souto Vellasco', 'eduardovellasco@gmail.com', '2', '98065882', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(125, 'Juliana Lima', 'julianalimapouso@gmail.com', '3', '82792929', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(126, 'Matehus Viana', 'mj-chuck23@hotmail.com', '2', '85930654', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(127, 'Alan Charles França Do E. Sant', 'alancharles011@gmail.com', '3', '81987185', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(128, 'kawany albuquerque ribeiro', 'kakawdiva@gmail.com', '2', '86454289', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(129, 'Isabella Araujo', 'bellinha_feliz@hotmail.com', '3', '93382524', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(130, 'Filipe Oliveira Martins', 'fi1li2pe3@gmail.com', '3', '93707218', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(131, 'Aline ', 'linne.nogueira@hotmail.com', '3', '93773625', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(132, 'Felipe de Oliveira Barbosa', 'felipe12mengao@hotmail.com', '3', '93297227', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(133, 'eduardo filipe de melo cassian', 'eduardofilipe538@gmail.com', '3', '83003133', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(134, 'Eduardo Kapassi', 'eduardokapassi@gmail.com', '3', '82863637', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(135, 'laura carvalho', 'lauracbatista@hotmail.com', '2', '93650424', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(136, 'Ronald', 'Ronaldlopes3794@gmail.com', '2', '93939414', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(137, 'Carlos Chafin', 'maconha3001@hotmail.com', '2', '94001684', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(138, 'Isabela Santos ', 'hermione.gomes@gmail.com', '2', '92446523', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(139, 'Ilana Costa Ramos', 'ilanacoostar@gmail.com', '2', '92785194', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Valparaiso', '2016 - 27 '),
(140, 'carlos alves', 'carlosalvesministro@hotmail.co', 'Concluido', '91004598', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Novo gama', '2016 - 27 '),
(141, 'Andressa de Souza Gomes', 'andressa123sg@gmail.com', '2', '95254224', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(142, 'gabriella ', 'gabriellavn@hotmail.com', '2', '94240601', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(143, 'Kevyn Clayds', 'kevynclayds@gmail.com', '2', '84675093', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(144, 'shyrllen Mendes dos Santos.', 'shyrllen.mendes16@gmail.com', '3', '95219094', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 27 '),
(184, 'Ezequiel', 'ezequieoliveira.240@gmail.com', 'Concluido', '91861007', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(148, 'Alexandre', 'alexandrenilton@gmail.com', 'Concluido', '99672643', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(149, 'FRANCINETE DA SILVA DANIEL', 'francinete.daniel@gmail.com', 'Concluido', '86045700', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Gama', '2016 - 27 '),
(150, 'JUBILEI', 'jubileu@gmail.com', 'Concluido', '93366996', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(152, 'Andresa Sousa', 'andresasousa161@gmail.com', '1', '83610490', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(153, 'Yasmin Figueira', 'yasminanafi@outlook.com', '1', '99478504', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(154, 'Ana Luiza da Costa Pereira', 'costaana729@gmail.com', '2', '94222373', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(155, 'Andryelle Ribeiro Arouche', 'Dorietson@hotmail.com', '2', '95519359', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(156, 'jhenyffer lopes de sousa', 'jhenyfferlsousa@hotmail.com', '1', '95749908', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(157, 'Marilia Gabrielle Godinho Card', 'mariliag1999@gmail.com', '2', '94323648', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(158, 'Raiane Maria ', 'Raianemc65@gmail.com', '1', '81346710', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(159, 'ana livia ', 'analivias@gmail.com', '1', '95524667', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(160, 'isabela', 'iisabelaa.marques@gmail.com', '1', '99710152', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(161, 'Gabriela Maria Alcoforado de S', 'gabbialcoforado@gmail.com', '2', '99885617', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(162, 'Helen de souza Maciel', 'helensouza209@gmail.com', '2', '98522630', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(163, 'Pedro Vitor Mendes', 'pedrovmendess@hotmail.com', '8', '98719203', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(164, 'Vitória MarIa da Silva Ribeiro', 'vitoria.ribeiro393@gmail.com ', '3', '93816410', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(165, 'Denilson de Souza Oliveira', 'denilson.do63@gmail.com', '3', '98606259', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(166, 'gabriela de souza silva', 'gabriela_souza28@hotmail.com.b', '2', '99996873', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(167, 'Elisson Farias Batista', 'elissonpk@gmail.com', '3', '98683345', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(169, 'Demilly barreiros cordeiro ', 'Demilly16@hotmail.com', '2', '96940373', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(170, 'greicyele lopés da silva', 'greicy.silva.7505@hotmail.com', '1', '95899026', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(171, 'gisele', 'mgisele3008@hotmail.com', '9', '94043722', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Luziânia', '2016 - 27 '),
(172, 'julia maciel boy', 'jujuboy12345678@gmail.com', '7', '96569295', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(174, 'Gabriela Maria Alcoforado de S', 'gabbialcoforado@gmail.com', '2', '99885617', 'Psicologia - Letras - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 27 '),
(175, 'christiany Borba', 'christiany.borba@unidesc.edu.b', 'Concluido', '84070079', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Brasilia', '2016 - 27 '),
(176, 'Joao victor', 'joaovictor@.lz.hotmail.com2@.c', '8', '96365867', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(177, 'greicyele lopés da silva', 'greicy.silva.7505@hotmail.com', '1', '95899026', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Luziânia', '2016 - 27 '),
(179, 'Jéfson David', 'jd@gmail.com', 'Concluido', '99030000', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Luziânia', '2016 - 27 '),
(180, 'Brunno Andrade', 'brunno.toiz@gmail.com', '3', '93730823', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(181, 'Gabriel Lima', 'gabrielbrandaolima@gmail.com', 'Concluido', '83055011', 'Administração - Direito - Engenharia civil - Ciências contábeis - Gestão ambiental  - Farmacia', 'Valparaiso', '2016 - 27 '),
(182, 'Brunno Andrade', 'brunno.toiz@gmail.com', 'Concluido', '93730823', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(187, 'Eduardo Kaiser Cabral', 'eduardo.kaiser@hotmail.com', 'concluido', '30830425', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(189, 'Pedro Aurelio', 'xx.pedr0.xx@hotmail.com', 'concluido', '92086514', 'Jornalismo - Publicidade - Educação Física - Pedagogo - Turismo - Agronomia', 'Ocidental', '2016 - 27 '),
(190, 'Brunno Andrade', 'brunno.toiz@gmail.com', 'concluido', '93730823', 'Sistema de Informação - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 27 '),
(192, 'oi', 'oi@oi.com', '3', '99999999', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(193, 'Lavinia Lafit', 'lavinialindasexy@hotmail.com', 'concluido', '86525987', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Novo gama', '2016 - 28 '),
(194, 'David', 'david.ocosta@planejamento.gov.', 'concluido', '98235786', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Brasilia', '2016 - 28 '),
(195, 'Débora', 'Ahfmf@hotmail.com', '3', '91258436', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(196, 'Yan ', 'yanqueiroz22@gmail.com', '3', '96416454', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(197, 'Cláudia Coutinho Rocha', 'claudiacout10@hotmail.com', '3', '96585955', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(198, 'Ingrid Raffaela', 'Ingrid.Raffaela1@gmail.com', '3', '86077770', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(199, 'Iasmym Araújo Ribeiro', 'iasmymaraujo4@gmail.com', '3', '95803571', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(200, 'Mariana Gomes Silva', 'marianabarbosadosreis@outlook.', '3', '95797727', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(201, 'Ana Luiza Alves Oliveira', 'ana.lao@outlook.com.br', '3', '95962727', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(202, 'Matheus Barroso', 'mathbarroso@hotmail.com', '3', '98138880', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(203, 'sofia esther ', 'sofiaestermartins@hotmail.com', '3', '96736294', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(204, 'Nathalia Oliveira Paulo de And', 'nathalia_opa@hotmail.com', '3', '91830454', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(205, 'Beatriz Maria dos Santos Penga', 'bpenga09@gmail.com', '3', '81492192', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(206, 'Aline Menezes', 'Alinemenezes2105@gmail.com', '3', '95680052', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(207, 'Camila Grazyella', 'camilagrazy15@hotmail.com', '3', '84135257', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(208, 'Clara Maria Silva Souza', 'cclaraa17@gmail.com', '3', '92451558', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(209, 'jonadabe', 'jonadabeo85@gmail.com', '3', '92131422', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(210, 'Jhonatan Nóbrega de Oliveira', 'jhonatan_nobreg@hotmail.com', '3', '91882987', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(211, 'Samuel de Oliveira Gomes', 'muel.oliveira17@gmail.com', '3', '95142411', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(212, 'Dyeska Bezerra de Melo', 'dyeskacarateca@hotmail.com', '3', '94379094', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(213, 'Luciano Lopes D. dos Santos', 'lufilhote@gmail.com', '3', '82104968', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(214, 'Bryan Robert S. Alencar', 'brsa1010@gmail.com', '3', '91863761', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(215, 'Daniel Vítor ', 'daniel_opens@hotmail.com', '3', '91626280', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(216, 'Erinaldo de S. Gomes', 'erinaldogomes@gmail.com', '3', '91146740', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(217, 'Larissa Costa', 'larissa22102000@gmail.com', '3', '98411219', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(218, 'Artur Oliveira da Silva', 'artutu076@gmail.com', '3', '92404197', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(219, 'Guilherme', 'guicrossbr14@outlook.com', '3', '82276103', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(220, 'gean bezerra de macedo', 'gean102008@hotmail.com', '3', '92196398', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(221, 'Francisco Fíuza da Silva', 'franfiuzasilva@gmail.com', '1', '82474657', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(222, 'Larissa Costa', 'larissa22102000@gmail.com', '3', '98411219', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(223, 'sabryna', 'sah321benjamin@gmail.com', '1', '82034202', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(224, 'Amanda', 'marisocco@gmail.com', '1', '91718198', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(225, 'natalia ferrreira', 'natyferreiraq@gmail.com', '1', '91961967', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(226, 'maria clara marrocos rodrigues', 'mariaclara.marrocos@gmail.com', '9', '86679167', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Gama', '2016 - 28 '),
(227, 'Isabella Victória de Carvalho ', 'bellaagguiar@gmail.com', '1', '91760657', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(228, 'Luciana Braga', '2000braga@gmail.com', '1', '93424930', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(229, 'bruno', 'brunno.santos2012@hotmail.com', '9', '95539028', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(230, 'joao victor lima dos santos ', 'joaosinho_lima@hotmail.com', '1', '99949267', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(231, 'Yasmin Carvalho', 'yasminncarvalhorodrigues@gmail', '1', '91150376', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(232, 'Maria Júlia Martins Sedlmaier', 'mariajuliamssedlmaier5@gmail.c', '9', '96065970', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(233, 'Dyeska Bezerra de Melo', 'dyeskacarateca@hotmail.com', '3', '94379094', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(234, 'rayssa', 'naninhajujubs@gmail.com', '1', '92042093', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(235, 'Elias Matos Teixeira', 'eliasmatosteixeira@hotmail.com', '9', '96717282', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(236, 'Ana Carolina Barbosa', 'anacarolina-linds@hotmail.com', '1', '92446769', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(237, 'maryana adler ', 'maryana.adler123@gmail.com', '1', '93009135', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(238, 'bruno diogo silva ramalho da n', 'bruno251198@gamil.com', '3', '81364946', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(239, 'claudio', 'claudiovaz2011@gmail.com', '1', '95941921', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(240, 'Marco Aurelio Vieira Lima', 'marcoaureliovieira06@gmail.com', '9', '99076706', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(241, 'guilherme', 'guilhermecmp99@gmail.com', '3', '93725359', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(242, 'Samuel azevedo', 'samuelxcap@gmail.com', '3', '92894173', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(243, 'Kezia', 'linda.gki@hotmail.com', '3', '93228705', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 28 '),
(244, 'Jéssica Félix Motta', 'jessica_m1999@hotmail.com', '3', '85280048', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(245, 'Yan', 'yanqueiroz22@gmail.com', '3', '96416454', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(246, 'Samuel de Oliveira Gomes', 'muel.oliveira17@gmail.com', '2', '95142411', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(247, 'Gláucia Karoline Véras Lopes', 'mirelleveras@hotmail.com', '1', '84462084', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(248, 'Fernanda ', 'Fernandasamara22@gmail.com', '1', '81313928', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(249, 'Jeniffer ', 'alvesjeniffer683@gmail.com', '1', '82778166', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(250, 'Yan', 'yanqueiroz22@gmail.com', '3', '96416454', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(251, 'Gláucia Karoline Véras Lopes', 'mirelleveras@hotmail.com', '1', '84462084', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(252, 'maria clara marrocos rodrigues', 'mariaclara.marrocos@gmail.com', '9', '86679167', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Gama', '2016 - 28 '),
(253, 'Bryan Robert S. Alencar', 'brsa1010@gmail.com', '3', '91863761', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(254, 'Yasmin Carvalho', 'yasminncarvalhorodrigues@gmail', '1', '91150376', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(255, 'Josue ', 'marcoaureliovieira06@gmail.com', '3', '95654654', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(256, 'Luciana Braga', '2000braga@gmail.com', '1', '93424930', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(257, 'lewander ', 'lewanderlindo@hotmail.com', 'concluido', '95477657', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(258, 'ALAN ROGERIO SOUSA SANTOS', 'allanroger7@gmail.com', '6', '96985698', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(259, 'Silas Henrique Quintino dos Sa', 'Silashenrique_13@homail.com', '3', '93345327', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(260, 'Rômulo Luis Cavalcante Gomes', 'romulocavalcante10@gmail.com', '3', '84228057', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(261, 'Everton meneses araujo', 'everton.meneses@outlook.com', '3', '84228057', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(262, 'João D\'Avila', 'joao.davila@hotmail.com', '3', '56985876', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(263, 'Mateus Felipe Torquato Dias', 'fmateus852@gmail.com', '3', '93161587', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 28 '),
(264, 'Lia Gabriele ', 'souliagabriele@hotmail.com', '3', '82998879', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(265, 'Ana Flávia Rodrigues Mendes', 'anaflaviarmn25@hotmail.com', '3', '92592821', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(266, 'gabriel', 'gabrielfillpegf23@gmail.com', '3', '93522196', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(267, 'wanderleia ', 'wanderleiafeitosa153@gmail.com', '3', '91567857', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(268, 'Davi Carrasco Abrão', 'davicarrascoabraoo@gmail.com', '3', '86559033', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(269, 'Tiffany Carvalho Lima ', 'tiffany.carvalho.lima@gmail.co', '3', '92249773', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(270, 'Mauricio Rodrigues', 'mauricio.log98@hotmail.com', '3', '92155820', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(271, 'estephany', 'estephanygabrielly123@gmail.co', '3', '95798303', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(272, 'mylla Gabrylle', 'mymi2121@hotmail.com', '3', '93195472', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(273, 'Amanda Ariel ', 'arielamandat@gmail.com', '3', '84373035', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(274, 'levi', 'leviborges98@gamil.com', '3', '95677363', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(275, 'Ana Flávia Rodrigues Mendes', 'anaflaviarmn25@hotmail.com', '3', '92592821', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(276, 'Cléber Vinícius Chagas de Souz', 'cleber.vinicius468@gmail.com', '3', '86322884', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(277, 'Charles', 'fcfrfcfr@gmail.com', '3', '99931275', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(278, 'Giovanna Alves', 'gihoran58@gmail.com', '3', '93497676', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(279, 'Felipe', 'felipeaquinosorato@gmail.com', '3', '82867561', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(280, 'rebeca da silva santos', 'rebeccasylva@gmail.com', '3', '95276159', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(281, 'barbara', 'barbara.menezes4554@gmail.com', '3', '92488778', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 ');
INSERT INTO `candidatoUNIDESC` (`cand_id`, `cand_nome`, `cand_email`, `cand_serie`, `cand_tel`, `resultado_curso`, `cand_cidade`, `cand_date`) VALUES
(282, 'Alyce Alcântara', 'alyce-linda@hotmail.com', '3', '92420943', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(283, 'Alex Cardoso', 'alex.cardozo100@gmail.com', '3', '98767441', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(284, 'isabela silva rocha', 'alex.cardozo100@gmail.com', '3', '98767441', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(285, 'Nilmara Câmara ', 'nylcamara18@gmail.com', '3', '85662307', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(286, 'Izabel Alves dos Santos', 'alvesizabel_@hotmail.com', '3', '36151070', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(287, 'Felipe Felix', 'felipesfelixx@gmail.com', '3', '83261239', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(288, 'Davi Carrasco Abrão', 'davicarrascoabraoo@gmail.com', '3', '86559033', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(289, 'andressa nogueira', 'andreianogueira2209@gmail.com', '3', '96119110', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(290, 'Gustavo', 'gustavo_ofera9@hotmail.com', '3', '81692372', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(291, 'Andreia Nogueira', 'andreianogueira2209@gmail.com', '3', '96119110', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(292, 'Amanda corina soares da costa ', 'amandinhaemarcelojunior@gmail.', '3', '95717470', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(293, 'Samara SantoS', 'samantinha.viera@gmail.com', '3', '93901755', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 28 '),
(294, 'raquel', 'raquelsilva8970@gmail.com', '3', '93649213', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(295, 'suzania fogaça domingues', 'suzaniafd@gmail.com', '3', '95075863', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(296, 'Luís Jefferson', 'luisjeferson_001@hotmail.com', '3', '82175097', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(297, 'Diego ramos dos santos', 'diegoramos@gmail.com', '3', '96594820', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(298, 'Mauricio', 'mauricio.log98@hotmail.com', '3', '92155820', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(299, 'Igor Mendes', 'igor4santos@gmail.com', '3', '83029562', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 28 '),
(300, 'jeiziana de souza pereira', 'jasbndfjbsfb@gmail.com', '3', '96861699', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(301, 'Júlia / Medeiros°', 'julia.medeiros@gmail.com', '7', '86525987', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(302, 'Renato Rodrigues', 'renatoshared@hotmail.com', '3', '98065489', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(303, 'Lorena ', 'lorena_lemesbl@outlook.com', '3', '99520262', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(304, 'Desirée Cavalcante', 'desireesilentgirl@gmail.com', '3', '96180295', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(305, 'Vinicus de sena Rodrigues', 'viniciusag47@outlook.com', '3', '92038078', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(306, 'leanny aguiar silva ', 'leanny.aguiar15@hotmail.com', '3', '91825397', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(307, 'césar júnio mendes rodrigues', 'cjunior437@gmail.com', '3', '86162373', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(308, 'carolina steffane', 'karolzinhasteffany108@gmail.co', '3', '94120981', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(309, 'marcelo henrique fernandes san', 'marcellofla2010@gmail.com', '3', '93207002', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(310, 'Amanda ', 'armartins98@gmail.com', '3', '81824034', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(311, 'Carlos Gabriel d Albuquerque L', 'carlosgabrielima@hotmail.com', '3', '91037857', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(312, 'Henrique', 'araujoh02@hotmail.com', '3', '36054933', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(313, 'matheus', 'matheusmiaranda700@hotmail.com', '3', '95649401', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 28 '),
(314, 'eduardo', 'eduardo.eduaraujo@gmail.com', '3', '95817784', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(315, 'Andressa Cunha', 'andressacunha199@gmail.com', '3', '96346841', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(316, 'gleicione peixoto de oliveira', 'gleicione.oliveira18@gmail.com', '3', '95305889', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(317, 'Letícia Gomes ', 'leticiagomespereiradeabreu@gma', '3', '93323268', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(318, 'Joao Gabriel', 'gabrielsbarroso@globo.com', '3', '81865524', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(319, 'lilian', 'lilianoliveira152@gmail.com', '3', '96374697', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(320, 'Elieuza Ribeiro ', 'elieuzaribeiro19@gmail.com', '3', '98376263', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(321, 'Alyce Alcântara', 'alyce-linda@hotmail.com', '3', '92420943', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(322, 'Andressa Rodrigues Lima', 'dessinha2k10@gmail.com', '3', '92288994', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(323, 'nataly miranda ', 'nataly.stefany1234@gmail.com', '3', '91083076', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(324, 'Wagner Junio Silva Ribeiro  ', 'wagner.wjsr@gmail.com', '3', '95915055', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(325, 'Brenda Mendes Alves', 'bbbma31@hotmail.com', '3', '96957915', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(326, 'Amanda de Araújo Ferreira', 'amanda96397712@gmail.com', '3', '99152826', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(327, 'Flávia Novo da Silva', 'flavianovosilva@hotmail.com', '3', '91497733', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(328, 'Estefani de Souza', 'estefani_14souza@hotmail.com', '3', '91388521', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 28 '),
(329, 'saralins furtado', 'saralinsindia@gmail.com', '3', '85066009', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(330, 'Brenda Stephanie Bruno de Jesu', 'brendasbj@gmail.com', '3', '86810986', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(331, 'kaylane ', 'kaylanenascimento0@gmail.com', '3', '95516859', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(332, 'lilian', 'lilianoliveira152@gmail.com', '2', '96374637', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(333, 'lucas ', 'douglas_nascimento2012@hotmail', '3', '95673150', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(334, 'othavio maia', 'othaviomaiia@gmail.com', '3', '95545972', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(335, 'luciano', 'luc1ano.almeida2063@gmail.com', '3', '98045659', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Valparaiso', '2016 - 28 '),
(336, 'suellen cristina ', 'suellencristina080997@gmail.co', 'concluido', '92505134', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(337, 'Gabriela Araújo freitas', 'gabizinharaujo30@gmail.com', '3', '91505121', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(338, 'Danielle Jéssica Almeida Costa', 'danielle.jac@hotmail.com', '3', '99276081', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(339, 'Lara Ester da Costa Maciel', 'lara.maciel.lecm.le@gmail.com', '3', '92915293', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(340, 'jacqueline de alencar dos sant', 'jacqueline3640alencar@gmail.co', '3', '98020124', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(341, 'Myrella Araújo dos Santos', 'm.myrellaaraujo@hotmail.com', '3', '93676617', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(342, 'brendha rayanne', 'brendharmgp@gmail.com', '3', '84872807', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(343, 'Gabrielle Diulia Almeida Costa', 'gabrielle.dac@hotmail.com', '3', '98145020', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(344, 'Ana Beatriz', 'anabeatrizmaanaim@hotmail.com', '3', '92749512', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(345, 'Rafael Braga', 'rbferro5@outlook.com', '3', '93287950', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(346, 'natalia das chagas assunção', 'nataliadaschagas@outlook.com', '3', '81557951', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(347, 'michaelly', 'mmichaelly08@gmail.com', '3', '92265086', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(348, 'Layla da costa R conceição', 'layladacosta@88gmail.com', '3', '92207563', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(349, 'Gabriela Santos', 'gabisantosousa@gmail.com', '3', '92228213', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(350, 'João Carlos', 'joaocarlosfilho97@hotmail.com', '3', '93384021', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(351, 'Silas Henrique Quintino dos Sa', 'Silashenrique_13@hotmail.com', '3', '93345327', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(352, 'joão Pedro Rocha SAntos', 'sorriso_j@hotmail.com', '3', '91197810', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(353, 'joao vitor rcha', 'sorriso_j@hotmail.com', '3', '95744759', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(354, 'natalia das chagas assunção', 'nataliadaschagas@outlook.com', '3', '93926971', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(355, 'Leonardo Moura da Silva', 'leonardomoura838@gmail.com', '3', '95383072', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(356, 'rodrigo pereira batista ', 'duzzdiguin@hotmail.com', '3', '93554663', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(357, 'Hellen Celina Ribeiro de Jesus', 'hellencelinardj@gmail.com', '3', '99932582', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(358, 'leanny aguiar silva ', 'leanny.aguia15@hotmail.com', '3', '93017825', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(359, 'rebeca pietra azevedo teixeira', 'rebecapietraazevdoteixera@gmai', '3', '96739024', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(360, 'Peterson da Cunha', 'peterson.estevan@gmail.com', '3', '82906482', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(361, 'nielly', 'niellylopees91@gmail.com', '3', '95997761', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(362, 'Mariana', 'mari098soares@hotmail.com', '3', '96775730', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(363, 'ALEXANDRE PEREIRA ', 'nevesepereira@gmail.com', '3', '85315154', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(364, 'luana victoria', 'luanavictoria695@gmail.com', '3', '84478617', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(365, 'Ana Vitoria', 'av.malaquias18@hotmail.com', '3', '92392256', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(366, 'igor matheus de oliveira miran', 'igor-matheus14@hotmail.com', '3', '85819772', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(367, 'Thaís ', 'thaisg.santos-@hotmail.com', '3', '81697256', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(368, 'edmarcos', 'edmarcos3015@gmail.com', '3', '93470820', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(369, 'Caroline Teodoro Dos Santos ', 'karolzinha2016.cs@gmail.com', '3', '95281606', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(370, 'Eduardo Solon Carmo Da Silva', 'eduardosantosdias2014@gmail.co', '3', '36276316', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(371, 'Glauciene Vitoria Bueno dos Sa', 'glaucydf@gmail.com', '3', '91599444', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(372, 'joao vitor', 'joaohibiki.jovmn@gmail.com', '3', '84875157', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(373, 'Danielle Cristiny da Silva Far', 'danyelly_cristyny@live.com.pt', '3', '85347774', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Valparaiso', '2016 - 28 '),
(374, 'angela e beatriz ', 'beatriz_b.s@hotmail.com', '3', '95340209', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(375, 'fabiana de sousa lopes', 'fabiana.sousafs12@gmail.com', '3', '81082267', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(376, 'amanda nunes ', 'amandanunesbezerra@hotmial.com', '3', '93124060', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(377, 'Amanda Evellyn', 'amandaevellyn@gmail.com', '3', '86168371', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(378, 'sabrina', 'sasa.15_@hotmail.com', '3', '91965337', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(379, 'Mariana', 'mari098soares@hotmail.com', '3', '96775730', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(380, 'luis allan', 'luisallan58@gmail.com', '3', '99333620', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(381, 'josé raimundo santos', 'domunira@hotmail.com', 'concluido', '36240351', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(382, 'gabriel dos Santos Pereira ', 'bielzinho.jesusfreak@gmail.com', '3', '95619928', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(383, 'jédson Feitosa Torres', 'jedsomf@gmail.com', '3', '95745152', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(384, 'Leonardo Avelino de Albuquerqu', 'leosinhoavelino@gmail.com', '3', '81847783', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(385, 'vitoria correa', 'vitoriacelula12@gmail.com', '3', '84111241', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(386, 'samuel dos santos nascimeno ', 'samuelsantos806@gmail.com', '3', '91424292', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(387, 'vinícius dantas de oliveira', 'oliveiradantasvinicius@hotmail', '3', '94323829', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(388, 'myrele ', 'myrelecoelho16@gmail.com', '3', '91631921', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(389, 'Lucas barros Teotonio', 'lucasbarrosdanilo@gmail.com', '3', '93491688', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Valparaiso', '2016 - 28 '),
(390, 'Rafael Magalhães Maia', 'www.rafaelmaia@gmail.com', '3', '81932393', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(391, 'Jônatas Viana', 'jonatas.viana@hotmail.com', '3', '83565582', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(392, 'FRANCINEY DA SILVA DE JESUS', 'franciney563@gmail.com', '3', '98078304', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(393, 'Debora dos Santos ferreira', 'debora.ferreira680@gmail.com', '3', '91951338', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(394, 'Eliene Fernandes Rodrigues', 'eliene_fernandesr@hotmail.com', '3', '93638167', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(395, 'Karina Pereira rodrigues', 'karinapr.kaka@gmail.com', '3', '98589636', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(396, 'Klemer Sidney Dias do Nascimen', 'klemersidney@hotmail.com', '3', '93635281', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(397, 'ArtGus ARAUJO', 'araujoh02@hotmail.com', '3', '94323648', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(398, 'Evelyn Rodrigues da Costa', 'ev_brasilia@hotmail.com', '3', '36291125', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(399, 'Felipe Ribeiro', 'feliperibeiro@outlook.com.br', '3', '96680463', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 28 '),
(400, 'Klemer Sidney Dias do Nascimen', 'klemersidney@hotmail.com', '3', '93635281', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(401, 'Sarah Luiza Lima da Silva', 'bl21bb21@gmail.com', '3', '36274533', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(402, 'brenda carolina de paula da cu', 'brendacarolina882@gmail.com', '3', '82056177', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(403, 'G', 'hugorichard2010@hotmail.com', 'concluido', '96528563', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(404, 'amanda soares pereira costa', 'amandasoarespc@gmail.com', '3', '93124309', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(405, 'Evelyn Rodrigues da Costa', 'ev_brasilia@hotmail.com', '3', '36291125', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(406, 'gabriel dos Santos Pereira', 'bielzinho.jesusfreak@gmail.com', '3', '95619928', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 28 '),
(407, 'Gabriel Vieira Da Silva', 'higorbrandao99@hotmail.com', '3', '93996137', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(408, 'vinicius dantas de oliveira ', 'oliveiradantasvinicius@hotmail', '3', '94323829', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(409, 'eliene fernandes', 'eliene_fernandesr@hotmail.com', '3', '93638167', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(410, 'Debora dos Santos ferreira', 'debora.ferreira680@gmail.com', '3', '91951338', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(411, 'Helen', 'helenjaqueline.r@gmail.com', '3', '99981539', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(412, 'gabriel da silva rocha', 'gabriel-rocha1999@hotmail.com', '3', '91849723', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(413, 'RuanCristiano', 'ruancristianocavacanti@gmail.c', '3', '91590295', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(414, 'cristiano', 'cristianovianago@gmail.com', '3', '93659477', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(415, 'Klemer Sidney Dias do Nascimen', 'klemersidney@hotmail.com', '3', '93635281', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(416, 'Evelyn Rodrigues da Costa', 'ev_brasilia@hotmail.com', '3', '36291125', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(417, 'lúria zilá', 'luria.zila@hotmail.com', '3', '86087967', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(418, 'marcos venicius  ', 'markinhosalles19@gmail.com', '3', '86639762', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(419, 'Gleyslla Lorrayne Ferreira de ', 'lorraynne67@hotmail.com', '3', '93648671', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(420, 'Geovanny Coelho Alves', 'geovanny09_coelho@hotmail.com', '3', '95618078', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(421, 'eliene fernandes', 'eliene_fernandesr@hotmail.com', '3', '93638167', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(422, 'Klemer Sidney Dias do Nascimen', 'klemersidney@hotmail.com', '3', '93635281', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(423, ' Gabriel Ponte', 'gabriel.ponte98@gmail.com', '3', '93215809', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(424, 'Evelyn Rodrigues da Costa', 'ev_brasilia@hotmail.com', '3', '36291125', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(425, 'Stefany Cristina Ribeiro Alves', 'ster.titina@hotmail.com', '3', '96038126', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(426, 'Bianca', 'biancas99silva@gmail.com', '3', '93431340', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(427, 'Rafael Magalhães Maia', 'www.rafaelmaia@gmail.com', '3', '81932393', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(428, 'Victor', 'victorhugosilvapachu@gmail.com', '3', '95099628', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(429, 'Gabriella Cássia ', 'gab.cassia@hotmail.com', '3', '96952695', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(430, 'philipe stephan ', 'philipestephan36@gmail.com', '3', '85335201', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(431, 'Kennedy vitor', 'kennedyrock100@gmail.com', '3', '93470681', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(432, 'shayra paiva saavedra', 'shayrapaiva1@gmail.com', '3', '93000815', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(433, 'Brenda Vaz Dias', 'brendadiasvaz@hotmail.com', '3', '95169473', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(434, 'Beatriz Alves', 'bealvesouza@gmail.com', '3', '36202459', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Luziânia', '2016 - 28 '),
(435, 'keithe silva araujo', 'keithe.silva@gmail.com', '3', '93527405', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(436, 'Adriano Fernandes', 'adrianoipfernandes@gmail.com', '3', '91532081', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Luziânia', '2016 - 28 '),
(437, 'Fernanda Neres de Mendonça', 'nandaneres957@gmail.com', '3', '93785585', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(438, 'Bianca Alves de Souza', 'bemtevialves@gmail.com', '3', '84058974', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Luziânia', '2016 - 28 '),
(439, 'dalton patrick ', 'dpgds123456@gmail.com', '3', '93019772', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(440, 'desiane ferreira', 'desiane.ferreira.52@hotmail.co', '3', '99646480', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(441, 'Wanderson', 'wandersonsantiagosantos@gmail.', '3', '99757690', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(442, 'taynara Xavier Carvalho', 'taynara@hotmail.com', '3', '96929081', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(443, 'sueli e tais', 'sueli.as2730@gmail.com', '3', '98807405', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(444, 'Luciano Fernandes ', 'lucianofernandes.slanick@gmail', '3', '95999098', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(445, 'GISELE DA SILVA PEREIRA', 'nandaneres957@gmail.com', '3', '96548091', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(446, 'Felipe Lopes Evangelista', 'felipeevangelista1998@gmail.co', '3', '91363386', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(447, 'ingredy Tauane nunes de melo', 'ingredy_nunes@outlook.com', '3', '93289043', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(448, 'mercia martins', 'merciamartins46@gmail.com', '3', '99453770', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(449, 'danie antunes', 'danielantunes417@gmail.com', '3', '96553900', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(450, 'Karine', 'contatokarineabreu@hotmail.com', '3', '93759408', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(451, 'Suelen Souza da Costa', 'Suelensouzatop@gmail.com', '3', '92968624', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(452, 'michelle Ramos de Santana Cost', 'michelleramos105@outlook.com', '3', '84874102', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(453, 'Davi Santos', 'davisantos42@gmail.com', 'concluido', '92877534', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(454, 'kamila soares brandao', 'dpgds123456@gmail.com', '3', '93019772', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(455, 'Erica Patricia Ribeiro Da Silv', 'ericaribeiroprs@gmail.com', '3', '93330786', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(456, 'Bruna Arcanjo Santos Ferreira', 'Michelleramos105@outlook.com', '3', '81711514', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(457, 'Lorrana', 'lorranasouzalima@gmail.com', '3', '91410374', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(458, 'gisleny de paula pereira', 'gislenydp84@gmail.com', '3', '86062203', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(459, 'kassia de souza santiago', 'kassiasantiago2016@gmail.com', '3', '95145715', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(460, 'marilia santos da silva', 'mariliaperto084@gmail.com', '3', '81627350', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(461, 'lauesly pereira santana', 'lauesly4@gmail.com', '3', '84594597', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(462, 'larissa mendoca vieira', 'juniinoo41@gmail.com', '3', '92614644', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(463, 'Luciano Fernandes ', 'lucianofernandes.slanick@gmail', '3', '95999098', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(464, 'Ramiro Lucas Ramos Furtado', 'ramirolucas2040@gmail.com', '3', '93283458', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(465, 'Moisés Torres de Santana', 'moisests691@gmail.com', '3', '81718042', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(466, 'Andreina', 'andreila.laianny@gmail.com', '3', '92604497', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(467, 'daniela dara de sousa macedo', 'danieladar19970@gmail.com', '3', '91972857', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(468, 'yasmim', 'adrielleborges99@gmail.com', '3', '91309326', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(469, 'Suelen Souza', 'suelen.souza11@gmail.com', '3', '93933766', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(470, 'thauanny sousa', 'day1202@hotmail.com', '3', '93771735', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(471, 'samuel lucas pereira da costa ', 'lucassamuel0007@gmail.com', '3', '94348178', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(472, 'jessica karollayne', 'dsfsfdsf@gmail.com', '3', '81126062', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(473, 'joseane', 'dfsadsadf@gmail.com', '3', '94347941', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(474, 'Andreza Arcanjo Santos Ferreir', 'michelleramos105@outlook.com', '3', '93949505', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(489, 'Débora', 'd.debora@outlook.com', '8', '92018126', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(490, 'Débora Rodrigues Sampaio', 'deboravieirasam@outlook.com', 'concluido', '92089495', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(477, 'Dhuliane', 'dhuliane.f.gomes@outlook.com', '3', '95412474', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(478, 'Amanda Da Silva Rodrigues ', 'nandaah.rodriguessss@gmail.com', '3', '93740095', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(479, 'Rafaela Sá Russi', 'rafaelasarussi@gmail.com', '3', '92422342', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(480, 'isabel ribeiro alves', 'isabelribeiroalves.19.98@gmail', '3', '82538195', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(481, 'carina Da Cruz Lima ', 'carynalima2015@hotmail.com', '3', '82799912', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(482, 'Thiago Gonçalves Dantas', 'thiagomg2009@hotmail.com', '3', '95932921', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(483, 'Willian Souza', 'williansouzatop@gmail.com', '3', '93716561', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(484, 'jhonata mar', 'jhjhjh@gmail.com', '3', '96156847', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 28 '),
(485, 'eduardo', 'eduardofdo85@outlook.com', '3', '92676717', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(493, 'jose francisco', 'jun.in.ho21@hotmai.com', 'concluido', '81455263', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(491, 'Lucas', 'marques2215@gmail.com', 'concluido', '93234368', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(492, 'evelin', 'evelin.vida.96@gmail.com', 'concluido', '36256529', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 28 '),
(494, 'Anderson Costa', 'andgama@gmail.com', 'concluido', '21032129', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Gama', '2016 - 28 '),
(495, 'Vinicius de oliveira pinto', 'vinicinhos.oliveira@gmail.com', '3', '82746418', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(496, 'shawane', 'shawane285@gmail.com', '3', '95497137', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(497, 'pedro castelo', 'pedroballack_98@hotmail.com', '3', '91354394', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(498, 'Natália Ferreira', 'natssfer@hotmail.com', '3', '91706065', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(499, 'marcos eduardo de sousa assunç', 'eduardo2assuno@hotmail.com', '3', '94295649', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(500, 'Lucas Oliveira de Souza', 'eu.lucassouza827@gmail.com', '3', '96131547', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(501, 'Haniel de Andrade Duraes ', 'hanielandrade@gmail.com', '3', '91374237', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(502, 'joão lucas morais carvalhido', 'moraiiis.eu@gmail.com', '3', '93573322', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(503, 'Felipe Fontinelle', 'ffontinelle75@gmail.com', '3', '91698741', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(504, 'ana beatriz costa souza correa', 'beatrizsouza1998@outlook.com', '3', '81842622', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(505, 'Gabriel de Lira Carvalho Torre', 'gabrielsnuk1@gmail.com', '3', '85934399', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(506, 'blanck hugney gomes carolino a', 'blanck.hugney@hotmail.com', '3', '96201201', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(507, 'socorro', 'socolopes@gmail.com', 'concluido', '99811315', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(508, 'amanda cristina ', 'amanda.cristina1540@gmail.com', '3', '95832286', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(509, 'Alana costa peres', 'laniis214@gmail.com', '3', '85928732', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 28 '),
(510, 'Ythalo Pereira Dutra', 'ythalo.dutra@hotmail.com', '3', '85769197', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(511, 'Davi Peterson ', 'pedroballack_98@hotmail.com', '3', '36293395', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 28 '),
(512, 'Junio Da Silva Costa', 'juniosilva45@hotmail.com', '3', '99966160', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(513, 'vitor oliveira dos santos', 'vitinho2009mercedes@gmai.com', '3', '92149904', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(514, 'edimar alves leite', 'alvesedimar016@gmail.com', '3', '34341875', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(515, 'natalice moreira de azvedo que', 'jun.in.ho21@hotmai.com', '3', '96761227', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(516, 'Thiago soares da silva ', 'skabnew@gmail.com', '3', '95840763', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(517, 'Diego Ramos', 'dieegguin@gmail.com', '3', '96433899', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(518, 'Katia Aparecida da Silva', 'katiasilva.vida@gmail.com', 'concluido', '85849384', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(519, 'Ana Cláudia Souza Vortmann', 'claudia.vort@gmail.com', 'concluido', '92896737', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(520, 'Pablo Vieira da Silva', 'Pablovieira56@gmail.com', '3', '91283530', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(521, 'kenia uchoa mp ', 'luylla.com@hotmail.com', '3', '93308410', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(522, 'selma alves', 'selmaalves1119@gmail.com', '3', '92411580', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(523, 'Gabriela de souza costa', 'gabrielascosta84@gmail.com', '3', '95031745', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(524, 'André Luiz Rodrigues da Silva', 'aluiz9127@gmail.com', '3', '98846793', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(525, 'Alex Rodrigues Santos', 'alex.ca.poeira65@hotmail.com', '3', '91927165', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(526, 'Diego Ramos', 'dieegguin@gmail.com', '3', '96433899', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(527, 'balbia batista martins', 'balbiamartins@gmail.com', '3', '84857557', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(528, 'Barbara Adelaine Vieira', 'barbaraadelaine20@gmail.com', '3', '99822970', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Luziânia', '2016 - 28 '),
(529, 'fernanda desouza', 'Ferandafernades449_@gmail.com', '3', '92599216', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(530, 'relbe pereira da silva ', 'd.debora@outlook.com', '3', '92407792', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(531, 'Barbara Adelaine Vieira', 'barbaraadelaine20@gmail.com', '3', '99822970', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Luziânia', '2016 - 28 '),
(532, 'joao divino fernandes de arauj', 'alvesedimar016@gmail.com', '3', '36225420', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(533, 'lindomar', 'lindomarpereira9@hotmail.com', '3', '99182427', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(534, 'iolivanrosalalmeida', 'd.debora@outlook.com', '3', '96523097', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(535, 'jaksiana batista de sousa', 'jacksiana_batista@hotmai.com', '3', '93883922', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(536, 'edson martins de sousa', 'edsonmartins.sousa@gmail.com', '3', '22384883', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Luziânia', '2016 - 28 '),
(537, 'cleuvania', 'cleuvaniasantos@outlook.com', '3', '86169023', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(538, 'thiago siqueira', 'thiagosiqueira.adm@hotmail.com', 'concluido', '91629550', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(539, 'michele santos da luz', 'thiagosiqueira.adm@hotmail.com', '3', '94392402', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 ');
INSERT INTO `candidatoUNIDESC` (`cand_id`, `cand_nome`, `cand_email`, `cand_serie`, `cand_tel`, `resultado_curso`, `cand_cidade`, `cand_date`) VALUES
(540, 'wesley pereira de santana', 'wesleyp20162016@gmail.com', '3', '91705669', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(541, 'manoel gomes da silva', 'emanuelgomes544@gmail.com', '3', '95893587', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(542, 'thiago siqueira', 'thiagosiqueira.adm@hotmail.com', 'concluido', '91629550', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(543, 'pedro paulo da conceisao souza', 'd.debora@outlook.com', '3', '82945471', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(544, 'dianaci', 'd.debora@outlook.com', '3', '99439516', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(545, 'kelly cristina pereira de mato', 'kelly.cristina.pereira1214@gma', '3', '92944598', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(546, 'flavio cesar de souza', 'flaviocesar1234@gmail.com', '3', '99755604', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Luziânia', '2016 - 28 '),
(547, 'valdirene maria da luz91138', 'leneluz02@gmail.com', '3', '91138143', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(548, 'ANDREIA DE OLIVEIRA', 'andreia@gmail.com', '3', '81919214', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(549, 'iolivan almeida', 'iolivan@gmail.com', '2', '96523097', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(550, 'Maria jose oliveira da silva', 'açsdkjlçaskj@gmail.com', '3', '95445677', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(551, 'Diego Ramos', 'dieegguin@gmail.com', '3', '96433899', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(552, 'Esllei de souza moreira', 'Eslleisouza22@gmail.com', '3', '91373760', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(553, 'cassio', 'cassiodi21@gmail.com', '3', '81459095', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(554, 'LETICIA RIBEIRO', 'leticiarf2011@gmail.com', '3', '93526379', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(555, 'Gabriel Rodrigues', 'l3gabriiel.rooodrigues@gmail.c', '3', '95990749', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(556, 'samaa suares de lucena', 'samarahsuares82@gmail.com', '3', '94347758', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(557, 'Rayane Soares Fernandes', 'rsoares0018@gmail.com', '3', '94167033', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(558, 'Edinaldo Douglas Jesus Souza', 'edinaldo3620@gmail.com', '3', '91337695', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(559, 'Josilane Souza Nascimento', 'lanenanda.js@gmail.com', '3', '93835925', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(560, 'Danielle Felix Duarte', 'danyduarte0125@gmail.com', '3', '91919400', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(561, 'Maria do socorro celestino', 'celestino.socorro@gmail.com', '3', '86280913', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(562, 'Gabriel Moura de Carvalho', 'Gabrielgrow@gmail.com', '3', '82336993', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(563, 'BRUNA SOUSA VIEIRA DA CRUZ ', 'bruninhasvdc@hotmail.com', '3', '95874542', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(564, 'Elisangela', 'elygirlfashion46@gmail.com', '3', '82216330', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(565, 'lucas barbosa santos', 'lucasbarbosasantos53@gmail.com', '3', '91874203', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(566, 'priscila Fernandes De Araújo', 'pryaraujo1717@gmail.com', '3', '95173563', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(567, 'miquelly de sena moreira', 'miquelly000@gmail.com', '3', '96863729', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(568, 'tatiany barbosa de sousa', 'tatiany.barbosadesousa18@gmail', '3', '92312162', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(569, 'fabricio moreira meireles', 'fabricio571@gmail.com', '3', '93539290', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(570, 'ingrid silva dos santos', 'ingridy.forever@hotmail.com', '3', '91908258', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(571, 'EDILENE', 'didi.edilenesmorais@gmail.com', 'concluido', '91507914', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(572, 'JONATHAN NUNES DA SILVA', 'misterjhowsupremo1@gmail.com', '3', '92189431', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(573, 'JONATHAN NUNES DA SILVA', 'misterjhowsupremo1@gmail.com', '3', '92189431', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(574, 'Gabriel Rodrigues', 'l3gabriiel.rooodrigues@gmail.c', '3', '95990749', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(575, 'maiara silva pereira', 'mayarasilva@hotmail.com', '3', '91220497', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(576, 'Rayane Soares Fernandes', 'rsoares0018@gmail.com', '3', '94167033', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(577, 'robelia', 'robeliaoliveira18@gmail.com', 'concluido', '92166675', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 28 '),
(578, 'lucas vieira barbosa ', 'lucas-vb2015@hotmail.com', 'concluido', '99726830', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(580, 'M,arcos', 'alandiogo-10@hotmail.com', '6', '96828641', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 28 '),
(581, 'christiany borba', 'christiany.borba@gmail.com', 'concluido', '84070079', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Brasilia', '2016 - 28 '),
(582, 'THAIS BORBA', 'thais.silva@icesp.edu.br', 'concluido', '95623124', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Brasilia', '2016 - 28 '),
(583, 'matheus de souza lourenço', 'matheus.lourenco@icesp.edu.br', 'concluido', '86529842', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Brasilia', '2016 - 28 '),
(584, 'vanusa ferreira da silva', 'vanusajornalista@gmail.com', 'concluido', '86210089', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Brasilia', '2016 - 28 '),
(585, 'jacqueline lima pinheiro', 'jack.nina.pinheiro@gmail.com', '3', '92707144', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(586, 'Andressa Silva Gomes', 'andressa.s.gomes@outlook.com', '3', '95201904', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Luziânia', '2016 - 28 '),
(587, 'Ágatha de Jesus Oliveira', 'agathaflordemaio@gmail.com', '3', '93494527', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(588, 'jefferson diniz júnior', 'naruto.junior.diniz@gmail.com', '3', '00000000', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(589, 'Laura Beatriz de Oliveira Sous', 'laurabeatrizoliveirasousa@gmai', '3', '95272417', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(590, 'Egesiel', 'egesielgomes@gmail.com', '3', '84467389', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(591, 'Maynara Araujo Silva', 'maynara.araujo9@gmail.com', '3', '91931299', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(592, 'Rafael Valério Mendonça', 'rafaelvalerio332@gmail.com', '3', '96720516', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(593, 'Anna Caroline da Silva Faria', 'annac2542@gmail.com', '3', '96438764', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(594, 'Danrlei da siva souza', 'danrleidasilvasouza@gmail.com', '3', '99731739', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(595, 'Luiza Nunes Matos', 'luizanunes29.ln@gmail.com', '3', '99085483', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(596, 'Francielly', 'stefanyfrancielly90@gmail.com', '3', '95538038', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(597, 'Hugo Aparecido Mota De Spindul', 'hugosantos45@outlook.com', '3', '93562427', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(598, 'rafael de amorim quiroz batist', 'rafaamorim11@gmail.com', '3', '91910019', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(599, 'Rodrigo stephano silva da cost', 'rodrigo-stephano@hotmail.com', '3', '91323429', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(600, 'tainara jesus trindade', 'tainara100igual@hotmail.com', '3', '93224135', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(601, 'Rafaella Monteiro dos Santos', 'rafa1210monteiro@gmail.com', '3', '93813767', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(602, 'Yasmin de Souza de Andrade', 'yasmin.andrade3620@gmail.com', '3', '36200436', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(603, 'raphael sousa carvalho', 'rafak2626@gmail.com', '3', '95175532', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(604, 'josematteus', 'josematteus1212@gmail.com', '3', '98194957', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(605, 'André Luiz Sousa Costa', 'andrelza@hotmail.com', '3', '30844921', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(606, 'Anderson', 'www.585@facebook.com', '3', '96076189', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(607, 'Jessica karolaynne', 'karoolgomees10661@gmail.com', '3', '92356109', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(608, 'daniela da silva oliveira', 'olivedanysilva@outlook.com', '3', '82258559', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(609, 'Juliana de Oliveira Leles', 'julianaleles73@gmail.com', '3', '95757857', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(610, 'matheus dos santos', 'matheus.santossousa2015@outloo', '3', '83472358', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(611, 'Pedro Henrique Machado Nunes', 'pedrohenrique2295@hotmail.com', '3', '99099540', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 28 '),
(612, 'luana marciel', 'luanamarciel.espindola@gmail.c', 'concluido', '92740063', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 29 '),
(613, 'thauanna', 'thauanna.karen@gmail.com', 'concluido', '98482041', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 29 '),
(614, 'Ageu Delmar Lopes Abreu', 'Ageu.delmar@gmail.com', 'concluido', '91204828', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 29 '),
(615, 'marcia oliveira da silva', 'hugorichard2010@hotmail.com', '3', '96553900', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 29 '),
(616, 'leticia gomes', 'leticiagomesmelo@gmail.com', '3', '95389972', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 29 '),
(617, 'millena', 'millenamoreira147@gmail.com', '3', '85202457', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Valparaiso', '2016 - 29 '),
(618, 'laura azambuja', 'lauraglee23@gmail.com', '3', '93355110', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 29 '),
(619, 'ingrid lorrane', 'ingridi_lorrany@hotmail.com', '3', '95906634', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 29 '),
(620, 'Daniel Cavalcante', 'danielcavalcante785@gmail.com', '3', '95955711', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 29 '),
(621, 'fernanda vieira nunes', 'd.debora@outlook.com', '3', '93178979', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 29 '),
(622, 'kevin', 'kevin.diego11@gmail.com', 'concluido', '92014612', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 29 '),
(623, 'caio', 'kevin.diego@outlook.com', '3', '94621235', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Brasilia', '2016 - 29 '),
(624, 'anaide alves do vale', 'anaide.vale@gmail.com', 'concluido', '36256586', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Ocidental', '2016 - 29 '),
(625, 'eline dantas', 'elinekaua@gmail.com', '3', '36051359', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 29 '),
(626, 'Arleide de Souza', 'pprt8130@gmail.com', '3', '95196836', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 29 '),
(627, 'Alinny Dias Paes dos Santos', 'alinnydiaas@gmail.com', '3', '93787992', 'Sistemas de Informação - Educação Física - Enfermagem - Fisioterapia - Medicina Veterinaria', 'Ocidental', '2016 - 29 '),
(628, 'gilvonete martemi cavalcamte n', 'alves@gmail.com', 'concluido', '36051061', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 29 '),
(629, 'João Felipe', 'joao.felipe1999@hotmail.com', '3', '93912633', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 29 '),
(630, 'Anderson Andrade', 'anderson_andrade_@outlook.com', '3', '93504552', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 29 '),
(631, 'mariajose rodrigues silva', 'mariajose.198923@hotmail.com', '3', '81876993', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 29 '),
(632, 'nelsione soares velasco', 'soaresvelasconelsione@gmail.co', '3', '93615949', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Ocidental', '2016 - 29 '),
(633, 'walbert ', 'walbertandradeborges@gmail.com', '3', '93606953', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 29 '),
(634, 'rafael', 'rafahaitek18@gmail.com', '3', '82535278', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 29 '),
(635, 'Milena Cristina de Siqueira Mo', 'milenacristinamachado@yahoo.co', 'concluido', '35951375', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Brasilia', '2016 - 29 '),
(636, 'larissa de souza borges', 'larissab.souza@hotmail.com', 'concluido', '93842205', 'Redes de Computadores - Analise e desenvolvimento de sistemas - Matemática - Banco de dados - Direito', 'Novo gama', '2016 - 29 '),
(638, 'Givanildo P. Lima', 'givanildoplima@hotmail.com', 'concluido', '36230290', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Luziânia', '2016 - 29 '),
(658, 'Ana Clara Martinez Silva', 'annamartinezsilva@gmail.com', 'concluido', '94153037', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Ocidental', '2016 - 01 '),
(690, 'bianca lyra', 'biancalyra20@gmail.com', 'concluido', '91767435', 'Farmacia - Gestão ambiental  - Ciências contábeis - Engenharia civil - Direito - Administração', 'Brasilia', '2016 - 17 '),
(686, 'hug', 'hugorichard2010@hotmail.com', '6', '84500038', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 08 '),
(687, 'fdgas', 'd@hotmail.com', '7', '97766787', 'Analise e desenvolvimento de sistemas - Sistema de Informação - Matemática - Banco de dados - Redes de computadores', 'Valparaiso', '2016 - 08 '),
(688, 'wandreia lairon', 'wandreialairon@hotmail.com', 'concluido', '95002949', 'Agronomia - Turismo - Pedagogo - Educação Física - Publicidade - Jornalismo', 'Ocidental', '2016 - 17 '),
(689, 'Thiago Oliveira ', 'thiagonatam@hotmai.com', 'concluido', '93111560', 'Fisioterapia - Enfermagem - Letras - Medicina Veterinaria - Psicologia', 'Luziânia', '2016 - 17 '),
(673, 'Nathalia Gomes', 'nathalia.gommes@hotmail.com', 'concluido', '82428945', 'Direito - Sistemas de Informação - Letras - Pedagogo - Banco de Dados - Agronomia', 'Valparaiso', '2016 - 03 '),
(674, 'Marcella', 'marcellags.gs@gmail.com', 'concluido', '81526849', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Valparaiso', '2016 - 03 '),
(675, 'miguel', 'hufb@gmail.com', '3', '99901324', 'Administração - Redes de Computadores - Engenharia civil - Ciências contábeis - Analista de Sistemas - Farmacia', 'Luziânia', '2016 - 06 '),
(691, 'tito einstein ', 'titoeinsteinericson@gmail.com', '6', '36231850', 'Fisioterapia - Enfermagem - Letras - Medicina Veterinaria - Psicologia', 'Luziânia', '2016 - 17 ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Curso`
--

CREATE TABLE `Curso` (
  `curs_id` int(11) NOT NULL,
  `curs_descricao` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grupo` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Curso`
--

INSERT INTO `Curso` (`curs_id`, `curs_descricao`, `grupo`) VALUES
(1, '<strong>Característica: </strong> Realista <hr/>\n<p class=\"tituloResultado\"> É objetivo, lógico e evita situações ambíguas. Possui interesse em atividades físicas, mecânicas que exijam destreza e força ou em atividades manuais como construção, reparo, culinária e cirurgia. Gosta de resolver problemas concretos, com resultados tangíveis. Valoriza, acima de tudo, os fatos. Pode ser pouco sociável e carecer de habilidade  interpessoal, evitando  situações ambíguas e  muito subjetivas. Mostra-se  mais reservado e inflexível.</p>\n\n', 'A'),
(2, 'Agronomia', 'A'),
(3, 'Educação Física', 'A'),
(4, 'Gestão ambiental', 'A'),
(5, 'Engenharia Civil', 'A'),
(6, 'Medicina Veterinária', 'A'),
(9, '<strong>Característica: </strong> Realista <hr/>\n<p class=\"tituloResultado\"> É analítico, curioso, autocentrado, podendo até aparentar certa frieza. Possui interesse em atividades acadêmicas, teóricas e/ou científicas. Com seu senso crítico aguçado, gosta de resolver problemas abstratos que desafiam o intelecto. Valoriza o estudo, a pesquisa e a reflexão.  Pode se sentir  desconfortável diante de emoções intensas, mas é aberto a questões subjetivas e abstratas.  Prefere atividades teóricas e autônomas  o que o torna mais independente com  relação a vínculos grupais e mais centrado em si mesmo. </p>\n', 'B'),
(10, 'Sistemas de Informação', 'B'),
(11, 'Análise e desenvolvimento de Sistema', 'B'),
(12, 'Química', 'B'),
(13, 'Farmácia', 'B'),
(14, 'Física', 'B'),
(15, '<hr/><strong>Áreas afins:</strong> <hr/>Cursos que envolvam a pesquisa e a investigação científica</strong>', 'B'),
(21, '<strong>Característica: </strong> Convencional <hr/>\n<p class=\"tituloResultado\"> É organizado, detalhista, conservador e disciplinado. Respeita regras e é considerado confiável. Possui interesse em atividades que exijam planejamento, método, ou envolvam medição, cálculo e dinheiro. Prefere resolver problemas estruturados. Valoriza a rotina e a segurança. Tende a controlar os afetos e a sentir-se à vontade ao desenvolver atividades rotineiras e sistematizadas.</p>\n  \n', 'C'),
(22, 'Ciências Contábeis', 'C'),
(23, 'Matemática', 'C'),
(24, 'Administração', 'C'),
(25, '<hr/><strong>Áreas afins:</strong> <hr/>Atividades de envolvam organização e estabilidade</strong>\n', 'C'),
(28, '<strong>Característica: </strong> Artístico<hr/>\n<p class=\"tituloResultado\">  É intuitivo, sonhador, aberto a experiências e foge das convenções sociais. Possui percepção aguçada e interesse em atividades que envolvam imaginação, beleza, produção artística ou inovação. Gosta de se expressar através de meios como música, teatro, dança, desenho, poesia e canto. Valoriza o prazer e as emoções. Aprecia o contato interpessoal, quando está seguro de poder expressar-se livremente.  É aberto a estímulos subjetivos e emocionais, capaz de perceber as reações das pessoas através de compreensão empática.</p>', 'D'),
(29, 'Arquitetura', 'D'),
(30, 'Artes Cênicas', 'D'),
(31, 'Artes Plásticas', 'D'),
(32, 'Cinema', 'D'),
(33, 'Desenho Industrial', 'D'),
(34, 'Design de Games', 'D'),
(35, 'Design Gráfico', 'D'),
(36, 'Fotografia', 'D'),
(37, 'Moda', 'D'),
(38, 'Multimídia', 'D'),
(39, 'Música', 'D'),
(40, 'Publicidade e Propaganda', 'D'),
(41, 'Estética', 'D'),
(42, '<strong>Característica: </strong> Social<hr/>\n<p class=\"tituloResultado\">É comunicativo, interativo, solidário e bom mediador de conflitos. Possui interesse em atender demandas sociais, mobilizar, ensinar, tratar e orientar pessoas. Valoriza o direito e o bem estar alheio, assim como o trabalho em equipe.  Manifesta sensibilidade e responsabilidade na busca de auxiliar,  orientar, tratar e resolver as dificuldades dos outros. Gosta de se sentir aceito e respeitado em suas atividades, ter a atenção para si através de seu jeito expansivo. </p>', 'E'),
(43, 'Direito', 'E'),
(44, 'Enfermagem', 'E'),
(45, 'Psicologia ', 'E'),
(46, 'Pedagogia', 'E'),
(47, 'Fisioterapia', 'E'),
(48, 'Letras', 'E'),
(49, '<hr/><strong>Áreas afins:</strong> <hr/>Demais licenciaturas\n', 'E'),
(50, 'Trabalho social', 'E'),
(51, '<strong>Característica: </strong> Empreendedor<hr/>\n<p class=\"tituloResultado\"> É um líder natural: enérgico, persuasivo, competitivo, corajoso e determinado. Gosta de situações novas e desafiadoras. Possui interesse em atividades administrativas e comerciais. Valoriza o sucesso, o poder e o  status. Extrovertido, tem iniciativa e quer assumir a liderança.</p>', 'F'),
(52, 'Administração de empresas', 'F'),
(53, 'Gestão de Recursos Humanos', 'F'),
(54, 'Direito', 'F'),
(55, '<hr/><strong>Áreas afins:</strong> <hr/>\nÁrea de vendas ', 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `CursoUNIDESC`
--

CREATE TABLE `CursoUNIDESC` (
  `curs_id` int(11) NOT NULL,
  `curs_descricao` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grupo` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `CursoUNIDESC`
--

INSERT INTO `CursoUNIDESC` (`curs_id`, `curs_descricao`, `grupo`) VALUES
(19, 'Analise e desenvolvimento de sistemas', 'D'),
(18, 'Sistema de Informação', 'D'),
(16, 'Fisioterapia', 'C'),
(15, 'Enfermagem', 'C'),
(14, 'Letras', 'C'),
(12, 'Farmacia', 'B'),
(11, 'Gestão ambiental ', 'B'),
(10, 'Ciências contábeis', 'B'),
(9, 'Engenharia civil', 'B'),
(8, 'Direito', 'B'),
(7, 'Administração', 'B'),
(6, 'Agronomia', 'A'),
(5, 'Turismo', 'A'),
(4, 'Pedagogo', 'A'),
(3, 'Educação Física', 'A'),
(2, 'Publicidade', 'A'),
(1, 'Jornalismo', 'A'),
(17, 'Medicina Veterinaria', 'C'),
(13, 'Psicologia', 'C'),
(20, 'Matemática', 'D'),
(21, 'Banco de dados', 'D'),
(22, 'Redes de computadores', 'D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questao_enunciado`
--

CREATE TABLE `questao_enunciado` (
  `ques_id` int(11) NOT NULL,
  `ques_descricao` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questao_enunciado`
--

INSERT INTO `questao_enunciado` (`ques_id`, `ques_descricao`) VALUES
(1, '1. Nas atividades que realiza, você se destaca por sua?'),
(2, '2. Em uma discussão, você:'),
(3, '3. A profissão ideal é  aquela em que  você:'),
(4, '4. O que você mais valoriza?'),
(5, '5. Quase sempre, você  não gosta de:'),
(6, '6. O que mais incomoda é quando as pessoas:'),
(7, '7. Um  bom professor é aquele que:'),
(8, '8. Em  sala de aula, você:'),
(9, '9. Nos seus relacionamentos, você costuma ser:'),
(10, '10. Seus amigos o descrevem como uma pessoa:'),
(11, '11. Você se sente mais confortável ao:'),
(12, '12. A  palavra mais combina com você é:'),
(13, '13. Você  prefere  atividades que envolvam:'),
(14, '14. Ao realizar um trabalho em grupo, você:'),
(15, '15. Com qual frase você mais se identifica?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questao_opcoes`
--

CREATE TABLE `questao_opcoes` (
  `quop_id` int(11) NOT NULL,
  `quop_enunciado_id_enunciado` int(11) NOT NULL,
  `quop_descricao` varchar(500) DEFAULT NULL,
  `quop_letra` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questao_opcoes`
--

INSERT INTO `questao_opcoes` (`quop_id`, `quop_enunciado_id_enunciado`, `quop_descricao`, `quop_letra`) VALUES
(1, 1, 'a. Objetividade.', 'A'),
(2, 1, 'b. Ótima capacidade de análise.', 'B'),
(3, 1, 'c. Ótima capacidade em estruturar processos.', 'C'),
(4, 1, 'd. Habilidade para propor novas formas de  agir  ou pelo  agudo senso estético.', 'D'),
(5, 1, 'e. Excelência na comunicação.', 'E'),
(6, 1, 'f. Capacidade de ser determinado.', 'F'),
(7, 2, 'a. Tenta finalizar  rapidamente o  assunto e partir para a ação.', 'A'),
(8, 2, 'b. Analisa a situação e avalia as alternativas que  podem ser usadas.', 'B'),
(9, 2, 'c. Levanta todos os pontos, buscando ser prudente na sua posição.', 'C'),
(10, 2, 'd. Procura sentir o clima e  agir  confiando mais em sua  intuição do que na razão.', 'D'),
(11, 2, 'e. Busca uma solução que seja boa a todos os envolvidos.', 'E'),
(12, 2, 'f. Sente-se desafiado e  busca soluções para garantir o sucesso da ação.', 'F'),
(17, 3, 'a. Pode \"colocar a mão na massa\".', 'A'),
(18, 3, 'b. Aprende muito.', 'B'),
(19, 3, 'c. Oferece  segurança.', 'C'),
(20, 3, 'd. Pode auxiliar as pessoas.', 'D'),
(21, 3, 'e. Surpreende ou emociona as pessoas.', 'E'),
(22, 3, 'f. É desafiado e pode alcançar sucesso.', 'F'),
(23, 4, 'a. Os fatos.', 'A'),
(24, 4, 'b. O estudo e a reflexão.', 'B'),
(25, 4, 'c. A rotina e a precisão.', 'C'),
(26, 4, 'd. O prazer e as emoções.', 'D'),
(27, 4, 'e. O direito e bem estar de todos.', 'E'),
(28, 4, 'f. O sucesso e o poder.', 'F'),
(29, 5, 'a. Interagir ou pensar demais.', 'A'),
(30, 5, 'b. Lidar com emoções ou assuntos superficiais.', 'B'),
(31, 5, 'c. Fazer algo sem ter manual ou explicação.', 'C'),
(32, 5, 'd. Seguir rotinas e regras.', 'D'),
(33, 5, 'e. Executar tarefas técnicas ou mecânicas.', 'E'),
(34, 5, 'f. Ser comandado.', 'F'),
(35, 6, 'a. Demoram muito para tomar uma decisão.', 'A'),
(36, 6, 'b. Emitem opinião sem conhecer bem o assunto.', 'B'),
(37, 6, 'c. Trapaceiam ou ignoram regras.', 'C'),
(38, 6, 'd. Agem sempre da mesma maneira e são pouco criativas.', 'D'),
(39, 6, 'e. Não respeitam os direitos das  outras pessoas.', 'E'),
(40, 6, 'f. Demonstram preguiça ou submissão.', 'F'),
(41, 7, 'a. Incentiva o aluno a  fazer suas próprias experiências e decidir.', 'A'),
(42, 7, 'b. Estimula o aluno a questionar e aprofundar conhecimentos.', 'B'),
(43, 7, 'c. Transmite o conteúdo completo, sem deixar nada pra trás.', 'C'),
(44, 7, 'd. Ajuda a identificar os interesses e talentos de seus alunos.', 'D'),
(45, 7, 'e. Ensina a trabalhar em grupo.', 'E'),
(46, 7, 'f. Prepara para ser alguém no mercado de trabalho, não apenas mais um.', 'F'),
(47, 8, 'a. Prefere atividades manuais.', 'A'),
(48, 8, 'b. Presta atenção e é estudioso.', 'B'),
(49, 8, 'c. É bem organizado.', 'C'),
(50, 8, 'd. Fica sonhando, desenha ou escreve poemas.', 'D'),
(51, 8, 'e. Busca ajudar os colegas a tirar dúvidas.', 'E'),
(52, 8, 'f. Tem iniciativa e toma a frente  nas situações.', 'F'),
(53, 9, 'a. Franco e honesto.', 'A'),
(54, 9, 'b. Ponderado e  criterioso nas suas escolhas.', 'B'),
(55, 9, 'c. Cuidadoso para falar e agir.', 'C'),
(56, 9, 'd. Sensível ou despojado ao tratar o outro.', 'D'),
(57, 9, 'e. Empático e acolhedor.', 'E'),
(58, 9, 'f. Autoritário ou sedutor.', 'F'),
(59, 10, 'a. Realista.', 'A'),
(60, 10, 'b. Intelectual.', 'B'),
(61, 10, 'c. Cautelosa.', 'C'),
(62, 10, 'd. Sensível.', 'D'),
(63, 10, 'e. Empática.', 'E'),
(64, 10, 'f. Persuasiva.', 'F'),
(65, 11, 'a. Instalar, cozinhar, realizar tarefas manuais.', 'A'),
(66, 11, 'b. Ler um livro científico.', 'B'),
(67, 11, 'c. Elaborar um orçamento ou planejamento de um projeto.', 'C'),
(68, 11, 'd. Aprender um instrumento, desenhar ou fazer teatro.', 'D'),
(69, 11, 'e. Envolver-se  em um trabalho voluntário.', 'E'),
(70, 11, 'f. Ser  representante de classe.', 'F'),
(71, 12, 'a. Razão.', 'A'),
(72, 12, 'b. Investigação.', 'B'),
(73, 12, 'c. Disciplina.', 'C'),
(74, 12, 'd. Imaginação.', 'D'),
(75, 12, 'e. Colaboração.', 'E'),
(76, 12, 'f. Ambição.', 'F'),
(77, 13, 'a. Máquinas, atividade corporal, lidar com alimentos, plantas ou animais.', 'A'),
(78, 13, 'b. Pesquisa, diagnóstico ou crítica.', 'B'),
(79, 13, 'c. Planejamento, ordenação ou cálculo.', 'C'),
(80, 13, 'd. Criação, expressão ou beleza.', 'D'),
(81, 13, 'e. Relacionamento, cuidado ou mediação interpessoal.', 'E'),
(82, 13, 'f. Estratégia, desafios,  compra e venda.', 'F'),
(83, 14, 'a.  Quer ir direto ao ponto.', 'A'),
(84, 14, 'b. Analisa bem a natureza e o objetivo do trabalho antes de propor ações.', 'B'),
(85, 14, 'c. Contribui para que  o grupo siga todas as instruções.', 'C'),
(86, 14, 'd. Propõe uma apresentação surpreendente ou tocante.', 'D'),
(87, 14, 'e. Discute as idéias com todos os membros do grupo.', 'E'),
(88, 14, 'f. Conduz o grupo a agir em determinada direção.', 'F'),
(89, 15, 'a. Uma ação vale  mais que um conjunto de teorias.', 'A'),
(90, 15, 'b.  As atividades teóricas e autônomas são mais importantes do que as realizadas em grupo.', 'B'),
(91, 15, 'c. É importante  controlar os afetos e  realizar as atividades de forma rotineira e estruturada', 'C'),
(92, 15, 'd. O contato interpessoal, poder  expressar-se livremente,  perceber as reações e as emoções das pessoas são importantes no trato profissional. ', 'D'),
(93, 15, 'e.  É necessário ter sensibilidade e responsabilidade  para auxiliar,  orientar e resolver as dificuldades dos outros.', 'E'),
(94, 15, 'f. Persuadir  as outras pessoas, ter iniciativa e assumir a liderança  são  características do profissional de sucesso.', 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`cand_id`),
  ADD UNIQUE KEY `candidato_cand_email_uindex` (`cand_email`);

--
-- Indexes for table `candidatoUNIDESC`
--
ALTER TABLE `candidatoUNIDESC`
  ADD PRIMARY KEY (`cand_id`);

--
-- Indexes for table `Curso`
--
ALTER TABLE `Curso`
  ADD PRIMARY KEY (`curs_id`);

--
-- Indexes for table `CursoUNIDESC`
--
ALTER TABLE `CursoUNIDESC`
  ADD PRIMARY KEY (`curs_id`);

--
-- Indexes for table `questao_enunciado`
--
ALTER TABLE `questao_enunciado`
  ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `questao_opcoes`
--
ALTER TABLE `questao_opcoes`
  ADD PRIMARY KEY (`quop_id`),
  ADD KEY `quop_enunciado_id_enunciado` (`quop_enunciado_id_enunciado`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidato`
--
ALTER TABLE `candidato`
  MODIFY `cand_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidatoUNIDESC`
--
ALTER TABLE `candidatoUNIDESC`
  MODIFY `cand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692;

--
-- AUTO_INCREMENT for table `CursoUNIDESC`
--
ALTER TABLE `CursoUNIDESC`
  MODIFY `curs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `questao_enunciado`
--
ALTER TABLE `questao_enunciado`
  MODIFY `ques_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `questao_opcoes`
--
ALTER TABLE `questao_opcoes`
  MODIFY `quop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
