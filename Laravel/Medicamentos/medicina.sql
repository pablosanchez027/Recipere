-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 28, 2019 at 05:52 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `medicinas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dias_semana`
--

CREATE TABLE `dias_semana` (
  `id` int(11) NOT NULL,
  `dia_semana` varchar(12) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_medicamentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dias_semana`
--

INSERT INTO `dias_semana` (`id`, `dia_semana`, `id_paciente`, `id_medicamentos`) VALUES
(8, 'Lunes', 5, 16),
(9, 'Martes', 4, 75),
(10, 'Miércoles', 5, 48),
(11, 'Jueves', 5, 78),
(12, 'Viernes', 4, 40),
(13, 'Sábado', 5, 11),
(14, 'Domingo', 5, 24);

-- --------------------------------------------------------

--
-- Table structure for table `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id` int(11) NOT NULL,
  `id_tipo_medicamento` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `concentracion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `id_tipo_medicamento`, `nombre`, `concentracion`) VALUES
(11, 4, 'Ranitidina', 50),
(12, 1, 'Ranitidina', NULL),
(13, 5, 'Ranitidina \r\n(75mg/5ml)', NULL),
(14, 1, 'Omeprazol', 20),
(15, 4, 'Omeprazol', 40),
(16, 4, 'Atropina (sulfato)\r\n0.5 - 1 mg/ml', NULL),
(17, 1, 'Hyoscinamida (brouro de n-butil hioscina)', 10),
(18, 4, 'Hyoscinamida (brouro de n-butil hioscina)\r\nmg/ml', 20),
(19, 4, 'Metoclopramida (clorhidrato)\r\nmg/ml', 5),
(20, 1, 'Metoclopramida (clorhidrato)', 10),
(21, 2, 'Ondansetron', 8),
(22, 4, 'Ondansetron\r\nmg/ml', 2),
(23, 2, 'Dimenhidrinato', 50),
(24, 4, 'Dimenhidrinato\r\nmg/ml', 50),
(25, 5, 'Aceite de ricino', NULL),
(26, 2, 'Loperamida clorhidrato', 2),
(27, 5, 'Nistatina\r\nUI/ml', 100000),
(28, 2, 'Sulfazalasina', 500),
(29, 3, 'Insulina humana cristalina ADNr', 100),
(30, 3, 'Insulina humana isofana NPH ADNr', 100),
(31, 1, 'Metformina', 850),
(32, 1, 'Glimepirida\r\n2 - 4 mg', NULL),
(33, 1, 'Glibenclamida (No usar en pacientes mayores de 60 años)', 5),
(34, 4, 'Multivitaminas pediátricas', NULL),
(35, 4, 'Multivitaminas adulto', NULL),
(36, 2, 'Vitamina A palmitato (Retinol)', 50000),
(37, 4, 'Vitamina B1 (tiamina)\r\nmg/ml', 100),
(38, 2, 'Vitamina B6 (piridoxina)\r\n25 - 50 mg', NULL),
(39, 2, 'Vitamina C (ácido ascórbico)', 500),
(40, 5, 'Zinc (sulfato)\r\n10mg/5ml', NULL),
(41, 2, 'Calcio, carbonato', 600),
(42, 5, 'Potasio, cloruro\r\n20mEq/15ml', NULL),
(43, 4, 'Magnesio, sulfato      %', 50),
(44, 4, 'Calcio, gluconato      %', 10),
(45, 2, 'Warfarina Sódica', 5),
(46, 4, 'Heparina Sódica\r\nUI/mL', 5000),
(47, 4, 'Enoxaparina Sódica\r\n20mg (2,000 UI) /\r\n40mg (4,000 UI) /\r\n60Mg (6,000UI)', NULL),
(48, 2, 'Clopidogrel (Bisulfato)', 75),
(49, 2, 'Ácido Acetilsalicilico (Indicado en prevención secundaria en pacientes con enfermedad coronaria y/o cerebrovascular, en ausencia de contraindicaciones absolutas)\r\n80 - 100 mg', NULL),
(50, 4, 'Estreptoquinasa\r\nUI', 1500000),
(51, 4, 'Ácido Aminocaproico\r\nmg/mL', 250),
(52, 4, 'Fitometadiona (Vitamina K 1)\r\nmg/ml', 10),
(53, 4, 'Factor VIII\r\nUI/vial', 500),
(54, 4, 'Factor IX\r\nUI/vial', 500),
(55, 5, 'Sulfato Ferroso\r\nmg/ml', 125),
(56, 2, 'Sulfato Ferroso', 300),
(57, 4, 'Clanocobalamina\r\nmcg/ml', 1000),
(58, 2, 'Ácido Fólico', 5),
(59, 2, 'Amiodarona', 200),
(60, 4, 'Amiodarona\r\nmg/ml', 50),
(61, 4, 'Norepinefrina\r\nmg/ml', 1),
(62, 4, 'Dopamina\r\nmg/ml', 40),
(63, 4, 'Fenilefrina\r\nmg/ml', 10),
(64, 4, 'Epinefrina\r\nmg/ml (1:1000)', 1),
(65, 4, 'Efedrina\r\nmg/ml', 25),
(66, 4, 'Trinitrato de isosorbide\r\nmg/ml', 5),
(67, 2, 'Dinitrato de isosorbide', 5),
(68, 2, 'Metildopa (levorotatoria)', 500),
(69, 2, 'Hidralazina', 50),
(70, 4, 'Hidralazina', 20),
(71, 2, 'Hidroclorotiazida', 25),
(72, 2, 'Furosemida', 40),
(73, 5, 'Furosemida\r\nmg/ml', 10),
(74, 4, 'Furosemida\r\nmg/ml', 10),
(75, 2, 'Espironolactona', 100),
(76, 2, 'Propranolol', 40),
(77, 2, 'Atenolol', 100),
(78, 2, 'Carvedilol\r\n6.25 mg / 25 mg', NULL),
(79, 2, 'Amiodipina', 5),
(80, 2, 'Nifedipina (USO EXCLUSIVO COMO TOCOLITICO)', 10),
(81, 2, 'Verapamilo', 240),
(82, 4, 'Verapamilo\r\n2.5 mg/ml', NULL),
(83, 2, 'Enalapril', 20),
(84, 2, 'Atorvstatina cálcica\r\n10-40 mg', NULL),
(85, 2, 'Ciprofibrato', 100),
(86, 2, 'Metoxaleno', 10),
(87, 4, 'Ergometrina (ergonovina)\r\n0.2 mg/ml', NULL),
(88, 2, 'Misoprostol\r\nmcg', 200),
(89, 2, 'Bromocriptina\r\n2.5 mg', NULL),
(90, 2, 'Levonorgestrel + etinilestradiol\r\n0.15 mg/ 0.03 mg', NULL),
(91, 4, 'Medroxiprogesterona\r\nmg/ml', 150),
(92, 2, 'Terazocina ', 5),
(93, 4, 'Oxitocina\r\nUI/ml', 5),
(94, 4, 'Octreotide\r\n0.1 mg/ml', NULL),
(95, 4, 'Dexametasona fosfato\r\nmg/ml', 4),
(96, 2, 'Prednisona', 5),
(97, 2, 'Prednisona', 50),
(98, 4, 'Triamcinolona, acetónido\r\nmg/ml', 10),
(99, 2, 'Levotiroxina sódica\r\n50 - 100 mcg', NULL),
(100, 2, 'Propitiouracilo', 50),
(101, 2, 'Metimazol', 5),
(102, 2, 'Itraconazol', 100),
(103, 2, 'Rifampicina', 300),
(104, 5, 'Rifampicina\r\n100mg/ 5ml', NULL),
(105, 2, 'Isoniacida', 100),
(106, 2, 'Isoniacida', 300),
(107, 4, 'Vacuna DPT (Contra Difteria, Pertusis u Tétanos)', NULL),
(108, 4, 'Vacuna Antineumocócica Polivalente Polisacáridos capsulares de Streptococcis pneumoniae (23 valente)', NULL),
(109, 5, 'Ciclosporina A\r\nmg/ml', 100),
(110, 5, 'Ibuprofeno\r\n100mg/ 5ml', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `nacimiento` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `apellidos`, `nacimiento`, `created_at`, `updated_at`) VALUES
(4, 'Maria', 'Garcia', '1988-04-08 00:00:00', '2019-04-02 08:09:24', '2019-04-02 08:09:24'),
(5, 'Jose', 'Gutierrez', '2019-04-04 00:00:00', '2019-04-05 02:22:41', '2019-04-05 02:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `tipos_de_medicamentos`
--

CREATE TABLE `tipos_de_medicamentos` (
  `id` int(11) NOT NULL,
  `tipo_medicamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipos_de_medicamentos`
--

INSERT INTO `tipos_de_medicamentos` (`id`, `tipo_medicamento`) VALUES
(1, 'Comprimidos'),
(2, 'Capsulas'),
(3, 'Insulina'),
(4, 'Solución Inyectable'),
(5, 'Solución Oral');

-- --------------------------------------------------------

--
-- Table structure for table `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipos_usuario`
--

INSERT INTO `tipos_usuario` (`id`, `descripcion`) VALUES
(1, 'Médico'),
(2, 'Paciente');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dias_semana`
--
ALTER TABLE `dias_semana`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_medicamentos` (`id_medicamentos`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indexes for table `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_medicamento` (`id_tipo_medicamento`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos_de_medicamentos`
--
ALTER TABLE `tipos_de_medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dias_semana`
--
ALTER TABLE `dias_semana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tipos_de_medicamentos`
--
ALTER TABLE `tipos_de_medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dias_semana`
--
ALTER TABLE `dias_semana`
  ADD CONSTRAINT `dias_semana_ibfk_1` FOREIGN KEY (`id_medicamentos`) REFERENCES `medicamentos` (`id`),
  ADD CONSTRAINT `dias_semana_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`);

--
-- Constraints for table `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD CONSTRAINT `medicamentos_ibfk_1` FOREIGN KEY (`id_tipo_medicamento`) REFERENCES `tipos_de_medicamentos` (`id`);



