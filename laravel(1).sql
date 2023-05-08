-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-05-2023 a las 20:32:20
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int UNSIGNED NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoPaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoMaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idProducto` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2023_04_07_005208_create_borraridentrad_table', 6),
(13, '2014_10_12_000000_create_users_table', 7),
(14, '2014_10_12_100000_create_password_reset_tokens_table', 7),
(15, '2014_10_12_100000_create_password_resets_table', 7),
(16, '2019_08_19_000000_create_failed_jobs_table', 7),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 7),
(18, '2023_03_03_172058_create_proveedores_table', 7),
(19, '2023_03_03_172406_create_productos_table', 7),
(20, '2023_03_03_172438_create_clientes_table', 7),
(21, '2023_04_06_225922_create_entradas_table', 7),
(22, '2023_04_06_232122_create_salidas_table', 7),
(23, '2023_04_06_232522_create_stocks_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproductos` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `expiracion` date NOT NULL,
  `idStock` int NOT NULL,
  `idProveedor` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproductos`, `nombre`, `descripcion`, `precio`, `expiracion`, `idStock`, `idProveedor`, `created_at`, `updated_at`) VALUES
(7, 'zucarita', 'azucar', 15, '2023-04-18', 50, 1, '2023-04-18 08:40:13', '2023-04-18 08:40:13'),
(8, 'cloro', 'clarasol', 17, '2023-04-21', 51, 1, '2023-04-18 10:00:35', '2023-04-19 10:06:16'),
(9, 'Sabritas', 'Ingredientes: papa, aceite y un toque de sal', 17, '2023-04-28', 52, 1, '2023-04-18 12:34:28', '2023-04-19 09:47:02'),
(10, 'Takis', 'Con chile y limon', 15, '2025-06-22', 53, 2, '2023-04-19 00:35:49', '2023-04-21 23:20:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL,
  `razonSocial` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombreCompleto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rfc` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `razonSocial`, `nombreCompleto`, `direccion`, `telefono`, `correo`, `rfc`, `created_at`, `updated_at`) VALUES
