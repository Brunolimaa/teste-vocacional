-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Set-2018 às 14:37
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vocacional`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `cand_id` int(11) NOT NULL,
  `cand_nome` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cand_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cand_serie` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cand_tel` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `resultado_curso` varchar(700) COLLATE utf8_unicode_ci NOT NULL,
  `cand_cidade` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cand_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ip_visitante` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `curs_id` int(11) NOT NULL,
  `curs_descricao` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grupo` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`curs_id`, `curs_descricao`, `grupo`) VALUES
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
-- Estrutura da tabela `questao_enunciado`
--

CREATE TABLE `questao_enunciado` (
  `ques_id` int(11) NOT NULL,
  `ques_descricao` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `quop_descricao` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quop_letra` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  ADD PRIMARY KEY (`cand_id`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
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
-- AUTO_INCREMENT for table `questao_enunciado`
--
ALTER TABLE `questao_enunciado`
  MODIFY `ques_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questao_opcoes`
--
ALTER TABLE `questao_opcoes`
  MODIFY `quop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
