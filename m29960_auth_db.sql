-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: mysql.ct8.pl
-- Tempo de geração: 21/10/2022 às 15:11
-- Versão do servidor: 8.0.30
-- Versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `m29960_auth_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` int NOT NULL,
  `creator_id` int NOT NULL,
  `name` varchar(48) NOT NULL,
  `description` varchar(512) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `port` int NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `playing` int NOT NULL DEFAULT '0',
  `last_ping` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `creator_id`, `name`, `description`, `active`, `port`, `datecreated`, `playing`, `last_ping`) VALUES
(1, 1, 'Baseplate', 'This is baseplate', 0, 23341, '2022-10-08 21:25:09', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Thinks', '$2y$10$2NHCBrzfhYKB5ilLO0DgUucdIO2cDDYmpBP2ke3OYhvMzKUMMy4Nm', '2022-10-13 04:10:30'),
(2, 'Hunter', '$2y$10$FJWmkLMGL65MobkerNM9k.MuThAr8uzeBNK4z3zWAV2TlvJSHZCsq', '2022-10-13 04:21:58'),
(3, 'thinkphone', '$2y$10$VnLu3B4a8ZdP8a/oUs34T.zmL2XXmrYaqKaMayeWiKT/AfAE4JXQC', '2022-10-13 04:33:29'),
(4, 'whyyoumedelete12345', '$2y$10$wy4QJIsLbu0Ayc9hK0gxnecPZsX7SjVD3pwNdZQ0zivRwAT8IPV4K', '2022-10-13 14:16:18'),
(5, 'test1234', '$2y$10$uOS2dVLP//6Y82xhltQbleQUh0H.k.BrVXYhqLgBgDjnZGGJ/0ElC', '2022-10-13 14:17:28'),
(6, 'roblos', '$2y$10$WaeUzodBzdFot629Nn4hruDko43FFk5HssX4NMTOmGHp.uRcMGdt2', '2022-10-14 15:19:24'),
(7, 'applo', '$2y$10$LiL57gSjLgtGzFVxUhIBROzzhUKM9/Xam2hQ7wRPT1YyE0fxr.0Mq', '2022-10-14 16:11:07'),
(8, 'Rich', '$2y$10$mtvoYcNmAhmdyOm.BS5RPOOgUwcZvzPODOTYsIxaDD2fqZeaM/z6y', '2022-10-14 20:37:22'),
(9, 'ROBLOX', '$2y$10$dFQjvLSWLkU2sycYp/pk6.WaUSUfJ9.WeAvceqY.ug4hVjtMUzRiq', '2022-10-14 20:37:52'),
(10, 'fat', '$2y$10$t.tEE7xk/pyuDYaQZGLDw.K/1tNvWsBXo3gqtBRccYFoT01VUBGmy', '2022-10-15 02:08:18'),
(11, 'Skatemaster33', '$2y$10$Fxnk.562NZGvPcWZ.i7sV.Z6qmXoF5.hSZbyUy56m/E/F.X0.74gC', '2022-10-15 03:04:58'),
(12, 'test', '$2y$10$J2g99KM0Hq0DShhOz1sjNe1DDWmMNNJLsctfP1R29ihXRu0tBAmcG', '2022-10-15 19:23:14'),
(13, '_', '$2y$10$5vfETxHOwa3wVVp8FKtAOO6TRmg4dgKyl7g.hbU1j6O4RPmjFI7ym', '2022-10-15 19:27:14'),
(14, 'scat', '$2y$10$tlA68qEtswxRaVC/P2IalOLSeumVTI8z9FMqykkvUy75izepyJkkC', '2022-10-15 23:19:11'),
(15, 'NightPyr0', '$2y$10$Y1IhgHJU./iJ8Vv/xU9rkO387KfREvJNLX.QM5bKdHONbEoFgIGfi', '2022-10-15 23:41:29'),
(16, '69', '$2y$10$hIRqfPGGm7Qg.nP5UyLaNuINdauVPU69NbkokfncxavKON2CW4WPq', '2022-10-15 23:42:55'),
(17, 'comacomb', '$2y$10$rkAH87Wo4LTo0X4gKJ051OTDesUvyr3DRQ51kb8R2BnIR8tZDARTi', '2022-10-16 05:46:28'),
(18, 'InternetWanderer794', '$2y$10$PbbvQ5MakQYlhtGXhTaDRuDE3GBOjQ8ksFMZuGVkXbAQ1yRXz2WEq', '2022-10-16 14:14:08'),
(19, 'DoggoITA1', '$2y$10$0FZbaEpAoLzLfVH6Hb110OxLx8x3QwoyvqGk75FmbrqStqW9QNnW6', '2022-10-16 15:27:29'),
(20, 'kawa', '$2y$10$r00.ny0vKjixyW3.8.Tt4uhyX9.ZNS8Cc/l/96DIFTkrxRAKXIcUO', '2022-10-16 16:18:55'),
(21, 'xD', '$2y$10$C8.Zz/obuy5DpZapLSRQWu0CVi9ZlbGNks4N6/UxdWXY8aDYgQv6G', '2022-10-16 21:53:22'),
(22, 'car', '$2y$10$3e//NeoJVBS5nCJkT6JhRekreAlFOFMZVY57hrJNYK4AJC9daqAKO', '2022-10-16 23:13:42'),
(23, 'a', '$2y$10$O5wHT7P3JLRlxCCBzFYcZO5K1pVcs29bv00LJn5wAzQbxzIKHPA7m', '2022-10-16 23:14:37'),
(24, 'RTBLX', '$2y$10$jivKop8ikvEi9xrGkff/uuPV.AyjfspVSP.UIVqhHMuG49LzfzkYu', '2022-10-16 23:16:11'),
(25, 'Banned', '$2y$10$b5Gu31pPY05Y0grFBqROFOIDwsJIzHCYZa9qiR3NqXUj/HBgJCyi6', '2022-10-16 23:17:04'),
(26, 'null', '$2y$10$6KCwHJBKTDFNrbp/5t2dSeL7UCXA3n8wWao75/l/7XE39/8ifBGq6', '2022-10-16 23:18:39'),
(27, '1', '$2y$10$fmLdARGcR1iqHCr0TzOpGeMOePr04Sb6EisXZcJclEa1FmhSJTKJa', '2022-10-16 23:20:04'),
(28, '2', '$2y$10$4mI5nSyJ0izoyazAi8f1O.bPPwEmgbpY9DyFW7yQUf8d041JxAOG6', '2022-10-16 23:20:45'),
(29, '3', '$2y$10$Cd/y1vP4vJh7lkQLCuqA4uIjf06x6cPrVh/VOz3gqL.KePQe7B7Ki', '2022-10-16 23:21:11'),
(30, '4', '$2y$10$n/FN78PrM89lebA2OAMKaOvXu38BlQqO1s/YXc5U0/d9QZgCheFdO', '2022-10-16 23:21:33'),
(31, '5', '$2y$10$6kC3QmJT9XGd8fcIYMOgIunAKSpjLnGdMfOS18eia64HU6zMBbcAi', '2022-10-16 23:21:40'),
(32, '6', '$2y$10$koVQ4xxiRBKwH4/MfXL5Xetwq9KuZFeWmNMV7JxWwMoWP/5YcgnOm', '2022-10-16 23:21:46'),
(33, '7', '$2y$10$PI8NXP5KEfVOxX.LIxIXhuD59OSvpUn/1Iu7B5HNw7HmJpn0h0U7K', '2022-10-16 23:21:58'),
(34, '8', '$2y$10$iZ6nfI1oa/0NgEBLvuY0TuhiTH/pls7kIk8U7fxWmKPSOqoCOMsCW', '2022-10-16 23:22:16'),
(35, '9', '$2y$10$4gkemJW6J5ahFk/8TeKMvOsf2T9r5azslzqUJo4FgUgh.iNDFfK0G', '2022-10-16 23:22:36'),
(36, '10', '$2y$10$JtjkQIXQT.g53sKGjFY.WuYqe0NG/hslGsQbu5ZsTrGKS9ARBnbse', '2022-10-16 23:22:46'),
(37, 'b', '$2y$10$B3K/B0yPaonZGG1ZgDXabuQBKQ3AZSCfPVuRxydRmZaYtiw2CVvvu', '2022-10-16 23:22:57'),
(38, 'c', '$2y$10$vrw4yj6B3Be5d3kcNvluq.pbMDFVpgQ/umM3OE04epnQgbAe/VcKS', '2022-10-16 23:23:12'),
(39, 'd', '$2y$10$Hv7iK9j/FpTNz.Wk7k/uFu.Q589XxVWGKZhA.ThcWwAvKqxbhGprG', '2022-10-16 23:23:20'),
(40, 'e', '$2y$10$Eudp83YhHOlyd4jzepQLReWMZBS4AKly/JFl1uhhFgeNbSAFOXY7e', '2022-10-16 23:23:36'),
(41, 'f', '$2y$10$UhunkqIin3cEmeB72fXjRuyFA0A0G/nnLbWuTJivkLp4VAwHiliaC', '2022-10-16 23:23:51'),
(42, 'g', '$2y$10$c0BpjGOCy95ikAnNzmDUIO9bgkr.Si88k33JFYXKQ7rypRPqEn2Hy', '2022-10-16 23:24:00'),
(43, 'h', '$2y$10$qz5TYL6dWviV1rhfgNEGWO9BvnN0KNd2croXgSVTOf6hnb3F6oybe', '2022-10-16 23:24:06'),
(44, 'i', '$2y$10$ut1zY6q/U3Tlgn92ITAvxuBf0sFwhfXROr9/fQAYSbOAkEQYZUlhG', '2022-10-16 23:24:12'),
(45, 'j', '$2y$10$tw8gr7aysiFUCR55ncxi/uAWZYM8JCqgfs0UycTip9jYSWN93pKSC', '2022-10-16 23:24:18'),
(46, 'l', '$2y$10$hP.IdwzbAdZuz.DtIEU1xecyARdzHR51GOHB7QLJV0jJGvgJIhNJy', '2022-10-16 23:24:33'),
(47, 'm', '$2y$10$ArTAhvgPXY1a0r/7.NqgXe/4Kcs9HXE0Ax5uSdJ44CBlSIEVgU39S', '2022-10-16 23:24:38'),
(48, 'o', '$2y$10$xQCXVMMoexuiAnriIKWfAOtB4P2eeyd9OVOju019MN0r.AucnaWC.', '2022-10-16 23:24:57'),
(49, 'p', '$2y$10$pLE.AoeZ2TjXSjB.qwm/Nu7FOg3T4s15yqvHHd3GnAebNe6bOS6r.', '2022-10-16 23:25:04'),
(50, 'q', '$2y$10$e6YTloSNrI8uvUI1amieFOetAEfy1g23h83cwZ/U2tWlMNiTjB1XS', '2022-10-16 23:25:10'),
(51, 'r', '$2y$10$nNXsgN6uDYxVSGAt18zaBOSQsUA6Rt222lYW8hZsQH6hT.QbxTb.i', '2022-10-16 23:25:17'),
(52, 's', '$2y$10$EXnCgN2./yNnvi2nRqGk7.eJ6Og2R65ZQ2NLyLinXs0y7wflpjs2.', '2022-10-16 23:25:22'),
(53, 't', '$2y$10$LOHK5eov836A8YjfbzDsde2RqZEc.4xRWbrVQKBpMeAanFt1DMDAu', '2022-10-16 23:25:27'),
(54, 'u', '$2y$10$kFdeoF4qxR52NJta9s7A4u5GmGgYY44Kj/j.tJ9FMKHQ1BHR1xHke', '2022-10-16 23:25:39'),
(55, 'v', '$2y$10$ZgWSF.ddU2Kd8ieUPTz54uhEQukJxKtGlebxI6gDvnt8BqON8Jt.u', '2022-10-16 23:25:45'),
(56, 'w', '$2y$10$CX7T4vw2uLcVy2kNw8gniOBs6e0ggPHM0sDck3Ezp1/grJHm1FNMO', '2022-10-16 23:25:50'),
(57, 'x', '$2y$10$ExRh7qm8jf936tMGhwVfIO7e8xczFl9712TNvtvlQBo59ILiyGE8y', '2022-10-16 23:25:56'),
(58, 'y', '$2y$10$ZQkmrkDfICPnf0N1EEBmlOLpX700K6v0J5Utyipfsb/iQL/fLJWdC', '2022-10-16 23:26:01'),
(59, 'z', '$2y$10$6pAz2twh/dram2izDcR/5.QBIpsEOLh5REQ1G6umGK6hPCSVD/H7e', '2022-10-16 23:26:15'),
(60, 'cum', '$2y$10$NpR02T6.M2dlEKYXdAfMw.l.Vv1zbqQrhaFtHDqQdZYcFol49tAy2', '2022-10-17 00:52:49'),
(61, 'builderman', '$2y$10$O3PljgJSRpmBONrCnQNSiOcZmLvomU8mkSDwpY2tAmz8gpjkBTNVe', '2022-10-17 00:55:25'),
(62, 'NoXDGA', '$2y$10$/8ACFuzMXxG1IPfebDP7Ou6O2B45BFqoJtRI17Zupuq/w/sfsB0uq', '2022-10-17 09:19:14'),
(63, 'Danik2', '$2y$10$S6ka./GXs5Cyp6p.Xl.0uuQMuxWObNXUR1rTA1TqaArazknrDqBky', '2022-10-17 12:12:35'),
(64, 'Poozjzjw', '$2y$10$HOCqpGNFxwVml/0RWJCHLujhTu3YfJ2Lfb6eeBDnCXgbb.f7xGAF6', '2022-10-17 18:46:25'),
(65, 'pizza', '$2y$10$rv51C66KeXH5dD.80R7HuuMilydfyAsM9wx1DNAp9BkIjHs4H5Lty', '2022-10-17 21:45:22'),
(66, 'thedenbruh', '$2y$10$wT58Z0JBaCl6cZ7C6otfrOE5tdVDlLLTMftCUc3HLHUZ4hGpz74Ey', '2022-10-19 08:11:18'),
(67, 'JohnDoe', '$2y$10$5Jwkb88GTr0sEgIX2dh7lehwLI4lZW8s4RROaDITKNrGen0XEzT7C', '2022-10-20 09:13:05'),
(68, 'JacksonMiller', '$2y$10$5yetKppmLvdCJqxaALY2vOfa0sd0EBC57YvFdLmU.M8SPHsUZie5G', '2022-10-20 09:13:56'),
(69, 'WilliamJohnson', '$2y$10$yooYwc7Vs60AoLTV0bdFu.JkimTfyVMuyAga9pQMOTIghLEu07sSW', '2022-10-20 09:14:13'),
(70, 'JackGrover', '$2y$10$V7PuhHUk/zsVaVqJicBsCubc3sJSuIrDyPiuVWi3SppaoosA2PLQ6', '2022-10-20 09:14:34'),
(71, 'Robloxian', '$2y$10$NAvL6aHpt6ruB5O42qyF3eQejLCdeJi9qnr79S1iUh4g8p/Cwtr.y', '2022-10-20 09:14:54'),
(72, 'gg', '$2y$10$m8jIOGU9tka4/hQbvOGHV.q1V2e0BtPc.9leEF.VCG.oYROLyCWpa', '2022-10-20 09:15:13'),
(73, 'heatkid99', '$2y$10$6D06bzhn9zVOOv80DNfxvOuxJlo3sACyD7sH8PGWNx9RtCJkoW7BG', '2022-10-20 09:16:17'),
(74, 'VariouMonkey', '$2y$10$EIvMhgYFNTtTsmqcZH7JneDvOGkkjBP1J/zFZeXNWss6O1Kgdaaje', '2022-10-20 09:16:30'),
(75, 'DarthgummSyzygy', '$2y$10$moW/XX6PVEbR5kncvOXVB.6HjlaT8ngy7l8bSme5/WpYRja30eugi', '2022-10-20 09:16:47'),
(76, 'Posnetman1031', '$2y$10$MQcXPIwWtJfFeUKCs7i75.S8IEDuxE6Yh8MjiM/WHoVBymIoFsfGi', '2022-10-20 09:17:02'),
(77, 'DownarExedra', '$2y$10$lX/v0mUVlOY9RARlPBxYVui/9SvGkk0Fsq/l8N20XQP2xWSVJofwu', '2022-10-20 09:17:14'),
(78, 'ZombechWood', '$2y$10$fW42AE.2Vtnt8i/u5BaBleiwmnloBjaTo/.gaFLFxqcphBK7V3cEC', '2022-10-20 09:17:27'),
(79, 'PetardSuborn', '$2y$10$chPGiexQB32umpx4N9x3iePpS0jCS4MRy.nEkZ6jeXcDohauUVzJ2', '2022-10-20 09:17:39'),
(80, 'Biduous', '$2y$10$wLjZ3969I3YyDefNcCdjdeNUSUFn2QJOgjQ8yxlNWaq2asK1LNk6q', '2022-10-20 09:17:53'),
(81, 'Albedocon7', '$2y$10$vbRsmuCBxmuY51HAAJxutesN9JY9TtpBtXgH2X7uZjHYDpjOTl8PK', '2022-10-20 09:18:08'),
(82, 'Tmesisjai2002', '$2y$10$rE20KxX67rFN5XDePJXy.eQE.YtKTeB9bgB.K7DEFOn8NrL9IVWb2', '2022-10-20 09:18:20'),
(83, 'Nudnik', '$2y$10$AficwOctDD7qh3h.8EbBLu2yy7FcKl4GS9Bo3KZqzsND9I5EEPF.y', '2022-10-20 09:18:32'),
(84, 'Clinology', '$2y$10$eAIK5oM3BjY.tFXc3qBU.eo4nkMGx1oC6Kw5gdVh2cfOzsKazIIEW', '2022-10-20 09:18:46'),
(85, 'Lollygag', '$2y$10$18HizULSdfMW8BfK7zH3J.y0DIPwEc/nOxQZ4X1CCXcUyewIjHuUW', '2022-10-20 09:19:11'),
(86, 'Kameez', '$2y$10$JJ/MitUyGmrLHDO5.nyAWOF5WDuRc9BeV9UvpIXWJSYj1cXKb/Dze', '2022-10-20 09:19:24'),
(87, 'Wordsmith', '$2y$10$Y1iX9A0WIfY5cNa2s2CkWejyK5oXKGWa4tqF.um/kvRbdqx0/2ZJu', '2022-10-20 09:19:38'),
(88, 'Sk8tr', '$2y$10$6rGyWuEEWReduI72xk.91uAsBgyQyM.s26te8il/7IpdrhNagAE.G', '2022-10-20 09:20:54'),
(89, 'Chorology', '$2y$10$Sw7XBKTEK.6KaTtWUDBOLO84pkNLtJ3YOFxQoX.ihn.axTKfQEeFG', '2022-10-20 09:21:09'),
(90, 'Flanker', '$2y$10$lKkXMOTXK3Yczznk8L5B1eSOyrQfGV0PlpmyrudZ5LVAtywCxqReq', '2022-10-20 09:21:21'),
(91, 'Goosebump', '$2y$10$Lliccqgl3gK5vuvpOqm7au9ppPGXSXF2PeJCQTSe8MOvjn0xDpkD.', '2022-10-20 09:21:34'),
(92, 'MediatHokum', '$2y$10$TmXdx8tCncolS.EmlV6bnuNomJuD9LeEzUHur0Wl5jiymHO49.pzq', '2022-10-20 09:21:48'),
(93, 'SidesZephyr', '$2y$10$BFTRNBAutlfBt8S76GNzTuBQSzeua0dKJbfgWIh6nmJQ0XpvVkYxu', '2022-10-20 09:22:03'),
(94, 'Zenos5Wey', '$2y$10$yF3zdXcJ0n.DZx3EBeSbOe12BUXjpnhbyEk20B/1V2XxHMnFbFw8q', '2022-10-20 09:22:25'),
(95, 'Mudslinger', '$2y$10$/Hm0kLgtWT6czgWroLuxXOCXIk7.sI1k9B7ZFbHQhbnknkoGHmJJG', '2022-10-20 09:22:39'),
(96, 'Hyperbole', '$2y$10$rAOJuqgsSgRIVdpIZ3xLGuQbdsHZnIX1FO40q1ye7iZTF3UZeWPAa', '2022-10-20 09:22:59'),
(97, 'Womyn', '$2y$10$i1PdcciMOzF3AnRLT4Hdo.soCsZiJ9cxfPMGEY.Z6kV.HWNuFjNum', '2022-10-20 09:23:27'),
(98, 'Jalopy', '$2y$10$qF.xFPiuxCOQuBvdrOvtL./dQyn.cbYTU2.tSszQgm4foGhkGHVZC', '2022-10-20 09:23:41'),
(99, 'Jumbo', '$2y$10$YzwmYEYpiu3pStiPGTEoguWnrKJmGgFm9ZWN.1o2FrL6Qg3M.NXoW', '2022-10-20 09:24:03'),
(100, 'XxelyonnGazump', '$2y$10$CvEZQvS/VQdc/hqqbB8K2ON5HPGRZAeG4/xPdiNAy0FY4XE/Eua3i', '2022-10-20 09:24:26'),
(101, 'brandon_c201', '$2y$10$flVVBuNerKU.CQ2EN/d/W.GFZes72PgK2dqxip2mmzMYTiR6BpNPC', '2022-10-20 22:52:51'),
(102, 'cat', '$2y$10$8UyRkjsYJnNZIJXrmycnQuE4h7j0l4YebZ6P4PZ05TBt9o1t6eAb6', '2022-10-21 05:21:15'),
(103, '103', '$2y$10$AnvBckWAAXlm8JEJiErf4uGz7gCfV7mMTbrc1MEzx.vS1PUYMQX1S', '2022-10-21 05:22:37'),
(104, 'h_e_y', '$2y$10$kUyBVX0qKx67..Z2b3UPOuN440kSjDfOJLZmN8SZZyLvzTRPgwsjq', '2022-10-21 10:10:28');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
