-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24-Jul-2018 às 03:00
-- Versão do servidor: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE IF NOT EXISTS `adminlogin` (
  `admin` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adminlogin`
--

INSERT INTO `adminlogin` (`admin`, `senha`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

DROP TABLE IF EXISTS `imagens`;
CREATE TABLE IF NOT EXISTS `imagens` (
  `nome_imagem` varchar(220) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`nome_imagem`) VALUES
('1532395692.jpg'),
('1532398073.jpg'),
('1532398108.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacao`
--

DROP TABLE IF EXISTS `publicacao`;
CREATE TABLE IF NOT EXISTS `publicacao` (
  `idPublicacao` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(400) CHARACTER SET latin1 NOT NULL,
  `conteudo` text CHARACTER SET latin1 NOT NULL,
  `imagem` varchar(220) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idPublicacao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `publicacao`
--

INSERT INTO `publicacao` (`idPublicacao`, `titulo`, `conteudo`, `imagem`) VALUES
(1, 'Correntina tem primeira nascente recuperada', 'Correntina tem primeira nascente de rio recuperada por projeto dos agricultores do oeste da Bahia\r\n\r\n\r\nPublicada em 19/07/2018 às 08:43\r\nHome » Destaque / Meio Ambiente\r\n\r\n\r\n \r\n\r\nFonte Araticum Assessoria de Comunicação | Fotos Ascom Correntina\r\nO município de Correntina recuperou na última sexta-feira, 13, a primeira nascente dentro do projeto dos agricultores do oeste da Bahia, por meio das entidades representativas, a Associação Baiana dos Produtores de Algodão (Abapa) e Associação de Agricultores e Irrigantes da Bahia (Aiba). A ação aconteceu ao final do curso de recuperação de nascentes, em parceria com a Prefeitura, que aconteceu durante três dias, e que capacitou técnicos da prefeitura, membros da sociedade civil organizada e envolveu moradores das comunidades da Luzia e Brejo dos Aflitos, que serão beneficiados diretamente pela intervenção. O projeto de recuperação de nascentes pelos agricultores baianos vai investir R$ 500.000,00 para realizar ações deste tipo em onze municípios que abrangem as bacias hidrográficas do Grande, Corrente e Carinhanha.\r\n\r\n“Após 18 meses, a nascente voltou a jorrar água em 20 mil litros de água por dia com a aplicação da cerca, e com o método caxambu, ainda aumentou para 75 mil litros de água por dia devido a desobstrução e descompactação do solo causado pelo pisoteio do gado”, explicou Renato Rios, engenheiro agrônomo responsável por aplicar o curso de recuperação de nascente, que no caso de Correntina, estava assoreada e agora está cercada, protegida e com água adequada para ser fornecida para consumo humano. Para a secretária de meio ambiente de Correntina, Regina de Castro, esta parceria com os agricultores, comunidade e técnicos da Prefeitura chegou na hora certa. “Quero deixar aqui a minha gratidão a todos os envolvidos. Foi muito bom contar com a disposição dos nossos parceiros”.\r\n\r\nIncentivador do projeto entre os agricultores, o presidente da Abapa, Júlio Cézar Busato, explica que este deve se tornar uma referência em todo o Brasil, ao montar uma rede de guerreiros dispostos a proteger e recuperar as nascentes de rios. “Estamos garantindo, ao contemplar estes treinamentos e de apoio às prefeituras, o engajamento de profissionais e de moradores das cidades, que assim como os agricultores, respeitam a água e a terra da nossa região”. Com o projeto lançado aos secretários de meio ambiente da região, na última segunda-feira, 09, a previsão é que sejam recuperadas e protegidas, ainda este ano, cerca de 100 nascentes de rios em todo o oeste da Bahia. Dentro das atividades incentivadas pelos agricultores rurais, já foram recuperadas este ano cerca de 23 nascentes dos municípios de Barreiras, Cocos, Formosa do Rio Preto, Jaborandi, São Desidério e Wanderley, onde também já foram realizados os treinamentos práticos com os técnicos da Prefeitura e dos povoados.', '1532395692.jpg'),
(5, 'Correntina tem primeira nascente recuperada', 'â€œApÃ³s 18 meses, a nascente voltou a jorrar Ã¡gua em 20 mil litros de Ã¡gua por dia com a aplicaÃ§Ã£o da cerca, e com o mÃ©todo caxambu, ainda aumentou para 75 mil litros de Ã¡gua por dia devido a desobstruÃ§Ã£o e descompactaÃ§Ã£o do solo causado pelo pisoteio do gadoâ€, explicou Renato Rios, engenheiro agrÃ´nomo responsÃ¡vel por aplicar o curso de recuperaÃ§Ã£o de nascente, que no caso de Correntina, estava assoreada e agora estÃ¡ cercada, protegida e com Ã¡gua adequada para ser fornecida para consumo humano. Para a secretÃ¡ria de meio ambiente de Correntina, Regina de Castro, esta parceria com os agricultores, comunidade e tÃ©cnicos da Prefeitura chegou na hora certa. â€œQuero deixar aqui a minha gratidÃ£o a todos os envolvidos. Foi muito bom contar com a disposiÃ§Ã£o dos nossos parceirosâ€.  Incentivador do projeto entre os agricultores, o presidente da Abapa, JÃºlio CÃ©zar Busato, explica que este deve se tornar uma referÃªncia em todo o Brasil, ao montar uma rede de guerreiros dispostos a proteger e recuperar as nascentes de rios. â€œEstamos garantindo, ao contemplar estes treinamentos e de apoio Ã s prefeituras, o engajamento de profissionais e de moradores das cidades, que assim como os agricultores, respeitam a Ã¡gua e a terra da nossa regiÃ£oâ€. Com o projeto lanÃ§ado aos secretÃ¡rios de meio ambiente da regiÃ£o, na Ãºltima segunda-feira, 09, a previsÃ£o Ã© que sejam recuperadas e protegidas, ainda este ano, cerca de 100 nascentes de rios em todo o oeste da Bahia. Dentro das atividades incentivadas pelos agricultores rurais, jÃ¡ foram recuperadas este ano cerca de 23 nascentes dos municÃ­pios de Barreiras, Cocos, Formosa do Rio Preto, Jaborandi, SÃ£o DesidÃ©rio e Wanderley, onde tambÃ©m jÃ¡ foram realizados os treinamentos prÃ¡ticos com os tÃ©cnicos da Prefeitura e dos povoados.', '1532398073.jpg'),
(6, 'Correntina tem primeira nascente recuperada', 'Incentivador do projeto entre os agricultores, o presidente da Abapa, JÃºlio CÃ©zar Busato, explica que este deve se tornar uma referÃªncia em todo o Brasil, ao montar uma rede de guerreiros dispostos a proteger e recuperar as nascentes de rios. â€œEstamos garantindo, ao contemplar estes treinamentos e de apoio Ã s prefeituras, o engajamento de profissionais e de moradores das cidades, que assim como os agricultores, respeitam a Ã¡gua e a terra da nossa regiÃ£oâ€. Com o projeto lanÃ§ado aos secretÃ¡rios de meio ambiente da regiÃ£o, na Ãºltima segunda-feira, 09, a previsÃ£o Ã© que sejam recuperadas e protegidas, ainda este ano, cerca de 100 nascentes de rios em todo o oeste da Bahia. Dentro das atividades incentivadas pelos agricultores rurais, jÃ¡ foram recuperadas este ano cerca de 23 nascentes dos municÃ­pios de Barreiras, Cocos, Formosa do Rio Preto, Jaborandi, SÃ£o DesidÃ©rio e Wanderley, onde tambÃ©m jÃ¡ foram realizados os treinamentos prÃ¡ticos com os tÃ©cnicos da Prefeitura e dos povoados.', '1532398108.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