(1, 'Danonino', 'Maria Jose Perez Gomez', 'Calle Vicente Guerrero', '2248964517', 'mari_jose@gmail.com', '1234560789136', '2023-04-16 12:27:49', '2023-04-21 23:38:29'),
(2, 'Sabritas', 'Silvia Hernandez Marquez', 'Calle Amado Nervo', '2261092131', 'silvia03hm@gmail.com', '7894562597416', '2023-04-18 12:34:59', '2023-04-18 12:34:59'),
(3, 'Bimbo', 'Ingrid Geraldine Aburto Peña', 'Calle Atzalan', '22678916032', 'Ingrid_aburto_123@gmail.com', '1259874631024', '2023-04-20 21:52:36', '2023-04-20 21:52:36'),
(4, 'Pepsi', 'Javier Perez Cuellar', 'Calle 20 de mayo', '2261789456', 'javi_perez@gmail.com', '5698412307894', '2023-04-21 23:13:28', '2023-04-21 23:30:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `idsalidas` int NOT NULL,
  `cantidad` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idproductos` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`idsalidas`, `cantidad`, `idproductos`, `created_at`, `updated_at`) VALUES
(5, '50', 9, '2023-04-18 12:35:20', '2023-04-18 12:35:20'),
(6, '230', 7, '2023-04-18 12:54:57', '2023-04-18 12:54:57'),
(9, '50', 10, '2023-04-21 23:56:11', '2023-04-21 23:56:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `idstock` int NOT NULL,
  `cantidad` int NOT NULL,
  `disponible` int NOT NULL,
  `ultimoIngreso` int NOT NULL,
  `salidasTotales` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`idstock`, `cantidad`, `disponible`, `ultimoIngreso`, `salidasTotales`, `created_at`, `updated_at`) VALUES
(50, 1100, 670, 500, 230, '2023-04-18 06:54:57', '2023-04-18 06:54:57'),
(51, 200, 200, 200, NULL, '2023-04-18 10:00:35', '2023-04-18 10:00:35'),
(52, 350, 200, 50, 50, '2023-04-19 04:06:51', '2023-04-19 10:06:51'),
(53, 400, 350, 70, 50, '2023-04-21 17:57:19', '2023-04-21 23:57:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jolie Doyle', 'carroll.filomena@example.org', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q1z945QdfK1FxnH5acRNHPwVv3aTrxIIA49QOqBwKUJdOT8yyejHzxaayEMT', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(2, 'Keven Bins', 'lthompson@example.org', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WEih9j4uHgpEw3Q4OHvtTZ51wND1fEBjqmFeuKJ50fzPLIwbYAzhWBMsz3p0', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(3, 'Mr. Myron Mills Jr.', 'nella.bednar@example.net', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L8L8pmEjVv', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(4, 'Ole Wolff MD', 'paige.cummerata@example.com', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DrT843mwjz', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(5, 'Dedric Koch', 'ndenesik@example.org', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KA0GfK07sX', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(6, 'Mr. Lance Schaefer', 'bernita.keebler@example.net', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pqk4w0pCJN', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(7, 'Dr. Josiane Towne DDS', 'jkulas@example.net', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P0LiGV9Boi', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(8, 'Miss Karlie Gleichner I', 'lhuels@example.net', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DgqKkpJz22', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(9, 'Damon Kassulke II', 'jamison.daniel@example.org', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B3rDEMlUpj', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(10, 'Cleve Quitzon V', 'tgaylord@example.com', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'awHY0pGZ2o', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(11, 'Grant Tremblay', 'hansen.katlyn@example.net', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e6dRFTIBhd', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(12, 'River Rogahn', 'ojohns@example.net', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q9pIn3ZjqK', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(13, 'Vivianne Crist', 'jettie65@example.com', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OVqGoqOGb9', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(14, 'Dr. Emmet Bayer', 'fwisozk@example.org', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WtlyOAdCRO', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(15, 'Danielle Leffler', 'emery.lakin@example.net', '2023-04-07 06:58:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uqVMpj7L6o', '2023-04-07 06:58:25', '2023-04-07 06:58:25'),
(16, 'Dr. Enrique Ritchie', 'olowe@example.net', '2023-04-07 06:58:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PhQFPIk28B', '2023-04-07 06:58:26', '2023-04-07 06:58:26'),
(17, 'Prof. Kraig Wehner I', 'olindgren@example.net', '2023-04-07 06:58:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n5rMEgQe0E', '2023-04-07 06:58:26', '2023-04-07 06:58:26'),
(18, 'Mr. Devante Kreiger DVM', 'lawrence03@example.com', '2023-04-07 06:58:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DE0SSUrABq', '2023-04-07 06:58:26', '2023-04-07 06:58:26'),
(19, 'Saige Gislason', 'cristian39@example.org', '2023-04-07 06:58:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KktoQjKxz4', '2023-04-07 06:58:26', '2023-04-07 06:58:26'),
(20, 'Joshua O\'Kon', 'sferry@example.net', '2023-04-07 06:58:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0s426MDqHR', '2023-04-07 06:58:26', '2023-04-07 06:58:26'),
(21, 'Lonie Nienow II', 'cormier.royal@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lo5lfozotX', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(22, 'Arely King', 'hodkiewicz.kane@example.net', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MNJeV7uOeq', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(23, 'Glen Lang', 'xcorkery@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lqO0NrKol4', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(24, 'Arvilla Boehm', 'mervin.thiel@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nc2WRLZten', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(25, 'Hillary Wolff', 'dschumm@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bi5CR0yqDE', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(26, 'Mr. Lee Lind', 'sarai.hane@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nnfCPtEZdB', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(27, 'Maudie Ferry', 'jordane.legros@example.org', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WsxWvpdNdd', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(28, 'Adonis Ferry', 'wuckert.jaleel@example.net', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ExDAyEf4Ui', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(29, 'Mara Simonis II', 'arno27@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bERxVMlltv', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(30, 'Jabari Kozey', 'beatty.ahmad@example.org', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EyI7VThnbd', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(31, 'Gaylord Boyle', 'angelo.kautzer@example.org', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EMNVowVvOo', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(32, 'Kyleigh Hilpert', 'jeramie.reilly@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NIHuYBDvjm', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(33, 'Ms. Marjory Hahn MD', 'tromp.enola@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yGdtww1PRC', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(34, 'Mr. Monte Abshire', 'lydia58@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QmmIiMDWkJ', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(35, 'Kelley Abshire', 'oraynor@example.org', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qIHBZzwx0I', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(36, 'Flossie Berge', 'ledner.lonie@example.net', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dKnZUJULg2', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(37, 'Annie Hermiston', 'colin.hayes@example.com', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y21HvAo6hu', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(38, 'Murl Muller', 'luciano.dach@example.net', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yTaMipQFlX', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(39, 'Mrs. Aubree Runolfsdottir', 'konopelski.barbara@example.net', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FOoNCL0Y79', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(40, 'Andres Hyatt', 'mckenzie.craig@example.org', '2023-04-07 07:00:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xXf0sUrJEF', '2023-04-07 07:00:20', '2023-04-07 07:00:20'),
(41, 'Josiane Ullrich', 'orville.davis@example.org', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's57qqTkgum', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(42, 'Kendall Emmerich', 'dwest@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xm6Os4nAFS', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(43, 'Bettye Mante', 'maci84@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZsGCAJhZtT', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(44, 'Mabel O\'Keefe', 'torphy.pablo@example.com', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tvVNDSFNQB', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(45, 'Mr. Sedrick Macejkovic', 'zweissnat@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rtE1P9T8OS', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(46, 'Adan Witting', 'katharina.gislason@example.com', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D4v4HurPv0', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(47, 'Wellington Romaguera', 'kenna.padberg@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gyKERKDkKs', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(48, 'Delta Lowe Jr.', 'gerardo.glover@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2QelhhJe9b', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(49, 'Uriel Schimmel V', 'gwiegand@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f5YTHHDQXx', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(50, 'Prof. Winfield Fahey', 'fledner@example.com', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4U93I0Mc7k', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(51, 'Maude Vandervort', 'kaitlin58@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xUb7yJWLUY', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(52, 'Prof. Dave McClure', 'ullrich.irwin@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zxHEcPNu18', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(53, 'Declan Gibson', 'savannah43@example.net', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aEc9LUd8YY', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(54, 'Tyrique Marks', 'zulauf.quinton@example.com', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9sPOxgL04g', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(55, 'Mr. Soledad Davis MD', 'rowe.elijah@example.org', '2023-04-07 07:21:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BRjx1DDOGU', '2023-04-07 07:21:24', '2023-04-07 07:21:24'),
(56, 'Prof. Tyler Hills DDS', 'baylee56@example.com', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vs18JojyTo', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(57, 'Cleta Daniel Jr.', 'clovis95@example.net', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uTzWSU51Bz', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(58, 'Mrs. Nelle Ondricka DVM', 'ariel17@example.com', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rJUgOwMKlB', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(59, 'Norberto Strosin', 'carmella74@example.net', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2VV49JsvmH', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(60, 'Clemmie Wehner', 'elias48@example.com', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4oMRwnEE5K', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(61, 'Al Predovic', 'maia.paucek@example.com', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0Hk1Sql6mS', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(62, 'Breanna Wisoky', 'ernest90@example.com', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sQJmGJhrBw', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(63, 'Ladarius Schoen', 'heber14@example.org', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TBkwBTy28N', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(64, 'Joanie Harber', 'uprohaska@example.org', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Niz4QCQbu0', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(65, 'Dr. Evert Gutkowski', 'rgleichner@example.net', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fHNCzn0qxO', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(66, 'Queenie Zulauf', 'jwintheiser@example.net', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gumvjd94g7', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(67, 'Blanche Gorczany PhD', 'bednar.kelly@example.net', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XwvbkPEmiN', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(68, 'Nathen Emard', 'bauch.eulalia@example.org', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0O905Bromo', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(69, 'Itzel Haley', 'alex64@example.net', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dG8gXc6VBO', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(70, 'Winnifred Kuhn', 'padberg.hermina@example.org', '2023-04-07 07:25:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hlKD2ua4rN', '2023-04-07 07:25:47', '2023-04-07 07:25:47'),
(71, 'Frankie Jaskolski', 'delbert.pouros@example.net', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jwNrGjQ6Bh', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(72, 'Dangelo Anderson', 'qrenner@example.org', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hLrBTrmSAJ', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(73, 'Nathaniel Witting', 'morris.herzog@example.net', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MonaioyCB9', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(74, 'Delpha Waelchi', 'hand.norval@example.com', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5SFGQsoAN4', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(75, 'Kelley Ullrich', 'ibradtke@example.org', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VoYAzXjjPA', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(76, 'Ernestine Wilkinson', 'russell.purdy@example.com', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9qTPIrqUIf', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(77, 'Ms. Lizeth Cruickshank', 'emma.nienow@example.net', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xn1FDvmKt2', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(78, 'Prof. Lewis Carter Sr.', 'birdie.gibson@example.org', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'izx6pgtWTa', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(79, 'Eleanora Gerlach IV', 'nkonopelski@example.org', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oqQodkQTrJ', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(80, 'Brandi Ziemann', 'eugene.roob@example.net', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6taiz5II6j', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(81, 'Susana Emmerich', 'remington88@example.net', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HWs1jrHRaz', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(82, 'Jude Dickens', 'oconnell.layne@example.net', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SySWsNN6ID', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(83, 'Miss Maude Schinner II', 'ilehner@example.org', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8VeAvqdffC', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(84, 'Dorcas Terry I', 'kendrick53@example.org', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2Kxa9oCLl2', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(85, 'Guido Heidenreich DVM', 'guido38@example.com', '2023-04-07 07:34:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SfHMRsBmkg', '2023-04-07 07:34:16', '2023-04-07 07:34:16'),
(86, 'Ellie Schneider', 'abigail49@example.org', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JyJCQkyYax', '2023-04-07 07:36:56', '2023-04-07 07:36:56'),
(87, 'Agustina Brekke DVM', 'ffay@example.org', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '616cx5HoLM', '2023-04-07 07:36:56', '2023-04-07 07:36:56'),
(88, 'Justice Leannon', 'swift.cathy@example.com', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nIH1fUaCba', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(89, 'Abbie Goyette', 'dietrich.gladyce@example.org', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1yv30j2qBQ', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(90, 'Mr. Angel Sanford DDS', 'orenner@example.net', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BTqliByMq9', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(91, 'Mrs. Rozella Block', 'marvin.florian@example.org', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PK6gdTJoKV', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(92, 'Prof. Cristobal Mueller IV', 'seamus.braun@example.net', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CwiRy2OsNi', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(93, 'Hallie Kihn', 'schinner.alessandro@example.net', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jBXKgOqyao', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(94, 'Prof. Liliana Kerluke', 'marquardt.immanuel@example.net', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SWxMVgbx6y', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(95, 'Cecelia Ebert', 'cummings.alexandria@example.org', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uh1tAT3tdl', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(96, 'Emilia Becker', 'harber.gene@example.org', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k9UT0gvbYx', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(97, 'Dusty Waters', 'blanda.billie@example.org', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0jOUp5CWHN', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(98, 'Sibyl Bode', 'makenna.cole@example.net', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wyLGc4oyme', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(99, 'Prof. Troy Jakubowski', 'jamarcus.farrell@example.com', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8pRnYzr5eY', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(100, 'Jaclyn Langworth I', 'itorp@example.net', '2023-04-07 07:36:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'blQ4gCmLMR', '2023-04-07 07:36:57', '2023-04-07 07:36:57'),
(101, 'Dr. Gina Lehner', 'fay.rhiannon@example.org', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qR0b2ksC7R', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(102, 'Genevieve Beahan', 'scottie95@example.com', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V124yKivoB', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(103, 'Ms. Laisha Bechtelar', 'dibbert.diamond@example.net', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HajrpMaZlY', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(104, 'Jeffry Wisoky', 'dale.lemke@example.org', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jJEbxGFmAk', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(105, 'Monte Leannon', 'maya.skiles@example.net', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fTf0AGPE4c', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(106, 'Prof. Ardith Christiansen', 'cheyenne47@example.net', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nqPzABlSYJ', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(107, 'Mrs. Rossie Herman III', 'stehr.gerald@example.org', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rbFseF7zZ7', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(108, 'Orie Schneider', 'goodwin.ova@example.com', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QOOlR5pQRD', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(109, 'Ephraim Smitham', 'madilyn.hartmann@example.com', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4DCXLtnWN0', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(110, 'Althea Ullrich', 'pschaefer@example.org', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ARxjY9E9Fp', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(111, 'Dr. Abelardo Lemke DDS', 'jacobson.conor@example.net', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EHatk9UMjR', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(112, 'Judd Ebert', 'feeney.mollie@example.net', '2023-04-07 07:44:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hkWc7dpqnk', '2023-04-07 07:44:21', '2023-04-07 07:44:21'),
(114, 'isaac', 'isaacsalome1704@gmail.com', NULL, '$2y$10$ABaUfW0pmA6Y9rxuigWHrOgCnsfx84zuySywWPy6UWAhDgyB17xMi', 'U7gGN4vbiNiLlj3Uk1FvPKMC37HkgHEYlM6Opa9hIFgLarxY4dZA1rpPfEG1', '2023-04-16 10:53:03', '2023-04-16 10:53:03'),
(115, 'Silvia', 'silvia03hm@gmail.com', NULL, '$2y$10$lVXuLIGY8AJheKOjYJbmyeIWCgQKLx8wWZCp4c6hqwIZ0STEzdwAC', NULL, '2023-04-21 23:32:19', '2023-04-21 23:32:19'),
(116, 'Ingrid', 'ingrid03@gmail.com', NULL, '$2y$10$ERCvlB.VEg66OajEGaJnKe74YogLzgJa2xgfyCkrOOkbhaA97jyEe', NULL, '2023-04-21 23:51:09', '2023-04-21 23:51:09');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_salidas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_salidas` (
`idsalidas` int
,`nombre` varchar(100)
,`descripcion` varchar(255)
,`precio` double
,`cantidad` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_stock`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_stock` (
`idstock` int
,`nombre` varchar(100)
,`descripcion` varchar(255)
,`existencias` int
,`stock` int
,`ultimoIngreso` int
,`salidasTotales` int
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_salidas`
--
DROP TABLE IF EXISTS `vista_salidas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salidas`  AS SELECT `s`.`idsalidas` AS `idsalidas`, `pr`.`nombre` AS `nombre`, `pr`.`descripcion` AS `descripcion`, `pr`.`precio` AS `precio`, `s`.`cantidad` AS `cantidad` FROM ((`salidas` `s` join `productos` `pr` on((`pr`.`idproductos` = `s`.`idproductos`))) join `stock` `st` on((`st`.`idstock` = `pr`.`idStock`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_stock`
--
DROP TABLE IF EXISTS `vista_stock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_stock`  AS SELECT `s`.`idstock` AS `idstock`, `pr`.`nombre` AS `nombre`, `pr`.`descripcion` AS `descripcion`, `s`.`cantidad` AS `existencias`, `s`.`disponible` AS `stock`, `s`.`ultimoIngreso` AS `ultimoIngreso`, `s`.`salidasTotales` AS `salidasTotales`, `s`.`updated_at` AS `updated_at` FROM (`productos` `pr` join `stock` `s` on((`s`.`idstock` = `pr`.`idStock`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `clientes_correo_unique` (`correo`),
  ADD KEY `clientes_idproducto_foreign` (`idProducto`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproductos`),
  ADD KEY `fk_stock_productos` (`idStock`),
  ADD KEY `fk_proveedor_productos` (`idProveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`idsalidas`),
  ADD KEY `fk_productos_salidas` (`idproductos`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idstock`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproductos` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `idsalidas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `idstock` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_proveedor_productos` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_stock_productos` FOREIGN KEY (`idStock`) REFERENCES `stock` (`idstock`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD CONSTRAINT `fk_productos_salidas` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
