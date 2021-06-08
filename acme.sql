-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2021 a las 04:58:29
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acme`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NCC` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Pnombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Snombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Apellidos` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`id`, `NCC`, `Pnombre`, `Snombre`, `Apellidos`, `Direccion`, `Telefono`, `Ciudad`, `created_at`, `updated_at`) VALUES
(2, '5245246', 'Miguel', 'Angel', 'cardenas', 'calle 1423 #96-2', '12325412', 'Osaka', '2021-06-08 07:55:58', '2021-06-08 07:55:58'),
(3, '3124', 'Miguel', 'Daniel', 'Diaz Puertas', 'Av Clinton# 341', '4141', 'Shanghái', '2021-06-08 07:56:42', '2021-06-08 07:56:42'),
(4, '5153141', 'andres', 'pedro', 'lara', 'calle 4 #28c-32', '124124', 'Bogota', '2021-06-08 07:57:41', '2021-06-08 07:57:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2014_10_12_000000_create_users_table', 3),
(9, '2019_08_19_000000_create_failed_jobs_table', 3),
(12, '2021_06_06_022608_vehiculos', 5),
(14, '2021_06_06_022649_conductores', 6),
(15, '2021_06_06_022632_propietarios', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NCC` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Pnombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Snombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Apellidos` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`id`, `NCC`, `Pnombre`, `Snombre`, `Apellidos`, `Direccion`, `Telefono`, `Ciudad`, `created_at`, `updated_at`) VALUES
(2, '12389128', 'Paco', 'Johan', 'Gallo Rosa', 'calle 143 #96-2', '123124', 'Bogota', '2021-06-08 07:49:51', '2021-06-08 07:49:51'),
(3, '23432445', 'Alexandra', 'Daniela', 'Gallo Diaz', 'carrera 23#3213-213', '1233144', 'Yokohanma', '2021-06-08 07:51:11', '2021-06-08 07:51:11'),
(4, '124124', 'Miguel', 'Angel', 'narvaes', 'Av Clinton# 1341', '467467', 'New York', '2021-06-08 07:53:40', '2021-06-08 07:53:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Placa` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Color` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Marca` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `TipoV` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Conductor` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `Propietario` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `Placa`, `Color`, `Marca`, `TipoV`, `Conductor`, `Propietario`, `created_at`, `updated_at`) VALUES
(1, '321BJH', 'negro', 'Chevrolet', 'particular', 'migel angel cardenas', 'Paco Jhon Gallo Rosa', NULL, NULL),
(2, '211RTF', 'rojo', 'mazda', 'particular', 'migel daniel diaz puertas', 'Alexandra Daniela Gallo Diaz', NULL, NULL),
(3, '123gre', 'verde', 'mazda', 'publico', 'andres pedro lara', 'miguel angen narvaes', '2021-06-08 06:38:42', '2021-06-08 06:38:42'),
(5, '76de4f', 'Negro', 'mazda', 'particular', 'andres pedro lara', 'miguel angen narvaes', '2021-06-08 07:15:50', '2021-06-08 07:15:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conductores_ncc_unique` (`NCC`);

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
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `propietarios_ncc_unique` (`NCC`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
