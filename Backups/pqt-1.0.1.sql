-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-11-2024 a las 12:39:37
-- Versión del servidor: 10.6.19-MariaDB
-- Versión de PHP: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fundaci4_pqta-back`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `bank_accounts_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `money_available` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank_accounts_tours`
--

CREATE TABLE `bank_accounts_tours` (
  `bank_account_tour_id` bigint(20) UNSIGNED NOT NULL,
  `bank_accounts_id` bigint(20) UNSIGNED NOT NULL,
  `monthly_tour_id` bigint(20) UNSIGNED NOT NULL,
  `utility` double(8,2) NOT NULL,
  `money_before_tour` double(8,2) NOT NULL,
  `money_after_tour` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `Description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`categories_id`, `Description`, `created_at`, `updated_at`) VALUES
(1, 'Sin Categoría', '2024-04-07 17:06:52', '2024-04-07 17:06:52'),
(2, 'bebidas', '2024-04-07 18:56:13', '2024-04-07 18:56:13'),
(3, 'abastos', '2024-04-07 18:56:51', '2024-04-07 18:56:51'),
(4, 'lacteos', '2024-04-07 18:57:24', '2024-04-07 18:57:24'),
(5, 'Galletas', '2024-04-07 18:57:44', '2024-09-18 22:42:12'),
(6, 'chicles', '2024-04-07 18:57:50', '2024-04-07 19:00:00'),
(10, 'harinas', '2024-04-07 19:02:33', '2024-04-07 19:02:33'),
(11, 'plasticos', '2024-04-07 19:03:00', '2024-04-07 19:03:00'),
(12, 'Balanceado', '2024-04-07 19:17:31', '2024-04-07 19:17:31'),
(13, 'BEBIDAS ALCOLICAS', '2024-04-07 19:39:53', '2024-04-07 19:39:53'),
(14, 'Cafe', '2024-09-18 16:44:08', '2024-09-18 16:44:08'),
(15, 'Esnak', '2024-09-18 16:44:25', '2024-09-18 16:44:25'),
(16, 'Toalas Higienicas', '2024-09-18 16:44:54', '2024-09-18 16:44:54'),
(17, 'Limpieza', '2024-09-18 16:45:25', '2024-09-18 16:45:25'),
(18, 'Aceite', '2024-09-18 16:45:39', '2024-09-18 16:45:39'),
(19, 'Tallarines', '2024-09-24 19:00:07', '2024-09-24 19:00:07'),
(20, 'Medicamentos', '2024-09-24 19:08:37', '2024-09-24 19:08:37'),
(21, 'Embutidos', '2024-09-25 16:57:07', '2024-09-25 16:57:07'),
(22, 'Aseo', '2024-09-25 17:18:21', '2024-09-25 17:18:21'),
(23, 'Aceo Personal', '2024-09-25 17:33:10', '2024-09-25 17:33:10'),
(24, 'Esferos', '2024-09-26 14:27:02', '2024-09-26 14:27:02'),
(25, 'Lapices', '2024-09-26 14:27:23', '2024-09-26 14:27:23'),
(26, 'Focos', '2024-09-26 14:28:11', '2024-09-26 14:28:11'),
(27, 'Cartas', '2024-09-26 14:28:33', '2024-09-26 14:28:33'),
(28, 'Tarjetas De Recargas', '2024-09-26 14:37:21', '2024-09-26 14:37:21'),
(29, 'Pegamento', '2024-09-26 14:37:46', '2024-09-26 14:37:46'),
(30, 'Fideos', '2024-09-29 18:04:43', '2024-09-29 18:04:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credits`
--

CREATE TABLE `credits` (
  `credit_id` bigint(20) UNSIGNED NOT NULL,
  `ci` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `total_loan` double(8,2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `limit_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `observation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `credits`
--

INSERT INTO `credits` (`credit_id`, `ci`, `client_name`, `description`, `total_loan`, `state`, `limit_date`, `created_at`, `updated_at`, `observation`) VALUES
(4, NULL, 'David', 'Una cola', 1.20, 11, '2024-10-10', '2024-10-10 19:34:40', '2024-10-24 15:51:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enterprises`
--

CREATE TABLE `enterprises` (
  `enterprise_id` bigint(20) UNSIGNED NOT NULL,
  `enterprise_name` varchar(255) DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `manager` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `software_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `enterprises`
--

INSERT INTO `enterprises` (`enterprise_id`, `enterprise_name`, `phone`, `address`, `manager`, `img`, `software_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Paquita', '0961119670', 'Esteban Marañon y Lope Antonio de Munive', 'Luis Yumiseba', 'paquita-logo.png', 2, '2024-08-04 01:46:46', '2024-08-04 01:46:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cost` double(8,2) NOT NULL,
  `img_1` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `discount_description` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `messagge_for_contact` varchar(255) NOT NULL,
  `varchar_1` varchar(255) DEFAULT NULL,
  `varchar_2` varchar(255) DEFAULT NULL,
  `varchar_3` varchar(255) DEFAULT NULL,
  `last_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipment_rents`
--

CREATE TABLE `equipment_rents` (
  `equipment_rent_id` bigint(20) UNSIGNED NOT NULL,
  `inventories_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `img_1` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `discount_description` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `messagge_for_contact` varchar(255) DEFAULT NULL,
  `cch_points` double(8,2) DEFAULT NULL,
  `varchar_1` varchar(255) DEFAULT NULL,
  `varchar_2` varchar(255) DEFAULT NULL,
  `varchar_3` varchar(255) DEFAULT NULL,
  `last_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses_tours`
--

CREATE TABLE `expenses_tours` (
  `expense_tour_id` bigint(20) UNSIGNED NOT NULL,
  `list_id` int(11) NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `description` text NOT NULL,
  `unit_cost` double(8,2) NOT NULL,
  `total_cost` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exposition_tours`
--

CREATE TABLE `exposition_tours` (
  `exposition_tour_id` bigint(20) UNSIGNED NOT NULL,
  `tour_name` varchar(255) NOT NULL,
  `tour_destiny` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `include` text NOT NULL,
  `cost_1` double(8,2) NOT NULL,
  `cost_2` double(8,2) NOT NULL,
  `cost_3` double(8,2) NOT NULL,
  `cost_4` double(8,2) NOT NULL,
  `img_1` varchar(255) NOT NULL,
  `img_2` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `varchar_1` varchar(255) NOT NULL,
  `varchar_2` varchar(255) NOT NULL,
  `varchar_3` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galleries`
--

CREATE TABLE `galleries` (
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img_1` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incomes_tours`
--

CREATE TABLE `incomes_tours` (
  `income_tour_id` bigint(20) UNSIGNED NOT NULL,
  `expense_tour_id` int(11) NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `description` text NOT NULL,
  `unit_cost` double(8,2) NOT NULL,
  `total_cost` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories`
--

CREATE TABLE `inventories` (
  `inventories_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock` double(8,2) DEFAULT NULL,
  `inWarehouse` double(8,2) DEFAULT NULL,
  `withoutWarehouse` double(8,2) DEFAULT NULL,
  `Observation` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `varchar2` text DEFAULT NULL,
  `varchar3` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inventories`
--

INSERT INTO `inventories` (`inventories_id`, `product_id`, `stock`, `inWarehouse`, `withoutWarehouse`, `Observation`, `status_id`, `varchar2`, `varchar3`, `created_at`, `updated_at`) VALUES
(9, 25, 1.00, 1.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `list_id` bigint(20) UNSIGNED NOT NULL,
  `monthly_tour_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `Description` text DEFAULT NULL,
  `status_list` text DEFAULT NULL,
  `varchar1` text DEFAULT NULL,
  `int1` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2022_06_14_073855_create_exposition_tours_table', 1),
(10, '2022_06_14_073925_create_monthly_tours_table', 1),
(11, '2022_06_14_074030_create_montly_tours_users_table', 1),
(12, '2022_06_14_074120_create_incomes_tours_table', 1),
(13, '2022_06_14_074200_create_expenses_tours_table', 1),
(14, '2022_06_14_074238_create_bank_accounts_table', 1),
(15, '2022_06_14_074306_create_bank_accounts_tours_table', 1),
(16, '2022_09_18_201603_create_tour_catalogues_table', 1),
(17, '2022_10_11_221452_create_equipment_table', 1),
(18, '2023_01_08_191159_create_equipment_rents_table', 1),
(19, '2023_03_22_154149_create_galleries_table', 1),
(20, '2023_06_27_151131_create_passenger_list_monthly_tours_table', 1),
(21, '2023_06_27_151622_create_passenger_lists_table', 1),
(22, '2023_06_30_193810_create_passengers_table', 1),
(23, '2023_09_09_064759_create_listas_table', 1),
(24, '2023_09_10_184656_create_categories_table', 1),
(25, '2023_09_10_184738_create_products_table', 1),
(26, '2023_09_10_184812_create_inventories_table', 1),
(27, '2023_09_10_190020_create_warehouses_table', 1),
(28, '2023_09_10_190040_create_product_warehouses_table', 1),
(29, '2023_09_10_191436_create_suppliers_table', 1),
(30, '2023_09_16_064402_create_statuses_table', 1),
(31, '2023_11_15_171614_create_produts_list_warehouses_table', 1),
(32, '2023_11_17_111401_create_request_products_to_warehouses_table', 1),
(33, '2023_11_20_170946_create_request_complete_products_table', 1),
(34, '2024_03_08_042339_create_software_tipes_table', 1),
(35, '2024_03_08_044305_create_enterprises_table', 1),
(36, '2024_03_08_140135_create_credits_table', 1),
(37, '2024_04_28_135701_create_sales_products_table', 1),
(38, '2024_05_11_084648_create_total_account_sales_table', 1),
(39, '2024_05_11_093811_create_secuential_bills_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monthly_tours`
--

CREATE TABLE `monthly_tours` (
  `monthly_tour_id` bigint(20) UNSIGNED NOT NULL,
  `tour_name` varchar(255) NOT NULL,
  `tour_destiny` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `include` text NOT NULL,
  `img_1` varchar(255) NOT NULL,
  `img_2` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dificulty` varchar(255) NOT NULL,
  `person_cost` double(8,2) NOT NULL,
  `group_cost` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `income` double(8,2) DEFAULT NULL,
  `egress` double(8,2) DEFAULT NULL,
  `utility` double(8,2) DEFAULT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `messagge_for_contact` varchar(255) NOT NULL,
  `departure_date` date NOT NULL,
  `return_date` date NOT NULL,
  `varchar_1` varchar(255) DEFAULT NULL,
  `varchar_2` varchar(255) DEFAULT NULL,
  `varchar_3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monthly_tours_users`
--

CREATE TABLE `monthly_tours_users` (
  `monthly_tour_user_id` bigint(20) UNSIGNED NOT NULL,
  `monthly_tour_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seats` int(11) NOT NULL,
  `coment` text NOT NULL,
  `img_voucher` text NOT NULL,
  `ammount_deposited` double(8,2) NOT NULL,
  `missing_ammount` double(8,2) NOT NULL,
  `messagge` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a3b0914e5d0f3bc6a79d98dbcbe17b98d649e7635cb7f3c8a659fbdb0c38484f42d77d817796c57', 1, 1, 'authToken', '[]', 0, '2024-09-25 15:57:27', '2024-09-25 15:57:27', '2024-10-25 15:57:27'),
('1146e89c03262cd5a03efce8dc62679580615b3aadc99ce52cc9c66cd1528dc2bcf322569625ce11', 1, 1, 'authToken', '[]', 0, '2024-08-25 13:55:46', '2024-08-25 13:55:46', '2024-09-25 13:55:46'),
('14ed63914dc728ea583aa80a1449468dbc4c04da7c6fb5d6f821ab01505db0f8de24de7d2607b507', 1, 1, 'authToken', '[]', 0, '2024-09-19 12:53:04', '2024-09-19 12:53:04', '2024-10-19 12:53:04'),
('26b5244fe87a472ed9dc46ca83a25f572b22cd4c26331a7bd77fc9833b0f5d18451bf4569e92d944', 1, 1, 'authToken', '[]', 0, '2024-09-27 18:03:14', '2024-09-27 18:03:14', '2024-10-27 18:03:14'),
('4265ec0eeaac1e25150dacdca411c11e6715ca2646750be6194e3121779a1c2e46bceb55d9b27b77', 1, 1, 'authToken', '[]', 0, '2024-09-18 22:38:55', '2024-09-18 22:38:55', '2024-10-18 22:38:55'),
('4628143102bd919f770b452d0c66b154d06a1b53790573b260897de0b3d56c3ad803abd86af324c5', 1, 1, 'authToken', '[]', 0, '2024-09-26 10:02:01', '2024-09-26 10:02:01', '2024-10-26 10:02:01'),
('4662da4ad4a00ce199f979f1211d67a069c80b1016f77e9ae8bd78a6fb77cf70f14e22cc0296d319', 1, 1, 'authToken', '[]', 1, '2024-09-23 14:18:50', '2024-09-23 14:18:50', '2024-10-23 14:18:50'),
('480f25b67569aad27d9a26fa8229583b31c5c2486659f4cef1a1e3df05a4f21f48548a8df7e93e57', 1, 1, 'authToken', '[]', 0, '2024-09-24 18:56:36', '2024-09-24 18:56:36', '2024-10-24 18:56:36'),
('56d079f838366d0aa5d12b5ab8f73ff9389c349c44c5b2cb2077b14b48677d7671147b0eed540ffa', 1, 1, 'authToken', '[]', 0, '2024-09-27 18:05:03', '2024-09-27 18:05:03', '2024-10-27 18:05:03'),
('58a52b839b8e34d88ccaa9ad64e523088219b1f387b95fa5ebd351e93dbd4040ea91a885808f9d30', 1, 1, 'authToken', '[]', 0, '2024-09-19 01:23:47', '2024-09-19 01:23:47', '2024-10-19 01:23:47'),
('628cf261f1156b3c7604817387bbff26dcebe39a45a5958fb61555ad5aa6eae9601fd0f82beb69cd', 1, 1, 'authToken', '[]', 0, '2024-09-26 14:10:03', '2024-09-26 14:10:03', '2024-10-26 14:10:03'),
('662b00c97c4f532b02a938d2dfc3b0ec4f66ea22f6e0a6b794a3ee16044718c790254cde707e3fe7', 1, 1, 'authToken', '[]', 1, '2024-09-20 18:30:15', '2024-09-20 18:30:15', '2024-10-20 18:30:15'),
('682fd60ac83cb910c04bd5b12895af14cf8c2061f11f98632f58792f554ee1bb1b18833fb892edd2', 1, 1, 'authToken', '[]', 0, '2024-09-18 11:26:14', '2024-09-18 11:26:14', '2024-10-18 11:26:14'),
('6c6b2187aca158a1225cf41e8fc74572a13ae148f819499135e4e03f105c7108a00a9eb7d6aced6e', 1, 1, 'authToken', '[]', 0, '2024-09-17 19:53:12', '2024-09-17 19:53:12', '2024-10-17 19:53:12'),
('6c87ea428f72d6e891328db1f17f9c33ce9c2fc833b050532555787574c3f2942a51c7548fd08bb7', 1, 1, 'authToken', '[]', 0, '2024-09-29 17:59:51', '2024-09-29 17:59:51', '2024-10-29 17:59:51'),
('711010f3348773f1a50f0c50a7fe4f95d233e67b2efae007db8785548a38f47411e98ef59c013e1c', 1, 1, 'authToken', '[]', 1, '2024-09-17 19:49:30', '2024-09-17 19:49:30', '2024-10-17 19:49:30'),
('7ec16726415b7e34517bd8cfa9fe474d66504ecbd95a774716c2a04313dddd91a75d0a84968531ad', 1, 1, 'authToken', '[]', 0, '2024-10-24 11:40:06', '2024-10-24 11:40:06', '2024-11-24 11:40:06'),
('81a55406453c46d608c297306790a6f4ef171b37b6855697be1e8f2f54f776a6013c577ae2447fe1', 1, 1, 'authToken', '[]', 0, '2024-09-27 08:51:38', '2024-09-27 08:51:38', '2024-10-27 08:51:38'),
('90cec007a5c8fc5ee53096b1b0036d87120aac15b28ec37fef15e9102b0bbf628d2ac9f9be39bfa0', 1, 1, 'authToken', '[]', 0, '2024-10-25 06:57:54', '2024-10-25 06:57:54', '2024-11-25 06:57:54'),
('922de418301a31d5d1c3c25f19c6d1deb50f0ff42651302e6d1e9364e63dff6bb305c771edf15e8b', 1, 1, 'authToken', '[]', 0, '2024-09-19 12:59:33', '2024-09-19 12:59:33', '2024-10-19 12:59:33'),
('9d758d682e632419eb3b6dced942d615f4c245a61a178d6daf94c4f497b1dadd50cea20d5289a3cc', 1, 1, 'authToken', '[]', 0, '2024-08-26 18:42:12', '2024-08-26 18:42:12', '2024-09-26 18:42:12'),
('a3cea2d15df1b62f9bd84f48b159a35183c3883cb48c1e5649c3171c6e8ed1be009470e1669887ad', 1, 1, 'authToken', '[]', 0, '2024-09-18 15:31:23', '2024-09-18 15:31:23', '2024-10-18 15:31:23'),
('ad7f12b4b6dcd17a3cfde035f7b96572c4616efb5957c115877c4a0fc4cfa6926a76bf4572902dd3', 1, 1, 'authToken', '[]', 0, '2024-09-18 11:26:57', '2024-09-18 11:26:57', '2024-10-18 11:26:57'),
('af3b60650d546bc8af31165f6e0bc25e1b535e0a472d775cd4cc29027b978ffead492c2fd90b722b', 1, 1, 'authToken', '[]', 1, '2024-08-04 11:14:57', '2024-08-04 11:14:57', '2024-09-04 11:14:57'),
('afb5221691e65033f597adc87a773e052aa3b5dd23113becd6da231c4ecaeb9cc29a24ab88ea96e8', 1, 1, 'authToken', '[]', 0, '2024-09-17 19:53:43', '2024-09-17 19:53:43', '2024-10-17 19:53:43'),
('b19b3e071cc46f9eacfff62b32a2b1c7a21c101b644295480a4edb665e524db232b6ce63042aece6', 1, 1, 'authToken', '[]', 1, '2024-08-25 14:48:36', '2024-08-25 14:48:36', '2024-09-25 14:48:36'),
('bb49c05dad9cb5cfd0329e5a47a39b1479514e29460114fd4f427429164b6e2696a5674282fc2f16', 1, 1, 'authToken', '[]', 1, '2024-08-25 14:50:11', '2024-08-25 14:50:11', '2024-09-25 14:50:11'),
('c7d29e80facf3b00bf2959eb5fb7a38d314b32017a379ba6dd563c88d2fb23faa46889c6da83a7ae', 1, 1, 'authToken', '[]', 0, '2024-09-28 05:11:19', '2024-09-28 05:11:19', '2024-10-28 05:11:19'),
('dd1e5f0f7ce1e7458116955477db4b0390139e3390cd5853f432fb93111d4f35039f84b7d2d3e5ce', 1, 1, 'authToken', '[]', 1, '2024-08-04 11:15:08', '2024-08-04 11:15:08', '2024-09-04 11:15:08'),
('e3b037d201b354e4cc08ce98f0dc362b21fcacc1cae4fbd2f34b0d25462722137bfd08d7f9c55aa8', 1, 1, 'authToken', '[]', 0, '2024-09-19 12:53:54', '2024-09-19 12:53:54', '2024-10-19 12:53:54'),
('ed1bb1259cac6eb44f2811af729e4660872617b6334d639ef4a4742094830577aea7fac663129f61', 1, 1, 'authToken', '[]', 1, '2024-08-04 02:33:09', '2024-08-04 02:33:09', '2024-09-03 21:33:09'),
('f4e3605166ba71ac193cef0723d6d0509947c918185aa19b965a74ec47cef79328e84ba4a8351c32', 1, 1, 'authToken', '[]', 0, '2024-09-18 11:29:08', '2024-09-18 11:29:08', '2024-10-18 11:29:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'tflbXv5h6V0Ql0zoKbqmw4SkbKBp789CPa4woI5l', NULL, 'http://localhost', 1, 0, 0, '2024-08-04 01:46:42', '2024-08-04 01:46:42'),
(2, NULL, 'Laravel Password Grant Client', 'EYoXhgKb4NhS9PFkSDOeNpZPMR6gpzOWoCs6mmNX', 'users', 'http://localhost', 0, 1, 0, '2024-08-04 01:46:42', '2024-08-04 01:46:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-08-04 01:46:42', '2024-08-04 01:46:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `passengers`
--

CREATE TABLE `passengers` (
  `passenger_id` bigint(20) UNSIGNED NOT NULL,
  `ci` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `phone` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `correo` text DEFAULT NULL,
  `age` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `born_date` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `passengers`
--

INSERT INTO `passengers` (`passenger_id`, `ci`, `name`, `phone`, `city`, `correo`, `age`, `address`, `born_date`, `password`, `created_at`, `updated_at`) VALUES
(1, '9999999999', 'Consumidor Final', '9999999999', 'No Aplica', 'consumidorfinal@gmail.com', '18', 'No Aplica', '2022-06-10', '$2y$10$xDV5ioCPHCBCTSsZVLAz2eVtuJzxX0yllFNbOyD.Yu4cL6IQKj2xa', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(2, '0603935008', 'Darío Janeta', '0961119670', 'N/A', 'darday1980@gmail.com', NULL, 'Riobaamba', NULL, NULL, '2024-08-25 20:50:18', '2024-08-25 20:50:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `passenger_lists`
--

CREATE TABLE `passenger_lists` (
  `passenger_lists_id` bigint(20) UNSIGNED NOT NULL,
  `list_id` int(11) NOT NULL,
  `passenger_ci` text NOT NULL,
  `seat` int(11) DEFAULT NULL,
  `unit_cost` double(8,2) DEFAULT NULL,
  `total_cost` double(8,2) DEFAULT NULL,
  `collected` double(8,2) DEFAULT NULL,
  `bus_extra` double(8,2) DEFAULT NULL,
  `to_collect` double(8,2) DEFAULT NULL,
  `bank` text DEFAULT NULL,
  `responsable` text DEFAULT NULL,
  `meeting_point` text DEFAULT NULL,
  `observation` text DEFAULT NULL,
  `passenger_type` varchar(255) DEFAULT NULL,
  `passenger_group_leader_ci` text DEFAULT NULL,
  `img_cmp_1` varchar(255) DEFAULT NULL,
  `img_cmp_2` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `state_passenger` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `passenger_list_monthly_tours`
--

CREATE TABLE `passenger_list_monthly_tours` (
  `passenger_list_monthly_tours` bigint(20) UNSIGNED NOT NULL,
  `list_id` int(11) NOT NULL,
  `monthly_tour_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `buying_price` double(8,2) DEFAULT NULL,
  `min_selling_price` double(8,2) DEFAULT NULL,
  `selling_price` double(8,2) DEFAULT NULL,
  `rent_price` double(8,2) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `img` text DEFAULT NULL,
  `observation` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `supplier_id`, `description`, `buying_price`, `min_selling_price`, `selling_price`, `rent_price`, `entry_date`, `img`, `observation`, `created_at`, `updated_at`) VALUES
(1, 13, 9, 'Agua Ardiente', 0.55, 1.00, 1.00, 1.00, '2024-04-07', NULL, 'Utilidad: 45.00% = 0.45', '2024-04-07 19:42:31', '2024-09-18 22:39:21'),
(2, 13, 20, 'PILSENER DE LITRO', 2.15, 2.25, 2.25, 2.25, '2024-04-07', NULL, 'Utilidad: 4.44% = 0.10', '2024-04-07 19:51:43', NULL),
(3, 22, 4, 'Guantes', 1.15, 1.50, 1.50, 1.50, '2024-09-18', NULL, 'Utilidad: 23.33% = 0.35', '2024-09-18 15:47:35', '2024-09-25 17:18:42'),
(4, 5, 4, 'galleta oreo', 0.80, 0.00, 1.00, 0.00, '2024-09-18', NULL, 'Utilidad: 20.00% = 0.20', '2024-09-18 15:51:25', NULL),
(5, 5, 4, 'mini saltica', 0.19, 0.00, 0.25, 0.00, '2024-09-18', NULL, 'Utilidad: 24.00% = 0.06', '2024-09-18 15:54:22', NULL),
(6, 5, 4, 'esnak', 0.40, 0.00, 0.50, 0.00, '2024-09-18', NULL, 'Utilidad: 20.00% = 0.10', '2024-09-18 15:57:59', NULL),
(7, 5, 4, 'Galletas crispi', 0.18, 0.00, 0.25, 0.00, '2024-09-18', NULL, 'Utilidad: 28.00% = 0.07', '2024-09-18 16:02:26', NULL),
(8, 5, 4, 'Cocada', 0.32, 0.00, 0.60, 0.00, '2024-09-18', NULL, 'Utilidad: 46.67% = 0.28', '2024-09-18 16:04:49', NULL),
(9, 5, 4, 'Oreo mediano', 0.40, 0.00, 0.50, 0.00, '2024-09-18', NULL, 'Utilidad: 20.00% = 0.10', '2024-09-18 16:06:02', NULL),
(10, 5, 4, 'Piaza', 0.09, 0.00, 0.15, 0.00, '2024-09-18', NULL, 'Utilidad: 40.00% = 0.06', '2024-09-18 16:13:15', NULL),
(11, 5, 4, 'galletas amor grande', 1.28, 0.00, 1.50, 0.00, '2024-09-18', NULL, 'Utilidad: 14.67% = 0.22', '2024-09-18 16:17:10', NULL),
(12, 13, 4, 'Switch', 2.46, 0.00, 3.00, 0.00, '2024-09-18', NULL, 'Utilidad: 18.00% = 0.54', '2024-09-18 16:26:51', '2024-09-25 17:20:26'),
(13, 1, 4, 'Coca cola de 1 Litro', 0.93, 0.00, 1.10, 0.00, '2024-09-18', NULL, 'Utilidad: 15.45% = 0.17', '2024-09-18 16:28:36', '2024-09-18 22:39:40'),
(14, 1, 4, 'Pepsi Cola de litro', 0.40, 0.00, 0.50, 0.00, '2024-09-18', NULL, 'Utilidad: 20.00% = 0.10', '2024-09-18 16:30:32', NULL),
(15, 1, 4, 'Cafe pres  2', 1.25, 0.00, 1.50, 0.00, '2024-09-18', NULL, 'Utilidad: 16.67% = 0.25', '2024-09-18 16:31:52', NULL),
(16, 1, 4, 'Aceite la favorita de 500', 1.43, 0.00, 1.75, 0.00, '2024-09-18', NULL, 'Utilidad: 18.29% = 0.32', '2024-09-18 16:33:20', NULL),
(17, 22, 4, 'jabon protex', 0.81, 0.00, 1.25, 0.00, '2024-09-18', NULL, 'Utilidad: 35.20% = 0.44', '2024-09-18 17:01:20', '2024-09-25 17:19:49'),
(18, 1, 4, 'Azucar 2 kilos', 1.92, 0.00, 2.30, 0.00, '2024-09-18', NULL, 'Utilidad: 16.52% = 0.38', '2024-09-18 17:04:56', '2024-09-18 22:39:49'),
(19, 1, 4, 'Azucar morena 2 kilos', 2.10, 0.00, 2.30, 0.00, '2024-09-18', NULL, 'Utilidad: 8.70% = 0.20', '2024-09-18 17:07:23', '2024-09-25 17:49:16'),
(20, 1, 4, 'vasos coleros', 0.38, 0.00, 0.50, 0.00, '2024-09-18', NULL, 'Utilidad: 24.00% = 0.12', '2024-09-18 17:08:33', NULL),
(21, 17, 4, 'Aromatel', 0.74, 0.00, 1.00, 0.00, '2024-09-18', NULL, 'Utilidad: 26.00% = 0.26', '2024-09-18 17:10:35', '2024-09-18 22:40:59'),
(22, 1, 4, 'Rapidito', 0.54, 0.00, 0.75, 0.00, '2024-09-18', NULL, 'Utilidad: 28.00% = 0.21', '2024-09-18 22:47:27', NULL),
(23, 1, 4, 'Tatus', 0.20, 0.00, 0.25, 0.00, '2024-09-18', NULL, 'Utilidad: 20.00% = 0.05', '2024-09-18 22:48:49', NULL),
(24, 1, 4, 'Caramelos bianchi', 0.02, 0.00, 0.05, 0.00, '2024-09-18', NULL, 'Utilidad: 60% = 0.03', '2024-09-18 22:50:35', '2024-09-28 05:35:17'),
(25, 1, 4, 'Afeitadoras Bic Amarillas', 0.35, 0.00, 0.50, 0.00, '2024-09-18', NULL, 'Utilidad: 30.00% = 0.15', '2024-09-18 22:52:33', '2024-09-19 01:24:38'),
(26, 1, 4, 'colgate', 0.93, 0.00, 1.25, 0.00, '2024-09-18', NULL, 'Utilidad: 25.60% = 0.32', '2024-09-18 22:53:27', NULL),
(27, 2, 4, 'Fiusti', 0.79, 0.00, 1.10, 0.00, '2024-09-18', NULL, 'Utilidad: 28.18% = 0.31', '2024-09-18 22:55:28', NULL),
(28, 2, 4, 'Guitig', 0.80, 0.00, 1.00, 0.00, '2024-09-18', NULL, 'Utilidad: 20.00% = 0.20', '2024-09-18 22:57:12', NULL),
(29, 2, 4, 'Guitig Pequeña', 0.59, 0.00, 0.70, 0.00, '2024-09-18', NULL, 'Utilidad: 15.71% = 0.11', '2024-09-18 22:59:11', '2024-09-28 05:12:37'),
(30, 2, 4, 'Cifru', 0.45, 0.00, 0.50, 0.00, '2024-09-18', NULL, 'Utilidad: 10.00% = 0.05', '2024-09-18 23:01:34', NULL),
(31, 2, 4, 'Esferos Bic', 0.30, 9.00, 0.40, 0.00, '2024-09-18', NULL, 'Utilidad: 25.00% = 0.10', '2024-09-18 23:04:51', NULL),
(32, 2, 4, 'Pilas AA', 1.47, 0.00, 200.00, 0.00, '2024-09-18', NULL, 'Utilidad: 99.26% = 198.53', '2024-09-18 23:06:59', NULL),
(33, 1, 4, 'Pilas', 1.47, 0.00, 2.00, 0.00, '2024-09-18', NULL, 'Utilidad: 26.50% = 0.53', '2024-09-18 23:08:35', NULL),
(34, 1, 4, 'frasco para muestra orina', 0.12, 0.00, 0.25, 0.00, '2024-09-18', NULL, 'Utilidad: 52.00% = 0.13', '2024-09-18 23:10:02', NULL),
(35, 22, 4, 'Guillet', 0.80, 0.00, 1.25, 0.00, '2024-09-18', NULL, 'Utilidad: 36.00% = 0.45', '2024-09-18 23:11:15', '2024-09-25 17:19:26'),
(36, 16, 4, 'Toallas intimas', 0.60, 0.00, 1.00, 0.00, '2024-09-18', NULL, 'Utilidad: 40.00% = 0.40', '2024-09-18 23:14:14', NULL),
(37, 1, 4, 'Salchicha', 0.33, 0.00, 0.50, 0.00, '2024-09-18', NULL, 'Utilidad: 34.00% = 0.17', '2024-09-18 23:15:52', NULL),
(38, 1, 4, 'Fosforos Paquete', 0.79, 0.00, 1.00, 0.00, '2024-09-18', NULL, 'Utilidad: 21.00% = 0.21', '2024-09-18 23:17:05', '2024-09-25 17:16:05'),
(40, 1, 4, 'Pilas para calefon', 0.83, 0.00, 1.25, 0.00, '2024-09-18', NULL, 'Utilidad: 33.60% = 0.42', '2024-09-18 23:24:05', NULL),
(41, 1, 4, 'Babuloso', 0.35, 0.00, 0.50, 0.00, '2024-09-18', NULL, 'Utilidad: 30.00% = 0.15', '2024-09-18 23:25:13', NULL),
(42, 1, 4, 'Lonchis de pollo', 0.80, 0.00, 1.00, 0.00, '2024-09-24', NULL, 'Utilidad: 20.00% = 0.20', '2024-09-24 18:58:45', NULL),
(43, 19, 4, 'lonchis picante', 0.80, 0.00, 1.00, 0.00, '2024-09-24', NULL, 'Utilidad: 20.00% = 0.20', '2024-09-24 19:01:12', NULL),
(44, 15, 4, 'Dorito pequeño', 0.29, 0.00, 0.35, 0.00, '2024-09-24', NULL, 'Utilidad: 17.14% = 0.06', '2024-09-24 19:02:20', NULL),
(45, 3, 4, 'Panelada', 0.44, 0.00, 0.50, 0.00, '2024-09-24', NULL, 'Utilidad: 12.00% = 0.06', '2024-09-24 19:03:43', NULL),
(46, 17, 4, 'Surf 0.50', 0.37, 0.00, 0.50, 0.00, '2024-09-24', NULL, 'Utilidad: 26.00% = 0.13', '2024-09-24 19:05:13', NULL),
(47, 2, 4, 'Agua cielo', 0.39, 0.00, 0.50, 0.00, '2024-09-24', NULL, 'Utilidad: 22.00% = 0.11', '2024-09-24 19:07:45', NULL),
(48, 20, 4, 'Singripal en sobre', 0.51, 0.00, 0.65, 0.00, '2024-09-24', NULL, 'Utilidad: 21.54% = 0.14', '2024-09-24 19:09:54', NULL),
(49, 5, 4, 'Galleta nestle de sal', 0.57, 0.00, 0.75, 0.00, '2024-09-24', NULL, 'Utilidad: 24.00% = 0.18', '2024-09-24 19:12:20', NULL),
(50, 15, 2, 'Manicho', 0.35, 0.00, 0.50, 0.00, '2024-09-25', NULL, 'Utilidad: 30.00% = 0.15', '2024-09-25 16:16:27', NULL),
(51, 3, 2, 'Fosforo', 0.04, 0.00, 0.10, 0.00, '2024-09-25', NULL, 'Utilidad: 60.00% = 0.06', '2024-09-25 16:20:50', NULL),
(52, 2, 4, 'Yogurt tony', 0.45, 0.00, 0.50, 0.00, '2024-09-25', NULL, 'Utilidad: 10.00% = 0.05', '2024-09-25 16:27:44', NULL),
(53, 14, 4, 'Colcafe', 0.27, 0.00, 0.35, 0.00, '2024-09-25', NULL, 'Utilidad: 22.86% = 0.08', '2024-09-25 16:40:19', NULL),
(54, 14, 4, 'Cafe buen dia', 0.27, 0.00, 0.35, 0.00, '2024-09-25', NULL, 'Utilidad: 22.86% = 0.08', '2024-09-25 16:41:21', NULL),
(55, 6, 4, 'Agogo de menta', 0.11, 0.00, 0.15, 0.00, '2024-09-25', NULL, 'Utilidad: 26.67% = 0.04', '2024-09-25 16:48:35', NULL),
(56, 3, 4, 'Salsa BBQ', 0.96, 0.00, 1.35, 0.00, '2024-09-25', NULL, 'Utilidad: 28.89% = 0.39', '2024-09-25 16:56:19', NULL),
(57, 21, 4, 'Nuguets', 0.85, 0.00, 1.00, 0.00, '2024-09-25', NULL, 'Utilidad: 15.00% = 0.15', '2024-09-25 16:57:52', NULL),
(58, 15, 4, 'Saltica pequeña', 0.17, 0.00, 0.25, 0.00, '2024-09-25', NULL, 'Utilidad: 32.00% = 0.08', '2024-09-25 17:27:43', NULL),
(59, 15, 4, 'Tatos queso', 0.21, 0.00, 0.25, 0.00, '2024-09-25', NULL, 'Utilidad: 16.00% = 0.04', '2024-09-25 17:36:24', NULL),
(60, 15, 4, 'Tatos picante', 0.21, 0.00, 0.25, 0.00, '2024-09-25', NULL, 'Utilidad: 16.00% = 0.04', '2024-09-25 17:37:02', NULL),
(61, 3, 4, 'Sazón Maggi', 0.30, 0.00, 35.00, 0.00, '2024-09-25', NULL, 'Utilidad: 99.14% = 34.70', '2024-09-25 17:53:03', NULL),
(62, 3, 4, 'Mostaza Maggi pequeña', 0.31, 0.00, 0.35, 0.00, '2024-09-25', NULL, 'Utilidad: 11.43% = 0.04', '2024-09-25 17:54:00', NULL),
(63, 3, 4, 'Mayonesa Maggi pequeña', 0.31, 0.00, 0.35, 0.00, '2024-09-25', NULL, 'Utilidad: 11.43% = 0.04', '2024-09-25 17:54:57', NULL),
(64, 3, 4, 'Salsa de tomate maggy', 0.31, 0.00, 0.35, 0.00, '2024-09-25', NULL, 'Utilidad: 11.43% = 0.04', '2024-09-25 17:55:31', NULL),
(65, 1, 4, 'Esferos bic', 0.29, 0.00, 0.35, 0.00, '2024-09-26', NULL, 'Utilidad: 17.14% = 0.06', '2024-09-26 14:21:31', NULL),
(66, 28, 21, 'Tarjeta de recargas de 3', 3.00, 0.00, 3.10, 0.00, '2024-09-26', NULL, 'Utilidad: 3.23% = 0.1', '2024-09-26 14:47:16', '2024-09-27 18:12:21'),
(67, 28, 21, 'tarjetas de 1', 1.00, 0.00, 1.05, 0.00, '2024-09-26', NULL, 'Utilidad: 4.76% = 0.05', '2024-09-26 14:54:06', '2024-09-27 18:12:12'),
(68, 29, 2, 'Pegamento brujita', 0.08, 0.00, 0.40, 0.00, '2024-09-26', NULL, 'Utilidad: 80% = 0.32', '2024-09-26 15:03:49', '2024-09-27 18:13:03'),
(69, 1, 4, 'Cajitas de Naipe', 0.33, 0.00, 0.75, 0.00, '2024-09-26', NULL, 'Utilidad: 56% = 0.42', '2024-09-26 15:06:51', '2024-09-27 18:05:53'),
(70, 1, 4, 'Pinzas de cejas', 0.24, 0.00, 1.00, 0.00, '2024-09-26', NULL, 'Utilidad: 76% = 0.76', '2024-09-26 15:09:44', '2024-09-28 05:34:56'),
(71, 1, 4, 'Pepsi para .50', 0.42, 0.00, 0.50, 0.00, '2024-09-26', NULL, 'Utilidad: 16% = 0.08', '2024-09-26 15:11:43', '2024-09-27 18:11:53'),
(72, 2, 4, 'Colas de sabores 0.50', 0.42, 0.00, 0.50, 0.00, '2024-09-26', NULL, 'Utilidad: 16% = 0.08', '2024-09-26 15:13:17', '2024-09-27 18:11:43'),
(73, 2, 4, 'Aguas dasani pequeña', 0.25, 0.00, 0.30, 0.00, '2024-09-26', NULL, 'Utilidad: 16.67% = 0.05', '2024-09-26 15:15:32', '2024-09-27 18:11:34'),
(74, 2, 4, 'Agua Dasani de 2litros', 0.59, 0.00, 0.70, 0.00, '2024-09-26', NULL, 'Utilidad: 15.71% = 0.11', '2024-09-26 15:19:41', '2024-09-27 18:12:37'),
(75, 2, 4, 'Guitig 1 dólar', 0.86, 0.00, 1.00, 0.00, '2024-09-26', NULL, 'Utilidad: 14.00% = 0.14', '2024-09-26 15:23:27', '2024-09-27 08:52:07'),
(76, 2, 4, 'Saviloe', 0.87, 0.00, 1.00, 0.00, '2024-09-26', NULL, 'Utilidad: 13% = 0.13', '2024-09-26 15:26:58', '2024-09-27 18:12:54'),
(77, 2, 4, 'voli', 0.50, 0.00, 0.88, 0.00, '2024-09-26', NULL, 'Utilidad: 43.18% = 0.38', '2024-09-26 15:29:20', '2024-09-28 05:13:28'),
(79, 3, 4, 'AGUA ARDIENTE f', 0.55, 0.00, 1.00, 0.00, '2024-09-28', NULL, 'Utilidad: 45% = 0.45', '2024-09-28 06:28:24', NULL),
(80, 30, 4, 'F. Don Vito Tornillo', 0.65, 0.00, 1.00, 0.00, '2024-09-29', NULL, 'Utilidad: 35% = 0.35', '2024-09-29 18:08:04', NULL),
(81, 30, 4, 'fideo Tubito don Vito', 0.65, 0.00, 1.00, 0.00, '2024-09-29', NULL, 'Utilidad: 35% = 0.35', '2024-09-29 18:11:10', NULL),
(82, 30, 4, 'Galletas ducales taco x3', 2.03, 0.00, 2.45, 0.00, '2024-09-29', NULL, 'Utilidad: 17.14% = 0.42', '2024-09-29 18:16:20', NULL),
(83, 3, 4, 'Ají oriental', 0.75, 0.00, 1.00, 0.00, '2024-09-29', NULL, 'Utilidad: 25% = 0.25', '2024-09-29 18:20:57', NULL),
(84, 5, 4, 'galleta oreo mediano', 0.41, 0.00, 0.50, 0.00, '2024-09-29', NULL, 'Utilidad: 18% = 0.09', '2024-09-29 18:23:19', NULL),
(85, 5, 4, 'Galletas mias de leche', 0.36, 0.00, 0.50, 0.00, '2024-09-29', NULL, 'Utilidad: 28% = 0.14', '2024-09-29 18:24:46', NULL),
(86, 5, 4, 'galletas amor mediano', 0.69, 0.00, 1.00, 0.00, '2024-09-29', NULL, 'Utilidad: 31% = 0.31', '2024-09-29 18:26:25', NULL),
(87, 13, 4, 'Vino Cavid', 4.10, 0.00, 5.00, 0.00, '2024-09-29', NULL, 'Utilidad: 18% = 0.9', '2024-09-29 18:27:48', NULL),
(88, 3, 4, 'Chupete ploc de sandia', 0.09, 0.00, 0.15, 0.00, '2024-09-29', NULL, 'Utilidad: 40% = 0.06', '2024-09-29 18:32:12', NULL),
(89, 2, 4, 'Guitig de 1 litro', 0.73, 0.00, 1.00, 0.00, '2024-09-29', NULL, 'Utilidad: 27% = 0.27', '2024-09-29 18:36:07', NULL),
(90, 2, 4, 'Bebida sen', 0.42, 0.00, 0.50, 0.00, '2024-09-29', NULL, 'Utilidad: 16% = 0.08', '2024-09-29 18:37:32', NULL),
(91, 2, 4, 'Pepsi de litro', 0.42, 0.00, 0.50, 0.00, '2024-09-29', NULL, 'Utilidad: 16% = 0.08', '2024-09-29 18:39:32', NULL),
(92, 12, 4, 'Procan adulto', 44.50, 0.00, 62.00, 0.00, '2024-09-29', NULL, 'Utilidad: 28.23% = 17.5', '2024-09-29 18:42:02', NULL),
(93, 2, 4, 'Coca cola de 3 litros', 2.42, 0.00, 3.00, 0.00, '2024-09-29', NULL, 'Utilidad: 19.33% = 0.58', '2024-09-29 18:44:43', NULL),
(94, 2, 4, 'Pulpin Mediano', 0.34, 0.00, 0.40, 0.00, '2024-09-29', NULL, 'Utilidad: 15% = 0.06', '2024-09-29 18:45:41', NULL),
(95, 17, 4, 'Aromatel', 0.74, 0.00, 1.00, 0.00, '2024-09-29', NULL, 'Utilidad: 26% = 0.26', '2024-09-29 20:02:05', NULL),
(96, 16, 4, 'MATERNITI', 1.02, 0.00, 1.02, 0.00, '2024-09-29', NULL, 'Utilidad: 0.49% = 0', '2024-09-29 20:08:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_warehouses`
--

CREATE TABLE `product_warehouses` (
  `product_warehouses_id` bigint(20) UNSIGNED NOT NULL,
  `inventories_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_status_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `observation` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_warehouses`
--

INSERT INTO `product_warehouses` (`product_warehouses_id`, `inventories_id`, `product_id`, `product_status_id`, `warehouse_id`, `quantity`, `observation`, `created_at`, `updated_at`) VALUES
(9, 9, NULL, NULL, 1, 1, NULL, '2024-10-25 07:00:28', '2024-10-25 07:00:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produts_list_warehouses`
--

CREATE TABLE `produts_list_warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `request_complete_products`
--

CREATE TABLE `request_complete_products` (
  `request_complete_products_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `status_request` text DEFAULT NULL,
  `status_acquisition` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `request_products_to_warehouses`
--

CREATE TABLE `request_products_to_warehouses` (
  `request_products_to_warehouses_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity_products` int(11) NOT NULL,
  `request_complete_products_id` int(11) NOT NULL,
  `product_warehouses_id` int(11) NOT NULL,
  `status` text DEFAULT NULL,
  `unit_price` double(8,2) DEFAULT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_products`
--

CREATE TABLE `sales_products` (
  `sales_products_id` bigint(20) UNSIGNED NOT NULL,
  `passengers_ci` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_warehouse_id` int(11) DEFAULT NULL,
  `quantity_prod` int(11) DEFAULT NULL,
  `status_sales_products` text DEFAULT NULL,
  `sale_type` text DEFAULT NULL,
  `description_sale_free` text DEFAULT NULL,
  `price_sale_free` text DEFAULT NULL,
  `secuential_bill_id` int(11) DEFAULT NULL,
  `sale_date` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sales_products`
--

INSERT INTO `sales_products` (`sales_products_id`, `passengers_ci`, `user_id`, `product_warehouse_id`, `quantity_prod`, `status_sales_products`, `sale_type`, `description_sale_free`, `price_sale_free`, `secuential_bill_id`, `sale_date`, `created_at`, `updated_at`) VALUES
(1, '0603935008', 1, NULL, NULL, 'VR', 'Libre', '1 pan + 2 huevos + mediolitro de leche', '0.95', 11, '2024-08-26', '2024-08-25 20:51:39', '2024-08-25 20:51:39'),
(2, '0603935008', 1, NULL, NULL, 'VR', 'Libre', '3 huevos + 2 dolares de arroz + 1.20 de pollo', '3.65', 12, '2024-08-26', '2024-08-26 18:38:33', '2024-08-26 18:38:33'),
(3, '0603935008', 1, NULL, NULL, 'VR', 'Libre', '2 huevos + 3 panes + 1atun de un dólar', '1.75', 14, '2024-08-28', '2024-08-28 14:01:27', '2024-08-28 14:01:27'),
(4, '0603935008', 1, NULL, NULL, 'VR', 'Libre', 'pollo 0.52 centavos', '0.52', 14, '2024-08-28', '2024-08-28 14:02:35', '2024-08-28 14:02:35'),
(5, '0603935008', 1, NULL, NULL, 'VR', 'Libre', '3 panes + 3 huevos + 1 dolar de un chifle', '1.90', 15, '2024-08-30', '2024-08-29 19:54:53', '2024-08-29 19:54:53'),
(6, '0603935008', 1, NULL, NULL, 'VR', 'Libre', '0.70 Pollo + 0.30 Huevos', '1', 16, '2024-08-31', '2024-08-30 19:38:32', '2024-08-30 19:38:32'),
(7, '0603935008', 1, NULL, NULL, 'VR', 'Libre', '1.00 papas +0.50 leche + 0.45 huevos', '1.95', 17, '2024-09-01', '2024-09-01 16:32:08', '2024-09-01 16:32:08'),
(8, '0603935008', 1, NULL, NULL, 'VR', 'Libre', '3 panes', '0.45', 17, '2024-09-01', '2024-09-01 16:33:36', '2024-09-01 16:33:36'),
(9, '0603935008', 1, NULL, NULL, 'VR', 'Libre', '4 huevos + 1 yogurtt + papas 0.50 + 1 oRiental', '2.2', 19, '2024-09-05', '2024-09-04 19:50:19', '2024-09-04 19:50:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuential_bills`
--

CREATE TABLE `secuential_bills` (
  `secuential_bill_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `secuential_bills`
--

INSERT INTO `secuential_bills` (`secuential_bill_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Fact 1', '2024-08-03 22:05:42', '2024-08-03 22:05:42'),
(2, 'Fact 2', '2024-08-03 22:05:42', '2024-08-03 22:05:42'),
(3, 'Fact 2', '2024-08-04 11:15:28', '2024-08-04 11:15:28'),
(4, 'Fact 3', '2024-08-04 11:15:37', '2024-08-04 11:15:37'),
(5, 'Fact 4', '2024-08-04 11:15:47', '2024-08-04 11:15:47'),
(6, 'Fact 5', '2024-08-04 11:16:27', '2024-08-04 11:16:27'),
(7, 'Fact 6', '2024-08-25 13:56:47', '2024-08-25 13:56:47'),
(8, 'Fact 7', '2024-08-25 20:50:18', '2024-08-25 20:50:18'),
(9, 'Fact 8', '2024-08-25 20:50:43', '2024-08-25 20:50:43'),
(10, 'Fact 9', '2024-08-25 20:50:43', '2024-08-25 20:50:43'),
(11, 'Fact 9', '2024-08-25 20:50:52', '2024-08-25 20:50:52'),
(12, 'Fact 10', '2024-08-26 18:37:25', '2024-08-26 18:37:25'),
(13, 'Fact 1', '2024-08-28 14:00:30', '2024-08-28 14:00:30'),
(14, 'Fact 2', '2024-08-28 14:00:30', '2024-08-28 14:00:30'),
(15, 'Fact 2', '2024-08-29 19:54:07', '2024-08-29 19:54:07'),
(16, 'Fact 3', '2024-08-30 19:38:12', '2024-08-30 19:38:12'),
(17, 'Fact 4', '2024-09-01 16:31:13', '2024-09-01 16:31:13'),
(18, 'Fact 5', '2024-09-04 19:46:52', '2024-09-04 19:46:52'),
(19, 'Fact 5', '2024-09-04 19:46:52', '2024-09-04 19:46:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `software_tipes`
--

CREATE TABLE `software_tipes` (
  `software_type_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `software_tipes`
--

INSERT INTO `software_tipes` (`software_type_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Full', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(2, 'Inventario', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(3, 'Demo', '2024-08-04 01:46:46', '2024-08-04 01:46:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `category_status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`status_id`, `description`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Nuevo', 'Productos', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(2, 'Bueno', 'Productos', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(3, 'Regular', 'Productos', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(4, 'Malo Funcional', 'Productos', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(5, 'Malo No funcional', 'Productos', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(6, 'No paga nada', 'Pagos de Pasajeros', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(7, 'Pagado Todo', 'Pagos de Pasajeros', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(8, 'Pago Parcial', 'Pagos de Pasajeros', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(9, 'No Aplica - Acompañante', 'Pagos de Pasajeros', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(10, 'No pagado', 'Creditos', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(11, 'Pagado', 'Creditos', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(12, 'Vencido', 'Creditos', '2024-08-04 01:46:46', '2024-08-04 01:46:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `suppliers_id` bigint(20) UNSIGNED NOT NULL,
  `name_store` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `owner` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`suppliers_id`, `name_store`, `phone`, `address`, `owner`, `created_at`, `updated_at`) VALUES
(1, 'Desconocido', '0963124578', 'Riobamba - Guayaquil y 5 de junio', 'Mayor', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(2, 'Dicosavi', '0999', 'LA Merced', 'Santillas', '2024-04-07 19:05:43', '2024-04-07 19:05:43'),
(4, 'AHIES', '0999', 'LA CONDAMINES', 'Santillas MARCO ANTONIO', '2024-04-07 19:08:46', '2024-04-07 19:08:46'),
(5, 'ONMILIFE', '593384308', 'MEXICO', 'AMAURI VERGARA', '2024-04-07 19:10:17', '2024-04-07 19:10:17'),
(7, 'Martha Colas', '593384308', 'la condamine', 'Martha Colas', '2024-04-07 19:12:30', '2024-04-07 19:12:30'),
(8, 'molinos Anita', '099999', 'Santa Rosa', 'Anita', '2024-04-07 19:18:57', '2024-04-07 19:18:57'),
(9, 'Agua Ardiente', '099999', 'Santa Rosa', 'joven agua ardiente', '2024-04-07 19:22:23', '2024-04-07 19:22:23'),
(10, 'Procan', '0989716660', 'Riobamba', 'Anderson Perez', '2024-04-07 19:24:36', '2024-04-07 19:24:36'),
(12, 'Helados topsy', '0999999', 'Riobamba', 'Gualberto', '2024-04-07 19:26:07', '2024-04-07 19:26:07'),
(13, 'Minerva', '0999999', 'Riobamba', 'Minerva', '2024-04-07 19:28:30', '2024-04-07 19:28:30'),
(15, 'Velas concepcion', '0999999', 'Riobamba', 'velas concepción', '2024-04-07 19:30:51', '2024-04-07 19:30:51'),
(16, 'Panadería Britany', '0999999', 'Riobamba', 'Sr, CECIÑÑI', '2024-04-07 19:32:35', '2024-04-07 19:32:35'),
(19, 'Mi negocio efectivo', '0933333', 'Riobamba', 'Sr, CECILIO', '2024-04-07 19:35:23', '2024-04-07 19:35:23'),
(20, 'BEES', '09999', 'RIOBAMBA', 'PILSEMER', '2024-04-07 19:46:44', '2024-04-07 19:46:44'),
(21, 'Provetec', '99999999', 'Primera Constituyente Colon', 'Xxxxx', '2024-09-26 14:42:49', '2024-09-26 14:42:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `total_account_sales`
--

CREATE TABLE `total_account_sales` (
  `total_account_sales_id` bigint(20) UNSIGNED NOT NULL,
  `secuential_bill_id` int(11) NOT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `total_account_sales`
--

INSERT INTO `total_account_sales` (`total_account_sales_id`, `secuential_bill_id`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 11, 0.95, '2024-08-25 20:51:45', '2024-08-25 20:51:45'),
(2, 12, 3.65, '2024-08-26 18:38:37', '2024-08-26 18:38:37'),
(3, 14, 2.27, '2024-08-28 14:02:45', '2024-08-28 14:02:45'),
(4, 15, 1.90, '2024-08-29 19:54:59', '2024-08-29 19:54:59'),
(5, 16, 1.00, '2024-08-30 19:38:38', '2024-08-30 19:38:38'),
(6, 17, 2.40, '2024-09-01 16:33:47', '2024-09-01 16:33:47'),
(7, 19, 2.20, '2024-09-04 19:50:25', '2024-09-04 19:50:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tour_catalogues`
--

CREATE TABLE `tour_catalogues` (
  `tour_catalogues_id` bigint(20) UNSIGNED NOT NULL,
  `tour_name` varchar(255) NOT NULL,
  `tour_destiny` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `include` text NOT NULL,
  `cost_1` double(8,2) NOT NULL,
  `cost_2` double(8,2) NOT NULL,
  `cost_3` double(8,2) NOT NULL,
  `cost_4` double(8,2) NOT NULL,
  `img_1` varchar(255) NOT NULL,
  `img_2` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dificulty` varchar(255) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `discount_description` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `messagge_for_contact` varchar(255) NOT NULL,
  `varchar_1` varchar(255) DEFAULT NULL,
  `varchar_2` varchar(255) DEFAULT NULL,
  `varchar_3` varchar(255) DEFAULT NULL,
  `last_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  `external_auth` varchar(255) DEFAULT NULL,
  `ci` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `rol` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `external_id`, `external_auth`, `ci`, `name`, `last_name`, `country`, `city`, `cellphone`, `img`, `rol`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Administrador', 'Sistema', NULL, NULL, NULL, NULL, 'admin', 'adminsistema@gmail.com', NULL, '$2y$10$719RZarJpXQnloYsMOKmWO0gqN7oIvjabXbSUUYcU3Kfhwpp2uyUu', NULL, '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(2, NULL, NULL, NULL, 'Darío', 'Janeta', NULL, NULL, NULL, NULL, 'guide', 'dariojaneta@gmail.com', NULL, '$2y$10$yLL5kTAd4voM39c9RNGbKeGlGxx1yOlt3EDbjUc5cE0kTBRFtgm9G', NULL, '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(3, NULL, NULL, NULL, 'María', 'Paca', NULL, NULL, NULL, NULL, 'shopkeeper', 'mariapaca@gmail.com', NULL, '$2y$10$CamN2GByhJPsId6vS8JnfuuCbBSr0meMjpcWLc5c3Pv1Tbn4KkkPa', NULL, '2024-08-04 01:46:46', '2024-08-04 01:46:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouses`
--

CREATE TABLE `warehouses` (
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `observation` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `warehouses`
--

INSERT INTO `warehouses` (`warehouse_id`, `description`, `address`, `phone`, `observation`, `created_at`, `updated_at`) VALUES
(1, 'Almacenamiento Paquita', 'TIenda', '0995300403', 'Aquí están las cosas para vender', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(2, 'Bodega Almacenamiento 1', 'Tierra Nueva', '0961119670', '', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(3, 'Bodega Almacenamiento 2', 'Mercado la esperanza', '0997159098', '', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(4, 'Bodega Almacenamiento 3', 'Complejo la Panadería', '0993786135', 'Bodega casa Luchin', '2024-08-04 01:46:46', '2024-08-04 01:46:46'),
(5, 'Paquita Bodega 2', 'Redondel del Libro', '0995300403', 'Mamá Darío - María Paca', '2024-08-04 01:46:46', '2024-08-04 01:46:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`bank_accounts_id`);

--
-- Indices de la tabla `bank_accounts_tours`
--
ALTER TABLE `bank_accounts_tours`
  ADD PRIMARY KEY (`bank_account_tour_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indices de la tabla `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indices de la tabla `enterprises`
--
ALTER TABLE `enterprises`
  ADD PRIMARY KEY (`enterprise_id`);

--
-- Indices de la tabla `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indices de la tabla `equipment_rents`
--
ALTER TABLE `equipment_rents`
  ADD PRIMARY KEY (`equipment_rent_id`);

--
-- Indices de la tabla `expenses_tours`
--
ALTER TABLE `expenses_tours`
  ADD PRIMARY KEY (`expense_tour_id`);

--
-- Indices de la tabla `exposition_tours`
--
ALTER TABLE `exposition_tours`
  ADD PRIMARY KEY (`exposition_tour_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indices de la tabla `incomes_tours`
--
ALTER TABLE `incomes_tours`
  ADD PRIMARY KEY (`income_tour_id`);

--
-- Indices de la tabla `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`inventories_id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`list_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monthly_tours`
--
ALTER TABLE `monthly_tours`
  ADD PRIMARY KEY (`monthly_tour_id`);

--
-- Indices de la tabla `monthly_tours_users`
--
ALTER TABLE `monthly_tours_users`
  ADD PRIMARY KEY (`monthly_tour_user_id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passenger_id`),
  ADD UNIQUE KEY `passengers_ci_unique` (`ci`);

--
-- Indices de la tabla `passenger_lists`
--
ALTER TABLE `passenger_lists`
  ADD PRIMARY KEY (`passenger_lists_id`);

--
-- Indices de la tabla `passenger_list_monthly_tours`
--
ALTER TABLE `passenger_list_monthly_tours`
  ADD PRIMARY KEY (`passenger_list_monthly_tours`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `product_warehouses`
--
ALTER TABLE `product_warehouses`
  ADD PRIMARY KEY (`product_warehouses_id`);

--
-- Indices de la tabla `produts_list_warehouses`
--
ALTER TABLE `produts_list_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `request_complete_products`
--
ALTER TABLE `request_complete_products`
  ADD PRIMARY KEY (`request_complete_products_id`);

--
-- Indices de la tabla `request_products_to_warehouses`
--
ALTER TABLE `request_products_to_warehouses`
  ADD PRIMARY KEY (`request_products_to_warehouses_id`);

--
-- Indices de la tabla `sales_products`
--
ALTER TABLE `sales_products`
  ADD PRIMARY KEY (`sales_products_id`);

--
-- Indices de la tabla `secuential_bills`
--
ALTER TABLE `secuential_bills`
  ADD PRIMARY KEY (`secuential_bill_id`);

--
-- Indices de la tabla `software_tipes`
--
ALTER TABLE `software_tipes`
  ADD PRIMARY KEY (`software_type_id`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`suppliers_id`);

--
-- Indices de la tabla `total_account_sales`
--
ALTER TABLE `total_account_sales`
  ADD PRIMARY KEY (`total_account_sales_id`);

--
-- Indices de la tabla `tour_catalogues`
--
ALTER TABLE `tour_catalogues`
  ADD PRIMARY KEY (`tour_catalogues_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `bank_accounts_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bank_accounts_tours`
--
ALTER TABLE `bank_accounts_tours`
  MODIFY `bank_account_tour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `credits`
--
ALTER TABLE `credits`
  MODIFY `credit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `enterprises`
--
ALTER TABLE `enterprises`
  MODIFY `enterprise_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipment_rents`
--
ALTER TABLE `equipment_rents`
  MODIFY `equipment_rent_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `expenses_tours`
--
ALTER TABLE `expenses_tours`
  MODIFY `expense_tour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `exposition_tours`
--
ALTER TABLE `exposition_tours`
  MODIFY `exposition_tour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galleries`
--
ALTER TABLE `galleries`
  MODIFY `gallery_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incomes_tours`
--
ALTER TABLE `incomes_tours`
  MODIFY `income_tour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories`
--
ALTER TABLE `inventories`
  MODIFY `inventories_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `list_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `monthly_tours`
--
ALTER TABLE `monthly_tours`
  MODIFY `monthly_tour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `monthly_tours_users`
--
ALTER TABLE `monthly_tours_users`
  MODIFY `monthly_tour_user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `passengers`
--
ALTER TABLE `passengers`
  MODIFY `passenger_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `passenger_lists`
--
ALTER TABLE `passenger_lists`
  MODIFY `passenger_lists_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `passenger_list_monthly_tours`
--
ALTER TABLE `passenger_list_monthly_tours`
  MODIFY `passenger_list_monthly_tours` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `product_warehouses`
--
ALTER TABLE `product_warehouses`
  MODIFY `product_warehouses_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `produts_list_warehouses`
--
ALTER TABLE `produts_list_warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `request_complete_products`
--
ALTER TABLE `request_complete_products`
  MODIFY `request_complete_products_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `request_products_to_warehouses`
--
ALTER TABLE `request_products_to_warehouses`
  MODIFY `request_products_to_warehouses_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sales_products`
--
ALTER TABLE `sales_products`
  MODIFY `sales_products_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `secuential_bills`
--
ALTER TABLE `secuential_bills`
  MODIFY `secuential_bill_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `software_tipes`
--
ALTER TABLE `software_tipes`
  MODIFY `software_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `status_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `suppliers_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `total_account_sales`
--
ALTER TABLE `total_account_sales`
  MODIFY `total_account_sales_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tour_catalogues`
--
ALTER TABLE `tour_catalogues`
  MODIFY `tour_catalogues_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `warehouse_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
