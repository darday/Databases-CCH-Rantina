-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-12-2024 a las 12:52:33
-- Versión del servidor: 10.6.19-MariaDB
-- Versión de PHP: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fundaci4_cch-front`
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
(1, 'Carpas', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(2, 'Sleepings', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(3, 'Aislantes', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(4, 'Equipos de Cocina', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(5, 'Iluminación', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(6, 'Ropa y Calzado', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(7, 'Herramientas y Cuchillos', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(8, 'Equipo de Senderismo', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(9, 'Seguridad y Primeros Auxilios', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(10, 'Electrónica', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(11, 'Refrigerios', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(12, 'Desayuno', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(13, 'Merienda', '2024-04-30 12:13:30', '2024-04-30 12:13:30');

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
(1, 'Camping Chimborazo', '0961119670', 'Esteban Marañon y Lope Antonio de Munive', 'Luis Yumiseba', 'camping-logo.png', 1, '2024-04-30 12:13:31', '2024-04-30 12:13:31');

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

--
-- Volcado de datos para la tabla `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `name`, `description`, `cost`, `img_1`, `state`, `type`, `discount`, `discount_description`, `contact_phone`, `messagge_for_contact`, `varchar_1`, `varchar_2`, `varchar_3`, `last_user`, `created_at`, `updated_at`) VALUES
(1, 'Buff Ruta Altar', '¡Prepárate para explorar la naturaleza con nuestro buff de montaña! 🏞️❄️ Este accesorio versátil y cómodo te mantendrá abrigado en los días fríos. 🌄 Además, su diseño de alta calidad te garantiza durabilidad y resistencia para tus aventuras al aire libre. ¡No esperes más y obtén el tuyo ahora! 🙌🧣', 4.50, 'equipment/DsdMhoO49Dphoto1674782397.jpeg', 1, 'Accesorios', 0.00, 'Ninguno', '0961119670', 'Hola Me gustaría adquirir su buff personalizado del Altar', NULL, NULL, NULL, NULL, '2023-04-18 23:14:09', '2024-05-02 18:05:04'),
(2, 'Manta Térmica', '🔆 ¡No dejes que el frío te detenga en tus aventuras al aire libre! Con nuestra manta térmica de emergencia, estarás preparado para enfrentar cualquier situación y mantener el calor en todo momento. ❄️🔥\r\n\r\n💪 Diseñada con materiales de alta calidad, nuestra manta térmica es ligera, compacta y fácil de llevar contigo en tus excursiones, campamentos o actividades al aire libre. 🏕️🚵‍♂️🏔️\r\n\r\n🛡️ La manta está fabricada con un material reflectante que ayuda a conservar el calor corporal, brindándote protección contra el frío extremo y manteniéndote resguardado incluso en condiciones adversas. ⛄️🌬️', 4.99, 'equipment/aIxIpBTBhLmodelo para web (7).png', 1, 'Accesorios', 0.00, '0', '0961119670', 'Hola me gustaría comprar una manta térmica', NULL, NULL, NULL, NULL, '2023-06-22 17:07:52', NULL),
(3, 'Energizante Natural', '«Es un Energizante con Extractos Naturales » que gracias a su alto contenido de vitaminas del complejo B ayuda a la producción de energía, antioxidante, mejora el rendimiento en las actividades deportivas, ayuda a mejorar síntomas de cansancio y somnolencia.', 1.50, 'equipment/AgsL5MbL8Cmodelo para web.png', 1, 'Accesorios', 0.00, '0', '0961119670', 'Hola me ayudas con el biocros', NULL, NULL, NULL, NULL, '2023-07-13 11:11:30', '2023-07-13 11:21:13'),
(4, 'Relajante Muscular', 'Proporciona energía y bienestar general. Ayuda a combatir las sensaciones de cansancio, fatiga y estrés, así como dolores de cabeza, gota y calambres.\r\nGarantiza un máximo de rendimiento físico y mental.\r\nDa energía a nivel muscular.\r\nCombate el estrés.\r\nAyuda a eliminar el dolor muscular y los calambres.\r\nEs ideal para atletas y físico culturistas.\r\nAyuda a desaparecer el dolor o lastimadura de huesos y músculos, y los calambres.', 1.50, 'equipment/MkjJ4b2DBimodelo para web (1).png', 1, 'Accesorios', 0.00, 'Ninguno', '0961119670', 'Hola me ayudas con un starbien', NULL, NULL, NULL, NULL, '2023-07-13 11:15:33', '2023-07-13 11:33:18'),
(5, 'ANDES NATURAL', 'Te presentamos \"Andes Natural\", la comida que te acompaña a todas partes y se calienta sola en su propio empaque. 🌶️🍲 Perfecta para tus aventuras al aire libre, días ajetreados en la oficina o cuando simplemente no quieres cocinar.\r\n\r\nNuestros platillos están inspirados en los sabores únicos de los Andes, preparados con ingredientes naturales y sin conservadores. 🌿 Solo necesitas activar el paquete y en minutos tendrás una comida caliente y deliciosa, lista para disfrutar. 🕒🔥\r\n\r\nPrueba \"Andes Natural\" y vive la experiencia de un plato caliente y reconfortante dondequiera que estés. ¡Ideal para amantes de la naturaleza y la buena comida! 🏞️🍴\r\n\r\n¡Ordena ahora y siente el sabor de los Andes en cada bocado! 📲🛒', 8.50, 'equipment/uBqqY2ngPzWhatsApp Image 2024-05-02 at 11.56.18 AM.jpeg', 1, 'Accesorios', 0.00, '0', '0961119670', 'Hola Deseo una comida de andes Natural', NULL, NULL, NULL, NULL, '2024-05-02 11:56:59', NULL);

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

--
-- Volcado de datos para la tabla `equipment_rents`
--

INSERT INTO `equipment_rents` (`equipment_rent_id`, `inventories_id`, `name`, `description`, `cost`, `img_1`, `state`, `type`, `isActive`, `discount`, `discount_description`, `contact_phone`, `messagge_for_contact`, `cch_points`, `varchar_1`, `varchar_2`, `varchar_3`, `last_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Carpa 2 Personas 3 Estaciones', '🏕️ ¡Experimenta la magia del camping con nuestra carpa para dos personas! 🌟 Listos para todas las estaciones, te brindamos la oportunidad de disfrutar la naturaleza con comodidad. ⛺️\r\n\r\n✨ Características que te encantarán:\r\n\r\nFácil montaje para que comiences tu aventura rápidamente.\r\nResistente a todas las estaciones para adaptarse a tus planes.\r\nEspacio acogedor perfecto para dos personas.\r\nVentilación estratégica para noches frescas e inolvidables.\r\n🌲 Prepárate para explorar, relajarte y crear recuerdos increíbles bajo el cielo estrellado. 🌌 ¡Reserva ahora y asegura tu escape perfecto! 🚀 #Camping #AventuraJuntos #TentLife', 12.00, 'equipmentRent/woS7xHnBytcarpa.png', 1, 'Carpa', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar la carpa de 2 personas', NULL, NULL, NULL, NULL, NULL, '2024-01-25 11:38:56', '2024-08-04 14:11:53'),
(2, NULL, 'Carpa 3 Personas 3 Estaciones', '🏕️ ¡Aventuras inolvidables te esperan con nuestra carpa para 3 personas! 🌟 Diseñada para todas las estaciones, esta carpa te ofrece la combinación perfecta de espacio y comodidad. ⛺️\r\n\r\n✨ Características destacadas:\r\n\r\nMontaje fácil y rápido para comenzar tu experiencia sin complicaciones.\r\nResistencia a todas las estaciones, adaptándose a cualquier clima.\r\nAmplio espacio para tres personas, ideal para grupos pequeños.\r\nVentilación estratégica para noches frescas y revitalizantes.\r\n🌈 Vive la emoción del camping en compañía. ¡Reserva ahora y prepárate para compartir momentos mágicos bajo el cielo estrellado! 🌌🚀 #CampingEnGrupo #TentLife #AventurasJuntos', 15.00, 'equipmentRent/YZmDnKXOiFcarpa (1).png', 1, 'Carpa', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar la carpa de 3 personas', NULL, NULL, NULL, NULL, NULL, '2024-01-25 11:41:01', NULL),
(3, NULL, 'Botas de caucho', '¡Desata tu espíritu aventurero y conquista el lodo con nuestras botas de caucho, disponibles para alquiler! 🌧️🥾 Descubre la combinación perfecta de resistencia, comodidad y estilo mientras exploras terrenos embarrados. 💪🏞️ No permitas que el lodo te detenga, ¡camina con confianza hacia la aventura! 🌟 Alquila tus botas hoy y sumérgete en una experiencia sin límites. 🌿👢 #AventuraSinLímites #BotasDeCaucho #ExploraConConfianza\r\n\r\nTallas 35-38-40', 5.00, 'equipmentRent/jbP376EaEAcarpa (2).png', 1, 'Ropa', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar las botas de caucho', NULL, NULL, NULL, NULL, NULL, '2024-01-25 11:45:48', NULL),
(4, NULL, 'Sleeping Bag Oursky -4°C', '¡Prepárate para una noche llena de sueños bajo las estrellas con nuestros increíbles sacos de dormir disponibles para alquiler! 🌌✨ ¿Listo para convertir tus noches al aire libre en momentos inolvidables? 🏕️💤 Alquila un sleeping de calidad y duerme con comodidad mientras la naturaleza te abraza. 🌳🛌 ¡Haz de cada aventura una experiencia de descanso inigualable! 🌙🔥 #AventuraNocturna #SacosDeDormir #AlquilerDeSueños', 7.00, 'equipmentRent/uqbUv5KiND93mZeyicaRDiseдo sin tбtulo (2).png', 1, 'Sleeping', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar el Sleeping', NULL, NULL, NULL, NULL, NULL, '2024-01-25 11:49:22', NULL),
(5, NULL, 'Aislante Térmico', '¡No dejes que el frío te detenga! ❄️ Alquila nuestros aislantes térmicos y mantén el calor en tus noches de campamento. 🏕️🔥 Ligeros, compactos y ultraeficientes, son la clave para un descanso cálido y confortable en plena naturaleza. 🌌🛌 ¡Haz de tus aventuras invernales una experiencia acogedora e inolvidable! 🌬️🛡️ #AventuraCaliente #AislantesTérmicos #AlquilerDeCalor', 5.00, 'equipmentRent/kGOyVkRArHHrP3xrhFjaDiseдo sin tбtulo (3).png', 1, 'Accesorios', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar el Aislante', NULL, NULL, NULL, NULL, NULL, '2024-01-25 11:50:20', NULL),
(6, NULL, 'Linterna de Cabeza', '¡Ilumina tus aventuras nocturnas con nuestras linternas de cabeza disponibles para alquiler! 💡🏞️ No dejes que la oscuridad te detenga. Con nuestras linternas de cabeza, tendrás las manos libres para explorar cada rincón. 🌌👀 Alquila la tuya y descubre la magia de la naturaleza incluso después de que el sol se ponga. 🌙✨ ¡Haz que cada momento brille con nuestras potentes linternas de cabeza! 🌠🔦 #ExploraDeNoche #LinternasDeCabeza #AlquilerDeAventuras', 5.00, 'equipmentRent/G4CobGZrIQcarpa (3).png', 1, 'Accesorios', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar una linterna', NULL, NULL, NULL, NULL, NULL, '2024-01-25 11:53:44', NULL),
(7, NULL, 'Mochila 65 Litros', '¡Prepárate para tu próxima gran aventura con nuestras espaciosas mochilas de 65 litros disponibles para alquiler! 🎒✨ Con capacidad para todo lo esencial, estas mochilas son tu compañero ideal para explorar la naturaleza sin restricciones. 🏞️👣 Alquila ahora y experimenta la libertad de llevar contigo todo lo que necesitas en tu viaje. 🌍🌄 ¡Haz que cada paso cuente con nuestras mochilas de 65 litros! 💪 #ExploraciónSinLímites #Mochilas65L #AlquilerDeAventuras', 10.00, 'equipmentRent/xFO3oL6uGccarpa (4).png', 1, 'Accesorios', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar una mochila', NULL, NULL, NULL, NULL, NULL, '2024-01-25 12:02:19', NULL),
(8, NULL, 'Tanque de gas Grande', '¡Eleva tu experiencia de camping con nuestro tanque de gas de camping de 440g! 🏕️🔥 Alquila el poder que necesitas para cocinar deliciosas comidas al aire libre y mantener tu campamento cálido y acogedor. 🍳🌲 Con capacidad suficiente para toda tu escapada, este tanque de gas grande es tu aliado perfecto en la naturaleza. 🌄🎒 Alquila ahora y añade un toque de conveniencia a tus aventuras al aire libre. 🌟 ¡Cocina, calienta y disfruta al máximo! 🌈⛺ #CampingConEstilo #TanqueDeGas #AlquilerDeAventuras', 6.00, 'equipmentRent/Kw5H3ZSVsCilRQlKYVKVcZzJEbRudESt4Y6xoKVb.png', 1, 'Accesorios', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar una mochila', NULL, NULL, NULL, NULL, NULL, '2024-01-25 12:05:28', '2024-01-25 12:08:26'),
(9, NULL, 'Tanque de gas Pequeño', '¡Prepara tus momentos al aire libre con nuestro tanque de gas de camping de 220g, la elección perfecta para aventuras compactas y llenas de energía! 🏕️🔥 Ligero y eficiente, este tanque pequeño es ideal para tus escapadas más ágiles. 🍳✨ Alquila ahora y descubre la practicidad en cada rincón de la naturaleza. 🌲🎒 ¡Cocina con facilidad y disfruta al máximo sin cargar con peso extra! 🌟🌈 #CampingLigero #TanqueDeGasPequeño #AlquilerDeAventuras', 5.00, 'equipmentRent/2r7gPGEWxMcarpa (6).png', 1, 'Accesorios', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar un tanque de gas pequeño', NULL, NULL, NULL, NULL, NULL, '2024-01-25 12:07:32', NULL),
(10, NULL, 'Hornilla - Estufa', '¡Lleva la cocina a la naturaleza con nuestra hornilla de camping, disponible para alquiler! 🏕️🔥 Prepara tus comidas favoritas en cualquier lugar, sin renunciar al sabor ni a la comodidad. 🍳✨ Alquila nuestra estufa de camping y haz de cada comida al aire libre una experiencia culinaria inolvidable. 🌲🌄 ¡Descubre la libertad de cocinar en plena naturaleza! 🍽️🌿 #CocinaAlAireLibre #EstufaDeCamping #AlquilerDeAventuras', 5.00, 'equipmentRent/eHL3EfnrI6carpa (7).png', 1, 'Accesorios', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar una hornilla', NULL, NULL, NULL, NULL, NULL, '2024-01-25 12:12:22', NULL),
(11, NULL, 'Hornilla + Tanque de gas', '¡Eleva tu experiencia de camping con nuestra potente combinación: la hornilla y tanque de gas perfectos! 🏕️🔥 Alquila este dúo dinámico y lleva la cocina a nuevos horizontes en plena naturaleza. 🍳✨ Con la potencia de la hornilla y la conveniencia del tanque de gas, cada comida se convierte en una deliciosa aventura al aire libre. 🌲🌅 ¡Haz tu reserva y cocina con estilo en tu próximo campamento! 🌟🍽️ #CampingGourmet #CocinaAlAireLibre #AlquilerDeAventuras', 10.00, 'equipmentRent/RYAVFw8dugpUKTZH6XkLXFEVegRuGYxaXkL43nw6.png', 1, 'Accesorios', NULL, 0.00, '0', '0961119670', 'Hola deseo alquilar una hornilla con tanque de gas', NULL, NULL, NULL, NULL, NULL, '2024-01-25 12:16:35', '2024-01-25 12:17:41'),
(12, NULL, 'Casco Ptzl', '¡Prepárate para tus aventuras más extremas con nuestro casco de aventura PETZL, disponible para alquiler! 🧗‍♂️🔥 Ligero, resistente y ergonómico, este casco te ofrece la máxima protección mientras escalas, exploras y disfrutas al aire libre. 🌄👊 ¡Alquila ahora y dale a tu aventura una dosis extra de seguridad y comodidad! 🌟 #CascoDeAventura #ProtecciónSegura #AlquilerDeAventuras', 5.00, 'equipmentRent/Lde4HTAJ1EImagen para redes Sociales Viaje foto sacramento (7).png', 1, 'Accesorios', NULL, 0.00, 'Ninguna', '0961119670', 'Hola deseo alquilar el casco PETZL', NULL, NULL, NULL, NULL, NULL, '2024-02-18 07:38:59', '2024-02-18 09:26:08'),
(13, NULL, 'Cuerda 30m Cousin 2021 de 8.9 mm', '¡Aventúrate con seguridad con nuestra cuerda Cousin de 30 metros, un aliado imprescindible para tu próxima expedición! 🧗‍♀️💪 Con un diámetro de 8.9 mm, esta cuerda te brinda la resistencia y confiabilidad que necesitas en cualquier aventura. 🌄🌿 Alquila la tuya y experimenta el equilibrio perfecto entre ligereza y robustez. 🌟 #EscaladaExtrema #CuerdaDeConfianza #AlquilerDeAventuras', 10.00, 'equipmentRent/8oBpKcaOlsImagen para redes Sociales Viaje foto sacramento (8).png', 1, 'Accesorios', NULL, 0.00, 'Ninguna', '0961119670', 'Hola deseo alquilar la cuerda', NULL, NULL, NULL, NULL, NULL, '2024-02-18 07:50:30', NULL),
(14, NULL, 'Bastones de Trekking', '¡Descubre nuevos caminos y conquista montañas con nuestro bastón de trekking disponible para alquiler! 🏞️💪 Este aliado confiable te brinda estabilidad y apoyo en cada paso, reduciendo la fatiga y protegiendo tus articulaciones. 🚶‍♀️🚶‍♂️ Alquila ahora y vive una experiencia de trekking inigualable. 🌟 #TrekkingSeguro #BastónConfiable #AlquilerDeAventuras', 7.00, 'equipmentRent/px5ti8UH7XImagen para redes Sociales Viaje foto sacramento (9).png', 1, 'Accesorios', NULL, 0.00, 'Ninguna', '0997159098', 'Hola deseo alquilar los bastones de trekking', NULL, NULL, NULL, NULL, NULL, '2024-02-18 09:23:26', NULL),
(15, NULL, 'Manta Térmica (en venta)', '🔆 ¡No dejes que el frío te detenga en tus aventuras al aire libre! Con nuestra manta térmica de emergencia, estarás preparado para enfrentar cualquier situación y mantener el calor en todo momento. ❄️🔥\r\n\r\n💪 Diseñada con materiales de alta calidad, nuestra manta térmica es ligera, compacta y fácil de llevar contigo en tus excursiones, campamentos o actividades al aire libre. 🏕️🚵‍♂️🏔️\r\n\r\n🛡️ La manta está fabricada con un material reflectante que ayuda a conservar el calor corporal, brindándote protección contra el frío extremo y manteniéndote resguardado incluso en condiciones adversas. ⛄️🌬️', 4.99, 'equipmentRent/v11n3jVPJwaIxIpBTBhLmodelo para web (7).png', 1, 'Accesorios', NULL, 0.00, 'Ninguno', '0961119670', 'Hola me gustaría comprar una manta térmica', NULL, NULL, NULL, NULL, NULL, '2024-08-05 18:44:05', '2024-08-05 18:44:44');

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

--
-- Volcado de datos para la tabla `galleries`
--

INSERT INTO `galleries` (`gallery_id`, `name`, `img_1`, `created_at`, `updated_at`) VALUES
(1, 'Puñay', 'gallery/gAxJIfmJZJIMG-20230409-WA0062.jpg', '2023-04-13 10:24:33', NULL),
(2, NULL, 'gallery/cwoc4yZ249IMG-20230411-WA0024.jpg', '2023-04-13 10:27:19', NULL),
(4, NULL, 'gallery/2O9zf3EXC0gallery2.jpeg', '2023-04-18 12:31:13', NULL),
(5, NULL, 'gallery/BPDvgo6B02WhatsApp Image 2023-04-04 at 18.21.37 (1).jpeg', '2023-04-18 12:31:35', NULL),
(6, NULL, 'gallery/pNvHo8I60lWhatsApp Image 2022-11-20 at 4.32.53 PM.jpeg', '2023-04-18 13:52:33', NULL),
(7, NULL, 'gallery/2HNJTOPiDOIMG_20221119_194508 (1).jpg', '2023-04-18 13:53:31', NULL),
(8, NULL, 'gallery/GbCleIm3UOIMG_20221029_171326.jpg', '2023-06-23 17:13:19', NULL),
(9, NULL, 'gallery/7JbvhTeHQVIMG_20230128_133120.jpg', '2023-06-23 17:13:32', NULL),
(10, NULL, 'gallery/XCnA51gkyaIMG_20230408_181848.jpg', '2023-06-23 17:14:23', NULL),
(11, NULL, 'gallery/F7oFGekX3IIMG_20230618_082057.jpg', '2023-06-23 17:14:43', NULL),
(12, NULL, 'gallery/I6jsLX0NncIMG_20230618_090952.jpg', '2023-06-23 17:15:58', NULL),
(13, NULL, 'gallery/FjVgtQbF5PIMG-20230527-WA0013.jpg', '2023-06-23 17:17:28', NULL),
(14, NULL, 'gallery/n4fqf0IMZaImagen para redes Sociales Viaje foto sacramento.png', '2024-02-16 19:28:54', NULL),
(15, NULL, 'gallery/xiCJZEeJvHImagen para redes Sociales Viaje foto sacramento (3).png', '2024-02-16 19:29:29', NULL),
(16, NULL, 'gallery/tuDZ6rwlXDImagen para redes Sociales Viaje foto sacramento (1).png', '2024-02-16 19:31:14', NULL),
(17, NULL, 'gallery/HORWf160GZImagen para redes Sociales Viaje foto sacramento (4).png', '2024-02-16 19:31:47', NULL);

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
(1, 1, 0.00, 0.00, 0.00, NULL, 3, NULL, NULL, NULL, NULL),
(2, 4, 1.00, 1.00, 0.00, NULL, 3, NULL, NULL, NULL, NULL),
(3, 6, 5.00, 5.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(4, 7, 5.00, 5.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(5, 8, 2.00, 2.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(6, 9, 3.00, 3.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(7, 10, 1.00, 1.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(8, 11, 1.00, 1.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(9, 12, 1.00, 1.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(10, 13, 1.00, 1.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(11, 14, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(12, 15, 1.00, 1.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(13, 16, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(14, 17, 2.00, 1.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(15, 18, 30.00, 23.00, 7.00, NULL, 2, NULL, NULL, NULL, NULL),
(16, 19, 4.00, 3.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(17, 20, 3.00, 2.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(18, 21, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(19, 22, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(20, 23, 6.00, 6.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(21, 25, 0.00, 0.00, 0.00, NULL, 4, NULL, NULL, NULL, NULL),
(22, 26, 3.00, 3.00, 0.00, NULL, 3, NULL, NULL, NULL, NULL),
(23, 2, 3.00, 2.00, 1.00, NULL, 5, NULL, NULL, NULL, NULL),
(24, 27, 1.00, 0.00, 1.00, NULL, 4, NULL, NULL, NULL, NULL),
(25, 2, 12.00, 8.00, 4.00, NULL, 2, NULL, NULL, NULL, NULL),
(26, 28, 1.00, 0.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(27, 29, 2.00, 2.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(28, 30, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(29, 31, 1.00, 0.00, 1.00, NULL, 3, NULL, NULL, NULL, NULL),
(30, 32, 1.00, 0.00, 1.00, NULL, 3, NULL, NULL, NULL, NULL),
(31, 33, 2.00, 0.00, 2.00, NULL, 3, NULL, NULL, NULL, NULL),
(32, 37, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(33, 36, 2.00, 2.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(34, 38, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(35, 39, 11.00, 11.00, 0.00, NULL, 1, NULL, NULL, NULL, NULL),
(36, 40, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(37, 41, 2.00, 1.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(38, 42, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(39, 43, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(40, 1, 33.00, 27.00, 6.00, 'Creada a partir de editar inventario', 2, NULL, NULL, NULL, NULL),
(41, 3, 1.00, 0.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(42, 47, 1.00, 0.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(43, 44, 5.00, 5.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(44, 45, 1.00, 1.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(45, 48, 1.00, 1.00, 0.00, 'Este tanque se encontró John', 2, NULL, NULL, NULL, NULL),
(46, 46, 4.00, 4.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(47, 49, 1.00, 0.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(49, 35, 2.00, 2.00, 0.00, NULL, 2, NULL, NULL, NULL, NULL),
(50, 34, 2.00, 1.00, 1.00, NULL, 2, NULL, NULL, NULL, NULL),
(51, 44, 2.00, 2.00, 0.00, NULL, 5, NULL, NULL, '2024-08-25 19:35:19', '2024-08-25 19:35:19'),
(52, 25, 1.00, 1.00, 0.00, NULL, 5, NULL, NULL, '2024-08-26 09:09:30', '2024-08-26 09:09:30');

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

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`list_id`, `monthly_tour_id`, `status`, `Description`, `status_list`, `varchar1`, `int1`, `created_at`, `updated_at`) VALUES
(1, 26, 1, 'CERRO PUÑAY', 'Activo', NULL, NULL, '2024-05-01 09:27:33', '2024-05-01 09:27:33'),
(2, 29, 1, 'ALTAR - LAGUNA AMARILLA', 'Activo', NULL, NULL, '2024-05-01 09:27:42', '2024-05-01 09:27:42'),
(3, 34, 1, 'CERRO PUÑAY', 'Activo', NULL, NULL, '2024-05-01 09:27:45', '2024-05-01 09:27:45'),
(4, 35, 1, 'ALTAR - LAGUNA AMARILLA', 'Activo', NULL, NULL, '2024-05-01 09:27:47', '2024-05-01 09:27:47'),
(5, 27, 1, 'CERRO PUÑAY', 'Activo', NULL, NULL, '2024-05-17 16:05:20', '2024-05-17 16:05:20'),
(6, 21, 1, 'QUILOTOA', 'Activo', NULL, NULL, '2024-05-27 21:48:00', '2024-05-27 21:48:00');

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
(39, '2024_05_11_093811_create_secuential_bills_table', 1),
(40, '2024_08_27_075050_update_credits_table', 1),
(41, '2024_08_27_075209_update_request_products_to_warehouses_table', 1),
(42, '2024_08_27_075331_update_monthly_tours_users_table', 1),
(43, '2024_09_25_122112_create_to_buys_table', 1);

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

--
-- Volcado de datos para la tabla `monthly_tours`
--

INSERT INTO `monthly_tours` (`monthly_tour_id`, `tour_name`, `tour_destiny`, `description`, `include`, `img_1`, `img_2`, `state`, `type`, `dificulty`, `person_cost`, `group_cost`, `discount`, `income`, `egress`, `utility`, `contact_phone`, `messagge_for_contact`, `departure_date`, `return_date`, `varchar_1`, `varchar_2`, `varchar_3`, `created_at`, `updated_at`) VALUES
(1, 'VISITANDO EL CRATER DE UN VOLCÁN', 'QUILOTOA', '🏕️ ¡Descubre la magia del cráter del volcán Quilotoa en nuestro camping de dos días y una noche! 🌋⛺️\r\n\r\n🌄 Sumérgete en la belleza natural de este volcán extinto y disfruta de vistas impresionantes. 🌈🌌\r\n\r\n🥾 Explora senderos escénicos, admira la majestuosidad del cráter y conecta con la energía de la naturaleza. 🌿🌞\r\n\r\n✨ Vive una experiencia única en el corazón de los Andes, rodeado de paisajes cautivadores y tranquilidad absoluta. ¡No hay mejor manera de escapar de la rutina! 🏞️🌿\r\n\r\n¡Únete a nosotros en esta aventura inolvidable en el cráter del volcán Quilotoa! ¡Reserva ahora y vive una experiencia que te dejará sin aliento! 🌋', 'Guía, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/9uoYOJQsWOIMG_20220903_154556.jpg', 'monthly/hwAxP0iRDWIMG_20220903_154556.jpg', 0, 'Camping', 'Moderada - Facil', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola me gustaría reservar mi cupo para la ruta al Quilotoa. Vi esto en la página web', '2024-08-03', '2024-08-04', NULL, NULL, NULL, '2024-01-03 23:10:14', '2024-12-04 19:49:41'),
(2, 'AGUAS TERMALES DEL CHIMBORAZO +', 'Laguna Congelada Carihuairazo', '¡Ven y disfruta de una experiencia única en los Andes ecuatorianos con nuestro tour de 2 días! 🌋🏞️🌡️ Sumérgete en las aguas termales del majestuoso Volcán Chimborazo y visita la impresionante Laguna Congelada del Carihuairazo. 🏊❄️ Después de un día lleno de aventuras, descansa en nuestro acogedor refugio de montaña rodeado de paisajes increíbles. 🏕️🌟 ¡No pierdas la oportunidad de vivir una experiencia única en la naturaleza! Reserva tu lugar ahora. 🙌🌄🌌', 'Transporte desde Riobamba, Desayuno Sábado, Box Lounch Sábado Desayuno, Cena Sábado, Desayuno Domingo, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Guianza, Costo de Ingreso al Carihuirazo, Costo de Ingreso a Aguas Termales.', 'monthly/wflrLZAkWBWhatsApp Image 2024-01-03 at 10.09.42 PM (2).jpeg', 'monthly/vgumQU6SjTWhatsApp Image 2024-01-03 at 10.09.42 PM (2).jpeg', 0, 'Full Day', 'Moderada', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0993786135', 'Hola me gustaría tener información para la ruta al Carihuairazo. Vi esto en la web', '2024-01-08', '2024-01-08', NULL, NULL, NULL, '2024-01-03 23:17:31', '2024-12-04 19:49:41'),
(3, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/0igoVEpFUH449256427_978800150922113_5055352100288203854_n.jpg', 'monthly/5szAoau0IP449256427_978800150922113_5055352100288203854_n.jpg', 0, 'Camping', 'Moderada - Alta', 75.00, 70.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-09-21', '2024-09-22', NULL, NULL, NULL, '2024-01-03 23:22:51', '2024-12-04 19:49:41'),
(5, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/8Z5lYF0kNcdescarga (1).jpg', 'monthly/cYzp9fBVMbdescarga (1).jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', '2024-01-13', '2024-01-14', NULL, NULL, NULL, '2024-01-03 23:28:49', '2024-12-04 19:49:41'),
(6, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/yO7mUQZzQtdescarga (2).jpg', 'monthly/Khj6Qr23UPdescarga (2).jpg', 0, 'Camping', 'Moderada - Alta', 75.00, 70.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-01-20', '2024-01-21', NULL, NULL, NULL, '2024-01-03 23:32:35', '2024-12-04 19:49:41'),
(7, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/rRKnHrE3YDportada_punay.jpg', 'monthly/NJW9wXtI7aportada_punay.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', '2024-01-27', '2024-01-28', NULL, NULL, NULL, '2024-01-03 23:37:15', '2024-12-04 19:49:41'),
(8, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/MH3gAE3u5E425829311_875001341301995_2193604954947105254_n.jpg', 'monthly/u8prrJVf1z425829311_875001341301995_2193604954947105254_n.jpg', 0, 'Camping', 'Moderada - Alta', 75.00, 70.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-02-10', '2024-02-11', NULL, NULL, NULL, '2024-02-07 18:15:38', '2024-12-04 19:49:41'),
(9, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/y9w43II7rGcampingchimborazo_1707347932653.jpeg', 'monthly/XtCJgfjO2lcampingchimborazo_1707347932653.jpeg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', '2023-02-10', '2023-02-11', NULL, NULL, NULL, '2024-02-07 18:19:36', '2024-12-04 19:49:41'),
(10, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/8KLp77vu9ncampingchimborazo_1707347932653.jpeg', 'monthly/cJBDADTXnrcampingchimborazo_1707347932653.jpeg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, Me gustaría información de la ruta al Puñay', '2024-02-10', '2024-02-11', NULL, NULL, NULL, '2024-02-07 18:27:55', '2024-12-04 19:49:41'),
(11, 'VISITANDO EL CRATER DE UN VOLCÁN', 'QUILOTOA', '🏕️ ¡Descubre la magia del cráter del volcán Quilotoa en nuestro camping de dos días y una noche! 🌋⛺️\r\n\r\n🌄 Sumérgete en la belleza natural de este volcán extinto y disfruta de vistas impresionantes. 🌈🌌\r\n\r\n🥾 Explora senderos escénicos, admira la majestuosidad del cráter y conecta con la energía de la naturaleza. 🌿🌞\r\n\r\n✨ Vive una experiencia única en el corazón de los Andes, rodeado de paisajes cautivadores y tranquilidad absoluta. ¡No hay mejor manera de escapar de la rutina! 🏞️🌿\r\n\r\n¡Únete a nosotros en esta aventura inolvidable en el cráter del volcán Quilotoa! ¡Reserva ahora y vive una experiencia que te dejará sin aliento! 🌋', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogara, Charla Astronómica.', 'monthly/8RE7MqqrVIWhatsApp Image 2024-02-07 at 6.36.41 PM.jpeg', 'monthly/9v7RVDCCh7WhatsApp Image 2024-02-07 at 6.36.41 PM.jpeg', 0, 'Full Day', 'Moderada - Facil', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría reservar mi cupo para la ruta al Quilotoa', '2024-02-12', '2024-02-12', NULL, NULL, NULL, '2024-02-07 18:37:49', '2024-12-04 19:49:41'),
(12, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/wnxJUtV2WJ425829311_875001341301995_2193604954947105254_n.jpg', 'monthly/KD3tzC1eOc425829311_875001341301995_2193604954947105254_n.jpg', 0, 'Camping', 'Moderada - Alta', 75.00, 70.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-02-17', '2024-02-18', NULL, NULL, NULL, '2024-02-07 18:49:35', '2024-12-04 19:49:41'),
(13, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/KWPcsS0eUjcampingchimborazo_1708033685264.jpeg', 'monthly/9AhFzR2uzbcampingchimborazo_1708033685264.jpeg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, Me gustaría información de la ruta al Puñay', '2024-02-24', '2024-02-25', NULL, NULL, NULL, '2024-02-07 18:58:37', '2024-12-04 19:49:41'),
(16, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AZUL', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Azul! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Azul! 🏞️🛍️', 'Guía, Transporte, Carpa, Aislante térmico, sleeping , Merienda sábado, Desayuno Domingo, Ticket de entrada, Charla sobre constelaciones', 'monthly/5v5sEfFi19Imagen para redes Sociales Viaje foto sacramento (1).png', 'monthly/709rKf5kjBImagen para redes Sociales Viaje foto sacramento.png', 0, 'Camping', 'Moderada - Alta', 70.00, 65.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-02-17', '2024-02-18', NULL, NULL, NULL, '2024-02-15 16:54:50', '2024-12-04 19:49:41'),
(17, 'AGUAS TERMALES DEL CHIMBORAZO +', 'Laguna Congelada Carihuairazo', '¡Ven y disfruta de una experiencia única en los Andes ecuatorianos con nuestro tour de 2 días! 🌋🏞️🌡️ Sumérgete en las aguas termales del majestuoso Volcán Chimborazo y visita la impresionante Laguna Congelada del Carihuairazo. 🏊❄️ Después de un día lleno de aventuras, descansa en nuestro acogedor refugio de montaña rodeado de paisajes increíbles. 🏕️🌟 ¡No pierdas la oportunidad de vivir una experiencia única en la naturaleza! Reserva tu lugar ahora. 🙌🌄🌌', 'Transporte desde Riobamba, Desayuno Sábado, Box Lounch Sábado Desayuno, Cena Sábado, Desayuno Domingo, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Guianza, Costo de Ingreso al Carihuirazo, Costo de Ingreso a Aguas Termales.', 'monthly/kbqt5fZficRecurso-19-4.png', 'monthly/xB059mn46uRecurso-19-4.png', 0, 'Camping', 'Moderada', 35.00, 40.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola Me gustaría reservar un cupo para el Carihuairazo', '2024-03-09', '2024-03-10', NULL, NULL, NULL, '2024-02-16 18:01:40', '2024-12-04 19:49:41'),
(18, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/cMpG5HoAj3campingchimborazo_1707347932653.jpeg', 'monthly/3or3UsNHHYcampingchimborazo_1707347932653.jpeg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, Me gustaría información de la ruta al Puñay', '2024-03-09', '2024-03-10', NULL, NULL, NULL, '2024-02-16 18:05:35', '2024-12-04 19:49:41'),
(19, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/G799py4if9425829311_875001341301995_2193604954947105254_n.jpg', 'monthly/lOrnAZY2UQ425829311_875001341301995_2193604954947105254_n.jpg', 0, 'Camping', 'Moderada - Alta', 75.00, 70.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-03-16', '2024-03-17', NULL, NULL, NULL, '2024-02-16 18:08:30', '2024-12-04 19:49:41'),
(20, 'Camping Sobre Las Nubes', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/Gv7572skzucampingchimborazo_1707347932653.jpeg', 'monthly/H74HpzQWiLcampingchimborazo_1707347932653.jpeg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, Me gustaría información de la ruta al Puñay', '2024-03-23', '2024-03-24', NULL, NULL, NULL, '2024-02-16 18:19:43', '2024-12-04 19:49:41'),
(21, 'VISITANDO EL CRATER DE UN VOLCÁN', 'QUILOTOA', '🏕️ ¡Descubre la magia del cráter del volcán Quilotoa en nuestro campng de dos días y una noche! 🌋⛺️\r\n\r\n🌄 Sumérgete en la belleza natural de este volcán extinto y disfruta de vistas impresionantes. 🌈🌌\r\n\r\n🥾 Explora senderos escénicos, admira la majestuosidad del cráter y conecta con la energía de la naturaleza. 🌿🌞\r\ni\r\n✨ Vive una experiencia única en el corazón de los Andes, rodeado de paisajes cautivadores y tranquilidad absoluta. ¡No hay mejor manera de escapar de la rutina! 🏞️🌿\r\n\r\n¡Únete a nosotros en esta aventura inolvidable en el cráter del volcán Quilotoa! ¡Reserva ahora y vive una experiencia que te dejará sin aliento! 🌋', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogara, Charla Astronómica.', 'monthly/JW8Rsz5xyG320quilotoa-lake-ecuador.jpg', 'monthly/DtDf8labvC320quilotoa-lake-ecuador.jpg', 0, 'Camping', 'Moderada - Facil', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría reservar mi cupo para la ruta al Quilotoa', '2024-05-25', '2024-05-26', NULL, NULL, NULL, '2024-04-06 21:59:15', '2024-12-04 19:49:41'),
(22, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AZUL', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Azul! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Azul! 🏞️🛍️', 'Guía, Transporte, Carpa, Aislante térmico, sleeping , Merienda sábado, Desayuno Domingo, Ticket de entrada, Charla sobre constelaciones', 'monthly/MTnKgk7xffimages.jpg', 'monthly/kpxMp8iv9Oimages.jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-04-13', '2024-04-14', NULL, NULL, NULL, '2024-04-06 22:03:44', '2024-12-04 19:49:41'),
(23, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/CCWdMv3O4Lsitemgr_photo_34246.jpg', 'monthly/ArWH5vkHPhsitemgr_photo_34246.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', '2024-04-13', '2024-04-14', NULL, NULL, NULL, '2024-04-06 22:07:06', '2024-12-04 19:49:41'),
(24, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/RDtd9eo4O9images (1).jpg', 'monthly/QRuw1zaU6Oimages (1).jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-04-27', '2024-04-28', NULL, NULL, NULL, '2024-04-06 22:25:09', '2024-12-04 19:49:41'),
(25, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/aRDwY8VILZsitemgr_photo_34246.jpg', 'monthly/CDzWqMJMTVsitemgr_photo_34246.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', '2024-04-27', '2024-04-28', NULL, NULL, NULL, '2024-04-06 22:30:03', '2024-12-04 19:49:41'),
(26, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/tfVOjkD5Oysitemgr_photo_34246.jpg', 'monthly/QwQ0Tq6ghxsitemgr_photo_34246.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', '2024-05-03', '2024-05-04', NULL, NULL, NULL, '2024-04-06 22:31:58', '2024-12-04 19:49:41'),
(27, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/pi7wNS86jPsitemgr_photo_34246.jpg', 'monthly/W9wm9l07wksitemgr_photo_34246.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', '2024-05-18', '2024-05-19', NULL, NULL, NULL, '2024-04-06 22:33:45', '2024-12-04 19:49:41'),
(28, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/ysSAPxdehUsitemgr_photo_34246.jpg', 'monthly/Ng9WyQLGZAsitemgr_photo_34246.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', '2024-05-25', '2024-05-26', NULL, NULL, NULL, '2024-04-06 22:35:02', '2024-12-04 19:49:41'),
(29, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/7QJhClyDYuimages (1).jpg', 'monthly/6SfXdPcW4pimages (1).jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-05-03', '2024-05-04', NULL, NULL, NULL, '2024-04-06 22:38:31', '2024-12-04 19:49:41'),
(30, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/5HgV2YmSC6images (1).jpg', 'monthly/xcJMX820mzimages (1).jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-05-11', '2024-05-12', NULL, NULL, NULL, '2024-04-06 22:39:06', '2024-12-04 19:49:41'),
(31, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AZUL', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Azul! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Azul! 🏞️🛍️', 'Guía, Transporte, Carpa, Aislante térmico, sleeping , Merienda sábado, Desayuno Domingo, Ticket de entrada, Charla sobre constelaciones', 'monthly/2sEI2032Nkimages (2).jpg', 'monthly/cFuTU8FOI9images (2).jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-05-11', '2024-05-12', NULL, NULL, NULL, '2024-04-06 22:41:59', '2024-12-04 19:49:41'),
(32, 'AGUAS TERMALES DEL CHIMBORAZO +', 'Laguna Congelada Carihuairazo', '¡Ven y disfruta de una experiencia única en los Andes ecuatorianos con nuestro tour de 2 días! 🌋🏞️🌡️ Sumérgete en las aguas termales del majestuoso Volcán Chimborazo y visita la impresionante Laguna Congelada del Carihuairazo. 🏊❄️ Después de un día lleno de aventuras, descansa en nuestro acogedor refugio de montaña rodeado de paisajes increíbles. 🏕️🌟 ¡No pierdas la oportunidad de vivir una experiencia única en la naturaleza! Reserva tu lugar ahora. 🙌🌄🌌', 'Transporte desde Riobamba, Desayuno Sábado, Box Lounch Sábado Desayuno, Cena Sábado, Desayuno Domingo, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Guianza, Costo de Ingreso al Carihuirazo, Costo de Ingreso a Aguas Termales.', 'monthly/2WEmWX2kIfimages (3).jpg', 'monthly/iP6JdC4sKximages (3).jpg', 0, 'Camping', 'Moderada', 35.00, 30.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría tener información para la ruta al Carihuairazo. Vi esto en la web', '2024-05-25', '2024-06-25', NULL, NULL, NULL, '2024-04-06 22:47:32', '2024-12-04 19:49:41'),
(33, 'AGUAS TERMALES DEL CHIMBORAZO +', 'Laguna Congelada Carihuairazo', '¡Ven y disfruta de una experiencia única en los Andes ecuatorianos con nuestro tour de 2 días! 🌋🏞️🌡️ Sumérgete en las aguas termales del majestuoso Volcán Chimborazo y visita la impresionante Laguna Congelada del Carihuairazo. 🏊❄️ Después de un día lleno de aventuras, descansa en nuestro acogedor refugio de montaña rodeado de paisajes increíbles. 🏕️🌟 ¡No pierdas la oportunidad de vivir una experiencia única en la naturaleza! Reserva tu lugar ahora. 🙌🌄🌌', 'Guianza', 'monthly/YB1OAILipDimages (3).jpg', 'monthly/TlpXNv5fZrimages (3).jpg', 0, 'Full Day', 'Moderada', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría tener información para la ruta al Carihuairazo. Vi esto en la web', '2024-04-20', '2024-04-20', NULL, NULL, NULL, '2024-04-06 22:48:55', '2024-12-04 19:49:41'),
(34, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/zUVJ4ttdjLIMG_20220709_173809.jpg', 'monthly/bSsbHdE59nIMG_20220709_173817.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría información de la ruta de su catalogo hacia el Puñay', '2024-05-04', '2024-05-05', NULL, NULL, NULL, '2024-05-01 08:45:06', '2024-12-04 19:49:41'),
(35, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/HsEhz2VysRIMG_20220326_121240.jpg', 'monthly/KI4cZwcREjIMG_20220326_151859.jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría información de la ruta de su catalogo hacia el Altar', '2024-05-04', '2024-05-05', NULL, NULL, NULL, '2024-05-01 08:47:15', '2024-12-04 19:49:41'),
(36, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/NVHZapQ8qw450299790_988842333251228_7757448338352069609_n.jpg', 'monthly/CVmCYhueIk450299790_988842333251228_7757448338352069609_n.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-08-03', '2024-07-04', NULL, NULL, NULL, '2024-07-25 07:47:19', '2024-12-04 19:49:41'),
(37, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/pQ3u9rJyb5450299790_988842333251228_7757448338352069609_n.jpg', 'monthly/wqmJIasqOz450299790_988842333251228_7757448338352069609_n.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-08-09', '2024-08-10', NULL, NULL, NULL, '2024-07-25 07:48:20', '2024-12-04 19:49:41'),
(38, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/fDr3bnBjxj450299790_988842333251228_7757448338352069609_n.jpg', 'monthly/6gTr6e2rYc450299790_988842333251228_7757448338352069609_n.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-08-10', '2024-08-11', NULL, NULL, NULL, '2024-07-25 07:48:34', '2024-12-04 19:49:41'),
(39, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/l7q3YpOglW450299790_988842333251228_7757448338352069609_n.jpg', 'monthly/eFjEikdVQO450299790_988842333251228_7757448338352069609_n.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-08-17', '2024-08-18', NULL, NULL, NULL, '2024-07-25 07:48:47', '2024-12-04 19:49:41'),
(40, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/BcraXus2s0450299790_988842333251228_7757448338352069609_n.jpg', 'monthly/uukx7a9qPv450299790_988842333251228_7757448338352069609_n.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-08-24', '2024-08-25', NULL, NULL, NULL, '2024-07-25 07:49:01', '2024-12-04 19:49:41'),
(41, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/UsZ9MXN0vi450299790_988842333251228_7757448338352069609_n.jpg', 'monthly/olUntvXjAU450299790_988842333251228_7757448338352069609_n.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-08-31', '2024-09-01', NULL, NULL, NULL, '2024-07-25 07:49:27', '2024-12-04 19:49:41'),
(42, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/F9VUDi7BBQ450299790_988842333251228_7757448338352069609_n.jpg', 'monthly/FYktNqSMGo450299790_988842333251228_7757448338352069609_n.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-09-14', '2024-09-15', NULL, NULL, NULL, '2024-07-25 07:50:04', '2024-12-04 19:49:41'),
(43, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/CyRCFxj0S2450299790_988842333251228_7757448338352069609_n.jpg', 'monthly/BpmnFCfpXb450299790_988842333251228_7757448338352069609_n.jpg', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-09-28', '2024-09-29', NULL, NULL, NULL, '2024-07-25 07:50:15', '2024-12-04 19:49:41'),
(44, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guía, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/FQR9TDZANS449256427_978800150922113_5055352100288203854_n.jpg', 'monthly/4ekgiNgggc449256427_978800150922113_5055352100288203854_n.jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola deseo información del Puñay. Vi esto en la página web', '2024-08-09', '2024-08-10', NULL, NULL, NULL, '2024-07-25 08:06:32', '2024-12-04 19:49:41'),
(45, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/oQl71PVYNA449256427_978800150922113_5055352100288203854_n.jpg', 'monthly/CuFzIEadIy449256427_978800150922113_5055352100288203854_n.jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 220.00, 200.00, 20.00, '0997159098', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-08-17', '2024-08-18', NULL, NULL, NULL, '2024-07-25 08:10:44', '2024-12-04 19:49:41'),
(46, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/N1Cf4JWLI0449256427_978800150922113_5055352100288203854_n.jpg', 'monthly/YIK7cz0YYQ449256427_978800150922113_5055352100288203854_n.jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-08-17', '2024-08-18', NULL, NULL, NULL, '2024-07-25 08:11:14', '2024-12-04 19:49:41'),
(47, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/lGbiawpdEW449256427_978800150922113_5055352100288203854_n.jpg', 'monthly/bQEQtJF5TF449256427_978800150922113_5055352100288203854_n.jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-08-31', '2024-09-01', NULL, NULL, NULL, '2024-07-25 08:11:43', '2024-12-04 19:49:41'),
(48, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/z3TJOx3L66449256427_978800150922113_5055352100288203854_n.jpg', 'monthly/O2tWqRs7yZ449256427_978800150922113_5055352100288203854_n.jpg', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-09-21', '2024-09-22', NULL, NULL, NULL, '2024-07-25 08:12:26', '2024-12-04 19:49:41'),
(49, 'GARGANTA DE FUEGO', 'TUNGURAHUA', '¡Únete a nosotros en una aventura inolvidable en el Volcán Tungurahua! 🌋🏞️ Disfruta de paisajes espectaculares y descansa en el refugio de montaña después de un día de exploración. 🏕️🌟 Este tour de 2 días te permitirá sumergirte en la naturaleza y admirar la majestuosidad del volcán. ¡No te lo pierdas! Reserva tu lugar ahora. 🙌🌄🌌', 'Transporte desde Baños, Cena Sábado, Desayuno Domingo, Estadía en el refugio, Sleeping, Casco, Crampones, Guia, Recuerdo de Ruta', 'monthly/MuDdPPcWVz299736743_846413343400543_1895554402797904953_n.jpg', 'monthly/xYVnDTFdAn299736743_846413343400543_1895554402797904953_n.jpg', 0, 'Refugio', 'Alta', 99.00, 85.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola ayuda con info del Tungurahua', '2024-08-24', '2024-08-25', NULL, NULL, NULL, '2024-07-25 08:26:12', '2024-12-04 19:49:41'),
(50, 'GARGANTA DE FUEGO', 'TUNGURAHUA', '¡Únete a nosotros en una aventura inolvidable en el Volcán Tungurahua! 🌋🏞️ Disfruta de paisajes espectaculares y descansa en el refugio de montaña después de un día de exploración. 🏕️🌟 Este tour de 2 días te permitirá sumergirte en la naturaleza y admirar la majestuosidad del volcán. ¡No te lo pierdas! Reserva tu lugar ahora. 🙌🌄🌌', 'Transporte desde Baños, Cena Sábado, Desayuno Domingo, Estadía en el refugio, Sleeping, Casco, Crampones, Guia, Recuerdo de Ruta', 'monthly/BXdgqEc6yc299736743_846413343400543_1895554402797904953_n.jpg', 'monthly/I9mCkkGZTj299736743_846413343400543_1895554402797904953_n.jpg', 0, 'Refugio', 'Alta', 99.00, 85.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola ayuda con info del Tungurahua', '2024-09-21', '2024-09-22', NULL, NULL, NULL, '2024-07-25 08:29:41', '2024-12-04 19:49:41'),
(51, 'Free Explorer', 'Carihuairazo Laguna Congelada', '¿Listo para una experiencia inolvidable? Ven y únete a nuestro Full Day en la espectacular Laguna Congelada del Carihuairazo. 🌟\r\nEste mágico lugar te espera con paisajes de ensueño, aire puro y una sensación de libertad que no tiene precio. 🌄✨ Camina entre nevados, respira la naturaleza en su estado más puro y déjate sorprender por la belleza de la laguna congelada. 🌬️❄️\r\n¡Y lo mejor de todo! Este evento es un Free Explorer, es decir, ¡no tiene costo! 💸🚫', 'Guía certificado, Fotos de ruta.', 'monthly/xxSnyhJBk6337875217_232882459267836_4010572375816881417_n.jpg', 'monthly/E4JNV0jlMV337875217_232882459267836_4010572375816881417_n.jpg', 0, 'Full Day', 'Alta', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola ayuda con info del Free explorer', '2024-08-11', '2024-08-11', NULL, NULL, NULL, '2024-07-25 08:40:39', '2024-12-04 19:49:41'),
(52, 'EXPLORANDO', 'ILINIZA NORTE', '¡Sumérgete en la majestuosidad del Illiniza Norte en nuestro tour de un día! 🌄🏃\r\n🏞️ Explora un volcán: Descubre los secretos y misterios que alberga el Illiniza Norte 🌋.\r\n📸 Captura momentos únicos: Inmortaliza la aventura y comparte recuerdos inolvidables 📸.\r\n💪 ¡Prepárate para una experiencia de aventura y desafío en el majestuoso Illiniza Norte! Reserva ahora y vive una experiencia que recordarás toda la vida. 🗓️🏞️ #IllinizaNorte #FullDay #Andes #Aventura #Naturaleza #TurismoEcuador #EcuadorNature #AventuraEnLosAndes #Illiniza #TourAndino', 'Transporte desde Chaupi, Charla sobre la fauna y flora del lugar, Ingreso Parque Nacional, Casco de montaña, Cuerda de apoyo, Guía', 'monthly/LCWSFQgAUY435678691_920755703393225_7245249467773233213_n.jpg', 'monthly/GicIhEbgTN435678691_920755703393225_7245249467773233213_n.jpg', 0, 'Full Day', 'Moderada - Alta', 50.00, 45.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola ayuda con info de Iliniza norte. Vi esto en la web', '2024-08-18', '2024-08-18', NULL, NULL, NULL, '2024-07-25 08:47:14', '2024-12-04 19:49:41'),
(53, 'EXPLORANDO', 'VOLCÁN CORAZÓN', '¿Listo para explorar el Corazón? ¡No el de ella, sino el majestuoso Volcán Corazón! 😉💖\r\nÚnete a nuestro increíble Full Day y vive una experiencia única en uno de los destinos más espectaculares de Ecuador. 🌟 Caminaremos por senderos impresionantes, disfrutaremos de vistas panorámicas y sentiremos la adrenalina de estar en la cima. 🌄✨\r\nEste viaje es perfecto para aventureros y amantes de la naturaleza. Prepárate para conquistar el Corazón y llevarte recuerdos inolvidables. 🥾🌿\r\n¿Qué esperas? ¡Ven y descubre la magia del Volcán Corazón con nosotros! 🌍❤️\r\n#ExploraElCorazón #AventuraEnElVolcán', 'Guía de ruta, Permiso de ingreso, Transporte desde el Chaupi, Casco de montaña, Almuerzo', 'monthly/LENiT4LufsIMG_20230521_080242.jpg', 'monthly/yT1n2sXYLyIMG_20230521_080242.jpg', 0, 'Full Day', 'Moderada - Alta', 45.00, 40.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola me ayudas con info del Corazón. Vi esto en la web', '2024-08-25', '2024-08-25', NULL, NULL, NULL, '2024-07-25 09:07:24', '2024-12-04 19:49:41'),
(54, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/hPfvvuAL2mr6UZtZ1ZTzIPF20poxIaDiseдo sin tбtulo (9).png', 'monthly/HgFOyrUJtTr6UZtZ1ZTzIPF20poxIaDiseдo sin tбtulo (9).png', 0, 'Camping', 'Moderada - Alta', 75.00, 70.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-11-01', '2024-11-02', NULL, NULL, NULL, '2024-10-24 10:23:24', '2024-12-04 19:49:41'),
(55, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/yEang1BTCar6UZtZ1ZTzIPF20poxIaDiseдo sin tбtulo (9).png', 'monthly/kGJSI8nCEnr6UZtZ1ZTzIPF20poxIaDiseдo sin tбtulo (9).png', 0, 'Camping', 'Moderada - Alta', 75.00, 70.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-11-16', '2024-11-17', NULL, NULL, NULL, '2024-10-24 10:23:51', '2024-12-04 19:49:41'),
(56, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 'monthly/gixsznh6Hyr6UZtZ1ZTzIPF20poxIaDiseдo sin tбtulo (9).png', 'monthly/CHPnseMI7dr6UZtZ1ZTzIPF20poxIaDiseдo sin tбtulo (9).png', 0, 'Camping', 'Moderada - Alta', 75.00, 70.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', '2024-11-30', '2024-12-01', NULL, NULL, NULL, '2024-10-24 10:24:19', '2024-12-04 19:49:41');
INSERT INTO `monthly_tours` (`monthly_tour_id`, `tour_name`, `tour_destiny`, `description`, `include`, `img_1`, `img_2`, `state`, `type`, `dificulty`, `person_cost`, `group_cost`, `discount`, `income`, `egress`, `utility`, `contact_phone`, `messagge_for_contact`, `departure_date`, `return_date`, `varchar_1`, `varchar_2`, `varchar_3`, `created_at`, `updated_at`) VALUES
(57, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/BZpSVhKxy1cSwEqsl8jprY9rd5maFrDiseдo sin tбtulo (11).png', 'monthly/aNJtgtHLowcSwEqsl8jprY9rd5maFrDiseдo sin tбtulo (11).png', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Puñayvi esta publicación en la web', '2024-11-01', '2024-11-02', NULL, NULL, NULL, '2024-10-24 10:26:05', '2024-12-04 19:49:41'),
(58, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/LHViyfZTgUcSwEqsl8jprY9rd5maFrDiseдo sin tбtulo (11).png', 'monthly/ZuRYBTqP9QcSwEqsl8jprY9rd5maFrDiseдo sin tбtulo (11).png', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Puñayvi esta publicación en la web', '2024-11-02', '2024-11-03', NULL, NULL, NULL, '2024-10-24 10:26:32', '2024-12-04 19:49:41'),
(59, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/6xAa39OifNcSwEqsl8jprY9rd5maFrDiseдo sin tбtulo (11).png', 'monthly/yqdWEtqs1gcSwEqsl8jprY9rd5maFrDiseдo sin tбtulo (11).png', 0, 'Camping', 'Moderada', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola, me ayudan con informacion para el camping en el Puñayvi esta publicación en la web', '2024-11-23', '2024-11-24', NULL, NULL, NULL, '2024-10-24 10:26:58', '2024-12-04 19:49:41'),
(60, 'FREE EXPLORER', 'Carihuairazo - Gratis', '¡Ven y disfruta de una experiencia única en los Andes ecuatorianos con nuestro tour!   ¡No pierdas la oportunidad de vivir una experiencia única en la naturaleza! Reserva tu lugar ahora. 🙌🌄🌌', 'Guianza - Recuerdo de ruta', 'monthly/1jBvP30rkLhBpLK4Ibb8NgjCHnciN9Diseдo sin tбtulo (15).png', 'monthly/VUlIaXrjhvhBpLK4Ibb8NgjCHnciN9Diseдo sin tбtulo (15).png', 0, 'Full Day', 'Moderada', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría tener información para la ruta al Carihuairazo. Vi esto en la web', '2024-11-03', '2024-11-03', NULL, NULL, NULL, '2024-10-24 10:32:31', '2024-12-04 19:49:41'),
(61, 'EL ALTAR DESDE OTRA PERSPECTIVA', 'ALTAR - LAGUNA AZUL', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Azul! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Azul! 🏞️🛍️', 'Guía, Transporte, Carpa, Aislante térmico, sleeping , Merienda sábado, Desayuno Domingo, Ticket de entrada, Charla sobre constelaciones', 'monthly/UMilj6gH8ZlTmUMZ5z7TImagen para redes Sociales Viaje foto sacramento.png', 'monthly/ll07YSkKvDlTmUMZ5z7TImagen para redes Sociales Viaje foto sacramento.png', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría tener información para la ruta a LA LAGUNA AZUL. Vi esto en la web', '2024-11-09', '2024-11-10', NULL, NULL, NULL, '2024-10-24 10:53:42', '2024-12-04 19:49:41'),
(62, 'EL ALTAR DESDE OTRA PERSPECTIVA', 'ALTAR - LAGUNA AZUL', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Azul! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Azul! 🏞️🛍️', 'Guía, Transporte, Carpa, Aislante térmico, sleeping , Merienda sábado, Desayuno Domingo, Ticket de entrada, Charla sobre constelaciones', 'monthly/q1eeLwygtWlTmUMZ5z7TImagen para redes Sociales Viaje foto sacramento.png', 'monthly/PMMxjUWRNVlTmUMZ5z7TImagen para redes Sociales Viaje foto sacramento.png', 0, 'Camping', 'Moderada - Alta', 80.00, 75.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola me gustaría tener información para la ruta a LA LAGUNA AZUL. Vi esto en la web', '2024-11-30', '2024-12-01', NULL, NULL, NULL, '2024-10-24 10:54:08', '2024-12-04 19:49:41'),
(63, 'UN ATARDECER DIFERENTE', 'YAGUI URCO', '¡Vive una experiencia única en el mirador Yagüi Urco, donde las nubes se convierten en tu paisaje! ☁️⛰️ Disfruta de dos días de aventura acampando en este mágico lugar, con vistas espectaculares que te dejarán sin aliento. 🌌✨ Sumérgete en la tranquilidad de la naturaleza mientras observas el mundo desde lo alto, rodeado de montañas y cielos impresionantes. 🌲🔥\r\n\r\nUna aventura perfecta para quienes buscan desconectarse y disfrutar de un escenario natural incomparable. 🥾🌅 ¡Reserva tu lugar y vive una noche en las nubes! 🎒💫\r\n\r\n#YagüiUrco #CampingEcuador #MiradorDeLasNubes #AventuraAndina #ConexiónConLaNaturaleza #ExploraEcuador', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 'monthly/kPHthkgmi724-10-2024_10-58-16.png', 'monthly/0LK0vQA3xV24-10-2024_10-58-16.png', 0, 'Camping', 'Facil', 40.00, 35.00, 0.00, 0.00, 0.00, 0.00, '0961119670', 'Hola Estoy interesado en la ruta a Yagui Urco vi esto en la web', '2024-11-09', '2024-11-10', NULL, NULL, NULL, '2024-10-24 11:01:51', '2024-12-04 19:49:41'),
(64, 'EXPLORANDO', 'ILINIZA NORTE', '¡Sumérgete en la majestuosidad del Illiniza Norte en nuestro tour de un día! 🌄🏃\r\n🏞️ Explora un volcán: Descubre los secretos y misterios que alberga el Illiniza Norte 🌋.\r\n📸 Captura momentos únicos: Inmortaliza la aventura y comparte recuerdos inolvidables 📸.\r\n💪 ¡Prepárate para una experiencia de aventura y desafío en el majestuoso Illiniza Norte! Reserva ahora y vive una experiencia que recordarás toda la vida. 🗓️🏞️ #IllinizaNorte #FullDay #Andes #Aventura #Naturaleza #TurismoEcuador #EcuadorNature #AventuraEnLosAndes #Illiniza #TourAndino', 'Transporte desde Chaupi, Charla sobre la fauna y flora del lugar, Ingreso Parque Nacional, Casco de montaña, Cuerda de apoyo, Guía', 'monthly/ZQBblNremxX1SOTSa76aImagen para redes Sociales Viaje foto sacramento (10).png', 'monthly/6ZAvdN23HCX1SOTSa76aImagen para redes Sociales Viaje foto sacramento (10).png', 0, 'Full Day', 'Alta', 50.00, 45.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola ayuda con info de Iliniza norte. Vi esto en la web', '2024-11-10', '2024-11-10', NULL, NULL, NULL, '2024-10-24 11:19:56', '2024-12-04 19:49:41'),
(65, 'GARGANTA DE FUEGO', 'TUNGURAHUA', '¡Únete a nosotros en una aventura inolvidable en el Volcán Tungurahua! 🌋🏞️ Disfruta de paisajes espectaculares y descansa en el refugio de montaña después de un día de exploración. 🏕️🌟 Este tour de 2 días te permitirá sumergirte en la naturaleza y admirar la majestuosidad del volcán. ¡No te lo pierdas! Reserva tu lugar ahora. 🙌🌄🌌', 'Transporte desde Baños, Cena Sábado, Desayuno Domingo, Estadía en el refugio, Sleeping, Casco, Crampones, Guia, Recuerdo de Ruta', 'monthly/1Ze85phUS3BTXDK1Q2S3jLxa7SGRLHDiseдo sin tбtulo (14).png', 'monthly/EaxeKcWXTkBTXDK1Q2S3jLxa7SGRLHDiseдo sin tбtulo (14).png', 0, 'Refugio', 'Alta', 90.00, 85.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola ayuda con info del Tungurahua. Vi esto en la web', '2024-11-16', '2024-11-17', NULL, NULL, NULL, '2024-10-24 11:21:54', '2024-12-04 19:49:41'),
(66, 'VISITANDO EL CRATER DE UN VOLCÁN', 'QUILOTOA', '🏕️ ¡Descubre la magia del cráter del volcán Quilotoa en nuestro camping de dos días y una noche! 🌋⛺️\r\n\r\n🌄 Sumérgete en la belleza natural de este volcán extinto y disfruta de vistas impresionantes. 🌈🌌\r\n\r\n🥾 Explora senderos escénicos, admira la majestuosidad del cráter y conecta con la energía de la naturaleza. 🌿🌞\r\n\r\n✨ Vive una experiencia única en el corazón de los Andes, rodeado de paisajes cautivadores y tranquilidad absoluta. ¡No hay mejor manera de escapar de la rutina! 🏞️🌿\r\n\r\n¡Únete a nosotros en esta aventura inolvidable en el cráter del volcán Quilotoa! ¡Reserva ahora y vive una experiencia que te dejará sin aliento! 🌋', 'Guia, Ticket de ingreso, Almuerzo.', 'monthly/gBJVEYhuwMVtZT0OHbynu1GSKL1ySxDiseдo sin tбtulo (17).png', 'monthly/wOWqUJLeSQVtZT0OHbynu1GSKL1ySxDiseдo sin tбtulo (17).png', 0, 'Full Day', 'Alta', 25.00, 20.00, 0.00, 0.00, 0.00, 0.00, '0997159098', 'Hola ayuda con info del Quilotoa Full Day. Vi esto en la web', '2024-11-17', '2024-11-17', NULL, NULL, NULL, '2024-10-24 11:24:59', '2024-12-04 19:49:41');

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
('09358f7897d52c8f7b48df2f787f417ffd1ca51af1b2b92a2f64c6b86cb19bedb7782ef28a3438f0', 1, 1, 'authToken', '[]', 1, '2024-08-21 07:34:25', '2024-08-21 07:34:25', '2024-09-21 07:34:25'),
('0b4411ffc75c278bb831637d5b17fbf62bc9e9321bdb40837536362c5ec216c77c22400f088c4214', 5, 1, 'authToken', '[]', 0, '2024-12-04 21:50:13', '2024-12-04 21:50:13', '2025-01-04 21:50:13'),
('0e904f24544ebd48f50ffa224cd73e461e0a3662d5eb06cbce23d2d7ce0b1e01d23d5ef2e03f2299', 1, 1, 'authToken', '[]', 0, '2024-12-04 19:29:42', '2024-12-04 19:29:42', '2025-01-04 19:29:42'),
('15d9937210833db43a9a105733759aa7208fe60bb9601a95c32d0636d6ef88b77f2b06f7c26cc994', 1, 1, 'authToken', '[]', 0, '2024-08-25 18:48:52', '2024-08-25 18:48:52', '2024-09-25 18:48:52'),
('191f3ea30af4876417125b0c019a842eba746e743643d26e5bba59f7a441d67c96d3e41f56ed1ad2', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:48:13', '2024-08-21 07:48:13', '2024-09-21 07:48:13'),
('1ab21fe71a57a335e923917d64cc542cdcb75f0df8183eec65e4d4bec1153896a1102cf2e0a11f77', 1, 1, 'authToken', '[]', 0, '2024-05-28 22:30:12', '2024-05-28 22:30:12', '2024-06-28 22:30:12'),
('1cbbb27553e9f879e458f749a7127d5cde007f2c56f6481793e0a3e1f77e0775ba68b7b91309a7c8', 1, 1, 'authToken', '[]', 1, '2024-05-02 16:14:27', '2024-05-02 16:14:27', '2024-06-02 16:14:27'),
('20647cf55d100d0e744f4163c82c52bd3684b2f12b09b0ffa10748c506bb88a36be7b0c6eebd3aaf', 1, 1, 'authToken', '[]', 0, '2024-11-09 23:56:49', '2024-11-09 23:56:49', '2024-12-09 23:56:49'),
('21254f0a905b509c91ee7abc24df81d15cf6d6875913e66868ef2f4dda17449cb99df696ad9a1cb7', 1, 1, 'authToken', '[]', 0, '2024-05-21 15:04:46', '2024-05-21 15:04:46', '2024-06-21 15:04:46'),
('240a6ecd614ee52b352ecd322817af146e74e55da7ac982fd35a356a4d3d325722c60ac4660aa9b9', 2, 1, 'authToken', '[]', 1, '2024-05-02 13:06:58', '2024-05-02 13:06:58', '2024-06-02 13:06:58'),
('244e908a600cf75b181caaf7ad70318b2b113a33a465fd32dbc8d105683d2bd350e4c4203d5da3c7', 1, 1, 'authToken', '[]', 1, '2024-05-02 07:24:55', '2024-05-02 07:24:55', '2024-06-02 07:24:55'),
('24e47e57f313ea1c54349f80f091142783dfd887aeca2d3b01101876da2e2ee54b117f9a4c663f50', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:47:41', '2024-08-21 07:47:41', '2024-09-21 07:47:41'),
('2692af9654751e72b654d1b3d668b0f45b74f7c408f42205e65bf136f3f82dd7fffa120f1595c8c7', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:49:11', '2024-08-21 07:49:11', '2024-09-21 07:49:11'),
('36943266c36bbd2631219212f468fd88bb19d4dc3ddfd422f64c3a5f0a3b84bcae7bb4763a935805', 1, 1, 'authToken', '[]', 1, '2024-05-02 07:37:01', '2024-05-02 07:37:01', '2024-06-02 07:37:01'),
('3972f157022fe054bd6ccc77ab6b2e8d79f841ffa008f16041a6173090c5e45485b07877e9efc257', 1, 1, 'authToken', '[]', 0, '2024-07-25 07:43:24', '2024-07-25 07:43:24', '2024-08-25 07:43:24'),
('3af229832d73acdd0fa74c95ef8a671d20e0b5407b20b27323b55fb9690649c2de32d198a458cb81', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:47:18', '2024-08-21 07:47:18', '2024-09-21 07:47:18'),
('3f730d47425edc4f3c63f4662ecb5aded94e75a055389ce144a56d47a8ec94e80de054cec6c962dd', 1, 1, 'authToken', '[]', 0, '2024-05-01 08:26:42', '2024-05-01 08:26:42', '2024-06-01 08:26:42'),
('43a84bd88623e0cc3a3a8625b7241e34da930e2ba79204a6e9cafea82c47db8f13264057b9b2ade4', 1, 1, 'authToken', '[]', 0, '2024-04-30 13:55:09', '2024-04-30 13:55:09', '2024-05-30 13:55:09'),
('4431c133ffb56fedb17d3c8c46979d85bba9a432052e2592b079b9b07ea7309f2f1491cf36217cd4', 1, 1, 'authToken', '[]', 0, '2024-09-04 08:07:11', '2024-09-04 08:07:11', '2024-10-04 08:07:11'),
('451fcb7afea4964ebdd3fd21967527f79424926d01485895ddd4a7f0dcbe74d3afb47b0d9180a1ad', 1, 1, 'authToken', '[]', 0, '2024-04-30 13:51:00', '2024-04-30 13:51:00', '2024-05-30 13:51:00'),
('4e9478f2adf149521ccbe66e953c2f1da39a7360577281c2fdd8d5deccb9f6f446d1cbe3ca255308', 1, 1, 'authToken', '[]', 0, '2024-10-24 10:18:13', '2024-10-24 10:18:13', '2024-11-24 10:18:13'),
('4f4b0e5dddec9fef2a89c1ad4a03734d13ea3965a13986a3cd43b328d81f78fc7ee5a53c4db08e06', 1, 1, 'authToken', '[]', 0, '2024-08-25 19:25:06', '2024-08-25 19:25:06', '2024-09-25 19:25:06'),
('4fb167d3fa97708295b76b46ec38030bd5eb9ad46a8de5cf150fe64d9595e4a869e7e697fe51b00a', 1, 1, 'authToken', '[]', 0, '2024-08-26 09:31:40', '2024-08-26 09:31:40', '2024-09-26 09:31:40'),
('54a88a2795bd0927cde52a06c76c9a590cc8ac094c41f8af74e078c9238c7a981c2d0574eaea61ed', 2, 1, 'authToken', '[]', 1, '2024-05-02 12:48:12', '2024-05-02 12:48:12', '2024-06-02 12:48:12'),
('55180adb42ef5550958e61e238db7c7516669cbcc94b55a3ffb8d204c371fc9a77564a1a158e4605', 1, 1, 'authToken', '[]', 0, '2024-04-30 08:37:14', '2024-04-30 08:37:14', '2024-05-30 08:37:14'),
('5920d2f9be9ef262636d264baed5af9b239420ba3adc75b4b077afd14425bff57e0038b4c529c28c', 1, 1, 'authToken', '[]', 0, '2024-08-21 08:57:42', '2024-08-21 08:57:42', '2024-09-21 08:57:42'),
('59e6958c6d8267d0ca9c4f254742db3062dd2789fe91b076b835726a09089586b2c05b1badbc6aef', 1, 1, 'authToken', '[]', 1, '2024-11-07 15:37:01', '2024-11-07 15:37:01', '2024-12-07 15:37:01'),
('5ea794bc1d74df40c26f2d4c832184ade35b1086f9fd8842373fe9e6ccb1f150fa98523a847d7d19', 1, 1, 'authToken', '[]', 1, '2024-04-30 16:25:51', '2024-04-30 16:25:51', '2024-05-30 16:25:51'),
('65bec0f5c6626630e17ee405a6ff3492b75ea4f3cc15df6766322ffe7994afd9d83e00e45b7ee7ca', 1, 1, 'authToken', '[]', 0, '2024-05-02 13:11:59', '2024-05-02 13:11:59', '2024-06-02 13:11:59'),
('66d0d3962fb0e42c3d4276a515b3490cc5f6b896b865017f87381b056d14729a9d7f865a4a86d89f', 1, 1, 'authToken', '[]', 0, '2024-11-09 23:35:26', '2024-11-09 23:35:26', '2024-12-09 23:35:26'),
('68e2fa547fe097d03cb5bbc72aaed0900eade8487e2fb26061b5cc8337a730254163c3fd75206962', 1, 1, 'authToken', '[]', 0, '2024-11-15 10:40:53', '2024-11-15 10:40:53', '2024-12-15 10:40:53'),
('68f928c986ad660d55d52b92e39060d441934fe05bf91a8718459772baaa2818266f284a1f8a122c', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:49:58', '2024-08-21 07:49:58', '2024-09-21 07:49:58'),
('6bb4b3ebd2869ce262b979b44cce83406268a5c8715d4d5350ef985c234a8818e378af4beec646f2', 1, 1, 'authToken', '[]', 1, '2024-05-01 09:24:46', '2024-05-01 09:24:46', '2024-06-01 09:24:46'),
('6cd1d833f67f6a29eeb9d3e1f83ba4761d8d7ba59d520e60e1ce7804cacde4db9e491913410915d5', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:38:10', '2024-08-21 07:38:10', '2024-09-21 07:38:10'),
('73dabd0720078acbe94dda06c3ed369cd00ac4c713888e3e173678a83a57bd4655bebd87c92485e0', 1, 1, 'authToken', '[]', 0, '2024-05-22 11:22:27', '2024-05-22 11:22:27', '2024-06-22 11:22:27'),
('7442103b60983ad7758334cdae56d17ccd9723c3238839ed1a16bbcf9d80ace7b7d55e0a5feab996', 1, 1, 'authToken', '[]', 0, '2024-06-11 08:37:36', '2024-06-11 08:37:36', '2024-07-11 08:37:36'),
('747f86e2cddde60190e43e96e1c76ba1a2f9a39cae30b0d5fed5578c1f545ac584e1f2bcf934e22a', 1, 1, 'authToken', '[]', 0, '2024-05-23 09:10:52', '2024-05-23 09:10:52', '2024-06-23 09:10:52'),
('7480ea80b5a17f47af9f43a057971a94c6914e090f5bfad05316941cc37d9592987158b2937f01c7', 1, 1, 'authToken', '[]', 0, '2024-04-30 08:34:51', '2024-04-30 08:34:51', '2024-05-30 08:34:51'),
('77a53c9fadbf529ca1343f8c69fed4325fe57aedb8e776719efae084ac70d0ce60e239bc207e99a0', 1, 1, 'authToken', '[]', 0, '2024-05-20 15:32:52', '2024-05-20 15:32:52', '2024-06-20 15:32:52'),
('78c227c5ebdc0b742a0f11cb5edf99d3c6b31a0ebca7ed366a293d5852ceb816e84f95e77580955c', 1, 1, 'authToken', '[]', 0, '2024-05-15 18:24:43', '2024-05-15 18:24:43', '2024-06-15 18:24:43'),
('85e8179fe57a1b74b81db88b61bd1dd10d3414b5eff114bc929ecf0a105ae7ff18ec08051c79cca2', 1, 1, 'authToken', '[]', 1, '2024-12-04 23:05:19', '2024-12-04 23:05:19', '2025-01-04 23:05:19'),
('8bde7b6d83fbf94f45e82de1e5a93ef860c83c27cd2dc006263103f3f65d990f31ff2e12150ea3d1', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:50:30', '2024-08-21 07:50:30', '2024-09-21 07:50:30'),
('8d8582f60f39a11b4e7fb0358d0a40509ff73a4ccbd6982a1a1aced0843f10684a2ccd25e0bd92e1', 1, 1, 'authToken', '[]', 1, '2024-05-02 11:52:42', '2024-05-02 11:52:42', '2024-06-02 11:52:42'),
('8ec7e9b08b102a3cef4e1d36411a782552cf9ebc04fc125ac10360a8c212b099cb902f5a02a211e4', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:45:50', '2024-08-21 07:45:50', '2024-09-21 07:45:50'),
('8f46cad0c662cb0d5e06fa4c789ac5caa2a3a4c64657201b948f624187fe577f86633e0fddba8589', 1, 1, 'authToken', '[]', 1, '2024-08-21 07:33:54', '2024-08-21 07:33:54', '2024-09-21 07:33:54'),
('905e5564a9e17e6ba27afddeacb8f4a6c59ab4d169d8217c9b378118dfca4b6954cdff4259420a38', 2, 1, 'authToken', '[]', 1, '2024-05-02 12:47:40', '2024-05-02 12:47:40', '2024-06-02 12:47:40'),
('911d3e8a9b25d94fab2fb9deacf204064ecdef8f4527a0867a488dada09938f0c3124e468abed202', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:41:42', '2024-08-21 07:41:42', '2024-09-21 07:41:42'),
('92841190e0f74407783658285e833400033f3390ec4d7833cf71748832e67e687bf3bfcf6cec4d95', 1, 1, 'authToken', '[]', 0, '2024-05-17 16:04:48', '2024-05-17 16:04:48', '2024-06-17 16:04:48'),
('953af40ceb51e4a772f95224249dbe47f3af1941c7c5113c7e9b9d4ff2499d63ab890e36fa48210f', 2, 1, 'authToken', '[]', 0, '2024-04-30 23:13:01', '2024-04-30 23:13:01', '2024-05-30 23:13:01'),
('9861bb763c1ce2911e78a40bf54feb2a4081c24c48cea18f7e4fad8de9bb3d84e5470503bf301f9b', 2, 1, 'authToken', '[]', 0, '2024-05-01 14:31:05', '2024-05-01 14:31:05', '2024-06-01 14:31:05'),
('9d539d36ef93a9dce3bc83e4c0dcda3e584a6b5ba5646fe8eaf9f006776b8d4a88b1b0e89d3e7b83', 2, 1, 'authToken', '[]', 0, '2024-04-30 23:10:07', '2024-04-30 23:10:07', '2024-05-30 23:10:07'),
('9ef6911f28e38d95cd3b274e2a96140097a68f014aac354bd3120b43a4ee23a9c33c6a8d85c9531f', 1, 1, 'authToken', '[]', 1, '2024-04-30 20:30:47', '2024-04-30 20:30:47', '2024-05-30 20:30:47'),
('9f71121898bb356c3ae4745a70e8de7b0cb5ff7e6848d390eadd7cb0ff2c2902928820a7fb05002b', 1, 1, 'authToken', '[]', 0, '2024-08-04 14:10:09', '2024-08-04 14:10:09', '2024-09-04 14:10:09'),
('a1ad9184a8cf4cd560267952a046fa257a450ddb8b2d1945fb47a7736e635f42c7f432e13c55772e', 3, 1, 'authToken', '[]', 0, '2024-05-02 20:25:27', '2024-05-02 20:25:27', '2024-06-02 20:25:27'),
('ae57f715185ac37d6faa2b8bde4139d415c8abd590bb678394c8042fdbe829f5a0eddf4ecaedae5a', 1, 1, 'authToken', '[]', 0, '2024-05-02 20:27:25', '2024-05-02 20:27:25', '2024-06-02 20:27:25'),
('b1baf93a56914d264f93f626c0a7f0367113605187a35ebe31bf411fa800f43c4e0afa446f780c3e', 2, 1, 'authToken', '[]', 0, '2024-05-02 09:14:24', '2024-05-02 09:14:24', '2024-06-02 09:14:24'),
('b3c0ba3b6a6b74afa214b37bfeda557cda19abf5c4106d2d9d39fcb429412c21695d2210a3f1ad9d', 1, 1, 'authToken', '[]', 0, '2024-05-02 20:02:06', '2024-05-02 20:02:06', '2024-06-02 20:02:06'),
('b68185fbe9538e1dba4aaeb3857e3182ef1f8587b3c5e2f767ab71c8de9af561de5404055fbed3a8', 1, 1, 'authToken', '[]', 1, '2024-08-26 09:19:24', '2024-08-26 09:19:24', '2024-09-26 09:19:24'),
('b9a2dfbef150a44c063e53c039b1b57e7dcf848dac89d98eb35270e30aef87d0a3991cb1e7c905db', 2, 1, 'authToken', '[]', 1, '2024-08-26 09:19:46', '2024-08-26 09:19:46', '2024-09-26 09:19:46'),
('bd94ee5ae30d8b1e764798508c06832c7e7d5a6dd02e0a9687d8212afd7bae2a24dddf8b7b53afc5', 1, 1, 'authToken', '[]', 0, '2024-08-21 08:40:48', '2024-08-21 08:40:48', '2024-09-21 08:40:48'),
('c616fe614fb2bff1efbd7ed2786154c01a681966f3ca58d725aed69070788ad30c3f2819de6e7ae7', 1, 1, 'authToken', '[]', 0, '2024-05-11 07:39:04', '2024-05-11 07:39:04', '2024-06-11 07:39:04'),
('c792e900c84fe44e836b8bd9268b50bf545fb41117a21dc96ccb7d0ef8480d23397794381ce44ddc', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:36:35', '2024-08-21 07:36:35', '2024-09-21 07:36:35'),
('cd813579ce792e6d385928a9e12609ccece265bbcdbc1518c2c015a347ab8381e93923010191f0a0', 1, 1, 'authToken', '[]', 0, '2024-08-25 19:18:50', '2024-08-25 19:18:50', '2024-09-25 19:18:50'),
('d0b0487e9b30707325383b6419653da20b1e7e67edbfa4935153bc4d4a2785416f957db6fcf96fe8', 1, 1, 'authToken', '[]', 0, '2024-12-02 18:42:26', '2024-12-02 18:42:26', '2025-01-02 18:42:26'),
('d8e5247d05dcf45a7ddb557454da0f7e6c18454cdbfcfea605b931caf20030f19f45188746b732d0', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:30:51', '2024-08-21 07:30:51', '2024-09-21 07:30:51'),
('d91d966a151bdddfdb371358cd2325dd7e8ae1ddf164c06cc6d26a4b6d8dbbf01f50ab2a14196b2e', 1, 1, 'authToken', '[]', 1, '2024-11-09 22:48:28', '2024-11-09 22:48:28', '2024-12-09 22:48:28'),
('e3bb1559d3e63710bea470e92159961c9fea08c347cd936291ea1b7b855057cb06217b35517cdec0', 1, 1, 'authToken', '[]', 1, '2024-05-02 09:11:12', '2024-05-02 09:11:12', '2024-06-02 09:11:12'),
('ec4c8c33b90589f500c3389dde2dfe199f979176ceed4a24f4912b0261f2ab9cf59087ef2193b9e1', 1, 1, 'authToken', '[]', 1, '2024-05-06 18:43:55', '2024-05-06 18:43:55', '2024-06-06 18:43:55'),
('ed40c2d2f3658d5dd22ccba0a1423d4b31c75a4bf2d0d17ff42fa7a03bf2e844b826fd6d6063281e', 1, 1, 'authToken', '[]', 0, '2024-05-01 09:35:25', '2024-05-01 09:35:25', '2024-06-01 09:35:25'),
('eddfc05d88b1e4922691b596dc77d39cae1e5f66ddab64729387d3bf94a4ca44c7e3b55fae6c4421', 1, 1, 'authToken', '[]', 0, '2024-08-28 07:50:46', '2024-08-28 07:50:46', '2024-09-28 07:50:46'),
('f2221ec288f1450f25d6034a26711ded5e4899eb3a471047c5f4ac1320c7b5a471f17e4917d488e4', 1, 1, 'authToken', '[]', 0, '2024-05-22 11:20:08', '2024-05-22 11:20:08', '2024-06-22 11:20:08'),
('f2430acdc16bf54d22052e6656417a8fbeefb4fdd05b5f11272d9e37cca23873b32e60f7a9e492a9', 1, 1, 'authToken', '[]', 1, '2024-11-09 22:48:59', '2024-11-09 22:48:59', '2024-12-09 22:48:59'),
('f75690678a49662d38e2bfe493526aaf6d814220a6c9c8e93095263f337a12cac12ab1e2f5abaf43', 1, 1, 'authToken', '[]', 0, '2024-08-21 07:36:17', '2024-08-21 07:36:17', '2024-09-21 07:36:17'),
('f9d7e59a5a969e3d4715e2c6291e4e2a93b72e4bbf791390aefc411cd29156aefe73d518ecc901e4', 4, 1, 'authToken', '[]', 0, '2024-05-02 20:24:33', '2024-05-02 20:24:33', '2024-06-02 20:24:33'),
('fd7c0de3927738c40c78a6015c2a6cd38e0359ebdb7233a96441b93b006717d44da629c3a3044ba8', 1, 1, 'authToken', '[]', 0, '2024-05-01 06:05:02', '2024-05-01 06:05:02', '2024-06-01 06:05:02'),
('fee04e1341ee4d8c137a5b2390379c285fdb9dbf4e72fe893da1cbc43c7fd1e01cfe40f5ba841b52', 2, 1, 'authToken', '[]', 1, '2024-05-02 09:11:35', '2024-05-02 09:11:35', '2024-06-02 09:11:35');

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
(1, NULL, 'Laravel Personal Access Client', 'gAtBcsSZJwABMUs1WExChCWzSraeT55TpUv5tEFG', NULL, 'http://localhost', 1, 0, 0, '2024-11-08 11:18:38', '2024-11-08 11:18:38'),
(2, NULL, 'Laravel Password Grant Client', 'jJH0Hx3T1E20kFdOs0QOzriq6tV3fBwR3Bwy7m1Q', 'users', 'http://localhost', 0, 1, 0, '2024-11-08 11:18:38', '2024-11-08 11:18:38');

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
(1, 1, '2024-11-08 11:18:38', '2024-11-08 11:18:38');

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
(9, '0942070954', 'Jonathan Steven San Lucas Carguachi', '0942070954', 'Guayaquil', 'steven_sanlucas@hotmail.com', '23', NULL, NULL, NULL, '2024-05-02 12:53:21', '2024-05-02 12:53:21'),
(10, '0943965715', 'Stefania Silvana Haro Reyes', '0962669494', 'Guayaquil', 'silvana.hr2002@gmail.com', '21', NULL, NULL, NULL, '2024-05-02 12:53:22', '2024-05-02 12:53:22'),
(11, '1725516312', 'Andres Pozo', '0999751617', 'Quito', 'apozo3620@gmail.com', '23', NULL, NULL, NULL, '2024-05-02 13:01:59', '2024-05-02 13:01:59'),
(12, '1726061656', 'Katherine Gavidia', '0963289358', 'Quito', 'k.athy163@hotmail.com', '23', NULL, NULL, NULL, '2024-05-02 13:02:00', '2024-05-02 13:02:00'),
(13, '2350716540', 'Kerly Fernanda Vintimilla Garzón', '999999999', 'Desconocido', 'cliente@gmail.com', '20', NULL, NULL, NULL, '2024-05-17 16:11:23', '2024-05-17 16:11:23'),
(14, '2300696990', 'Maycol Ismael Tulpa Chaluisa', '999999999', 'Desconocido', 'cliente@gmail.com', '20', NULL, NULL, NULL, '2024-05-17 16:11:24', '2024-05-17 16:11:24'),
(15, '2350970220', 'Melany Mishell Curay Cedeño', '999999999', 'Desconocido', 'cliente@gmail.com', '19', NULL, NULL, NULL, '2024-05-17 16:11:24', '2024-05-17 16:11:24'),
(16, '2300251341', 'Melanie Valentina Santin Alban', '999999999', 'Desconocido', 'cliente@gmail.com', '20', NULL, NULL, NULL, '2024-05-17 16:11:25', '2024-05-17 16:11:25'),
(17, '2350535973', 'Emily Maite Moreira Zambrano', '999999999', 'Desconocido', 'cliente@gmail.com', '20', NULL, NULL, NULL, '2024-05-17 16:11:25', '2024-05-17 16:11:25'),
(18, '1724468051', 'Yani Allpa Flores Arias', '9999999999', 'Cotacachi', 'yaniflores0911@gmail.com', '31', NULL, NULL, NULL, '2024-05-17 16:13:32', '2024-05-17 16:13:32'),
(19, '585041458', 'Laura Chang', '9999999999', 'Estados Unidos', 'Laurazchang@gmail.com', '23', NULL, NULL, NULL, '2024-05-17 16:13:32', '2024-05-17 16:13:32'),
(20, '0602641281', 'Cliente Prueba', '0961119670', 'Quito', 'andrea@gmail.com', '35', NULL, NULL, NULL, '2024-11-06 15:04:32', '2024-11-06 15:04:32'),
(21, '0603935008', 'Darío Janeta', '0961119670', 'Riobamba', 'darday1980@gmail.com', '30', NULL, NULL, NULL, '2024-11-09 22:53:13', '2024-11-09 22:53:13'),
(22, '0602641284', 'María Paca', '0995300403', 'Riobamba', 'paquita@gmail.com', '54', NULL, NULL, NULL, '2024-11-09 22:53:14', '2024-11-09 22:53:14'),
(23, '0606020345', 'Auki Janeta', '0961119670', 'Riobamba', 'auki@gmail.com', '19', NULL, NULL, NULL, '2024-11-09 22:53:14', '2024-11-09 22:53:14');

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

--
-- Volcado de datos para la tabla `passenger_lists`
--

INSERT INTO `passenger_lists` (`passenger_lists_id`, `list_id`, `passenger_ci`, `seat`, `unit_cost`, `total_cost`, `collected`, `bus_extra`, `to_collect`, `bank`, `responsable`, `meeting_point`, `observation`, `passenger_type`, `passenger_group_leader_ci`, `img_cmp_1`, `img_cmp_2`, `state`, `state_passenger`, `created_at`, `updated_at`) VALUES
(4, 3, '0942070954', 2, 40.00, 80.00, 80.00, NULL, 0.00, NULL, 'Darío', 'Riobamba Terminal Terrestre', 'Pagan Todo', 'Responsable', '0942070954', 'passengerListPayments/zQvpvvoclCWhatsApp Image 2024-05-01 at 2.41.44 PM.jpeg', 'undefined', 7, 'Activo', '2024-05-02 12:53:23', '2024-05-02 12:53:23'),
(5, 3, '0943965715', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'Darío', 'Riobamba Terminal Terrestre', NULL, 'Acompañante', '0942070954', '', '', 9, 'Inactivo', '2024-05-02 12:53:24', '2024-05-02 12:53:24'),
(6, 3, '1725516312', 2, 40.00, 80.00, 80.00, NULL, 0.00, NULL, 'Darío', 'Terminal Riobamba', NULL, 'Responsable', '1725516312', 'passengerListPayments/HjIBRZpnu5WhatsApp Image 2024-05-02 at 9.38.58 AM.jpeg', 'undefined', 7, 'Activo', '2024-11-06 15:06:52', '2024-11-06 15:06:52'),
(7, 3, '1726061656', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'Darío', 'Terminal Riobamba', NULL, 'Acompañante', '1725516312', '', '', 9, 'Activo', '2024-05-02 13:02:01', '2024-05-02 13:02:01'),
(8, 5, '2350716540', 5, 40.00, 200.00, 125.00, NULL, 75.00, NULL, 'John Santos', 'Terminal Terrestre', NULL, 'Responsable', '2350716540', 'passengerListPayments/V2h7myID0FWhatsApp Image 2024-05-16 at 1.09.14 PM.jpeg', 'undefined', 8, 'Activo', '2024-05-17 16:11:26', '2024-05-17 16:11:26'),
(9, 5, '2300696990', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'John Santos', 'Terminal Terrestre', NULL, 'Acompañante', '2350716540', '', '', 9, 'Activo', '2024-05-17 16:11:27', '2024-05-17 16:11:27'),
(10, 5, '2350970220', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'John Santos', 'Terminal Terrestre', NULL, 'Acompañante', '2350716540', '', '', 9, 'Activo', '2024-05-17 16:11:27', '2024-05-17 16:11:27'),
(11, 5, '2300251341', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'John Santos', 'Terminal Terrestre', NULL, 'Acompañante', '2350716540', '', '', 9, 'Activo', '2024-05-17 16:11:27', '2024-05-17 16:11:27'),
(12, 5, '2350535973', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'John Santos', 'Terminal Terrestre', NULL, 'Acompañante', '2350716540', '', '', 9, 'Activo', '2024-05-17 16:11:28', '2024-05-17 16:11:28'),
(13, 5, '1724468051', 2, 0.00, 80.00, 0.00, NULL, 80.00, NULL, 'John Santos', 'Terminal Terrestre', NULL, 'Responsable', '1724468051', 'undefined', 'undefined', 8, 'Activo', '2024-05-17 16:13:34', '2024-05-17 16:13:34'),
(14, 5, '585041458', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'John Santos', 'Terminal Terrestre', NULL, 'Acompañante', '1724468051', '', '', 9, 'Activo', '2024-05-17 16:13:34', '2024-05-17 16:13:34'),
(15, 3, '0602641281', 1, 40.00, 40.00, 20.00, NULL, 20.00, NULL, 'Luis Yumiseba', 'Releche', NULL, 'Responsable', '0602641281', 'undefined', 'undefined', 8, 'Activo', '2024-11-06 15:04:32', '2024-11-06 15:04:32'),
(16, 6, '0603935008', 3, 40.00, 120.00, 60.00, NULL, 60.00, NULL, 'Jhon Santos', 'Terminal de riobamba', NULL, 'Responsable', '0603935008', 'undefined', 'undefined', 8, 'Activo', '2024-11-09 22:53:14', '2024-11-09 22:53:14'),
(17, 6, '0602641284', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'Jhon Santos', 'Terminal de riobamba', NULL, 'Acompañante', '0603935008', '', '', 9, 'Inactivo', '2024-11-09 22:53:15', '2024-11-09 22:53:15'),
(18, 6, '0606020345', 0, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 'Jhon Santos', 'Terminal de riobamba', NULL, 'Acompañante', '0603935008', '', '', 9, 'Inactivo', '2024-11-09 22:53:15', '2024-11-09 22:53:15');

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
  `show_in_web_sell` varchar(255) DEFAULT NULL,
  `show_in_web_rent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `supplier_id`, `description`, `buying_price`, `min_selling_price`, `selling_price`, `rent_price`, `entry_date`, `img`, `observation`, `show_in_web_sell`, `show_in_web_rent`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Sleeping Oursky Negros', 25.00, 28.00, 30.00, 7.00, '2024-01-02', 'products/71FmfDy32ZSleeping-OP18.jpg', NULL, '0', '0', '2024-01-02 15:50:47', '2024-01-11 12:08:33'),
(2, 1, 3, 'Carpa Oursky 2 Personas Fibra de Vidrio', 67.00, 65.00, 70.00, 12.00, '2024-01-02', 'products/otzCgyf92jIMG-20230618-WA0102.jpg', 'null', '0', '0', '2024-01-02 15:56:05', '2024-08-04 14:11:12'),
(3, 2, 4, 'Sleeping Century  Verde', 19.00, 19.00, 25.00, 7.00, '2024-01-02', 'products/ocrDi2PjrcD_NQ_NP_719101-MEC71149996407_082023-O.webp', NULL, '0', '0', '2024-01-02 16:05:00', '2024-01-11 12:08:06'),
(4, 10, 6, 'Cargador Portatil Negro', 30.00, 32.00, 33.00, 5.00, '2024-01-02', 'products/I7ToCQuGzgD_NQ_NP_719101-MEC71149996407_082023-O.webp', NULL, '0', '0', '2024-01-02 16:06:52', '2024-01-11 12:07:13'),
(5, 10, 6, 'Cargador Portatil Rojo', 20.00, 23.00, 22.00, 5.00, '2024-01-02', 'undefined', NULL, '0', '0', '2024-01-02 16:07:27', '2024-01-11 12:07:33'),
(6, 4, 2, 'Encendedor Big Pequeño', 0.58, 0.60, 0.58, 0.25, '2024-01-11', NULL, NULL, '0', '0', '2024-01-11 12:44:14', '2024-01-11 12:53:09'),
(7, 4, 2, 'Limpia Platos Similar a Esponja', 0.12, 0.15, 0.12, 0.25, '2024-01-11', NULL, NULL, '0', '0', '2024-01-11 12:45:18', '2024-01-11 13:11:04'),
(8, 4, 2, 'Papel Aluminio', 0.90, 1.00, 0.90, 1.00, '2024-01-11', NULL, NULL, '0', '0', '2024-01-11 12:46:31', '2024-01-11 13:11:32'),
(9, 11, 2, 'Galleta Saltica', 0.35, 0.00, 0.35, 0.00, '2024-01-11', NULL, NULL, '0', '0', '2024-01-11 12:47:54', '2024-01-11 13:11:50'),
(10, 12, 2, 'Supan Integral', 2.11, 0.00, 2.11, 0.00, '2024-01-11', NULL, NULL, '0', '0', '2024-01-11 13:08:03', NULL),
(11, 4, 2, 'Cuchara 50 Unidades', 0.50, 0.00, 0.50, 0.00, '2024-01-11', NULL, NULL, '0', '0', '2024-01-11 13:09:02', NULL),
(12, 11, 2, 'Atún Isabel Lomito pequeño', 0.84, 0.00, 0.84, 0.00, '2024-01-11', NULL, NULL, '0', '0', '2024-01-11 13:10:04', NULL),
(13, 11, 2, 'Gatorade uva 1.25', 0.92, 0.00, 0.92, 0.00, '2024-01-11', NULL, NULL, '0', '0', '2024-01-11 13:10:33', '2024-01-11 13:31:34'),
(14, 8, 7, 'Casco Petzl Amarillo', 51.00, 50.00, 65.00, 5.00, '2024-02-16', 'products/Jrf5nJeNtEMesa-de-trabajo-1-100-1.jpg', NULL, '0', '0', '2024-02-16 19:48:47', '2024-02-18 07:15:55'),
(15, 8, 7, 'Cuerda 30m Cousin 2021 8.9 mm', 61.00, 65.00, 65.00, 10.00, '2024-02-16', 'products/JjtrKdc5wsImagen para redes Sociales Viaje foto sacramento (8).png', NULL, '0', '0', '2024-02-16 19:53:46', '2024-02-18 07:44:34'),
(16, 5, 4, 'Linterna Frontal Energizer 200 Lumenes', 22.00, 20.00, 22.00, 5.00, '2024-02-16', 'products/fp8ztgweUDWhatsApp Image 2024-02-16 at 8.06.00 PM.jpeg', NULL, '0', '0', '2024-02-16 20:06:29', NULL),
(17, 10, 8, 'Parlante cilíndrico negro', 9.00, 7.00, 10.00, 5.00, '2024-02-18', 'products/jNuO8tNVFAImagen para redes Sociales Viaje foto sacramento (6).png', 'null', '0', '0', '2024-02-18 07:53:10', '2024-04-30 16:06:25'),
(18, 3, 3, 'Aislante térmico plateado', 10.00, 13.00, 15.00, 5.00, '2024-04-30', NULL, 'Aislante Plateado cilíndrico', '0', '0', '2024-04-30 13:58:06', '2024-04-30 13:58:46'),
(19, 3, 1, 'Aislante acordeón verde', 11.00, 14.00, 16.00, 5.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 14:00:09', NULL),
(20, 8, 6, 'Cobertor de Mochila', 5.00, 5.00, 5.00, 5.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 14:06:41', NULL),
(21, 10, 7, 'Batería Portatil Metal', 25.00, 25.00, 25.00, 25.00, '2024-04-30', NULL, 'Batería que usa John', '0', '0', '2024-04-30 14:32:29', NULL),
(22, 10, 7, 'Batería Portatil Negra', 20.00, 20.00, 20.00, 20.00, '2024-04-30', NULL, 'Batería que usa Luis', '0', '0', '2024-04-30 14:32:56', NULL),
(23, 8, 6, 'Buff Altar', 3.75, 4.50, 4.50, 4.50, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 14:34:18', NULL),
(24, 8, 6, 'Buff Puñay', 3.75, 4.50, 4.50, 4.50, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 14:34:58', NULL),
(25, 1, 8, 'Carpa Klimber Tomate 4 Personas', 80.00, 80.00, 80.00, 80.00, '2024-04-30', NULL, 'Carpa que se compró en Colombia', '0', '0', '2024-04-30 14:42:19', NULL),
(26, 1, 3, 'Carpa Oursky 3 Personas Fibra de vidrio', 85.00, 75.00, 85.00, 15.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:26:33', NULL),
(27, 1, 8, 'Carpa Quechua 2 Personas', 75.00, 75.00, 75.00, 10.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:30:21', NULL),
(28, 4, 8, 'Chuspa Café', 1.00, 1.00, 1.00, 1.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:31:42', NULL),
(29, 4, 8, 'Cucharon para arroz', 1.00, 1.00, 1.00, 1.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:32:36', NULL),
(30, 4, 8, 'Cucharon para café', 1.00, 1.00, 1.00, 1.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:32:58', NULL),
(31, 8, 8, 'Cuerda 10 metros', 15.00, 15.00, 15.00, 15.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:35:58', NULL),
(32, 8, 8, 'Gigantografía', 5.00, 5.00, 5.00, 5.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:36:45', NULL),
(33, 4, 4, 'Hornilla Enroscable Circular Grande', 20.00, 12.00, 20.00, 5.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:40:37', NULL),
(34, 4, 3, 'Hornilla Circular pequeña', 12.00, 13.00, 15.00, 5.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:44:53', NULL),
(35, 10, 3, 'Linterna Frontal Petzl 250 lumenes', 25.00, 25.00, 30.00, 5.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:46:50', '2024-05-02 19:58:00'),
(36, 8, 3, 'Mochila 65 Litros Snow Wind', 37.00, 37.00, 42.00, 10.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:48:35', NULL),
(37, 8, 3, 'Mochila 65 Litros Madison', 37.00, 35.00, 42.00, 10.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:49:12', NULL),
(38, 8, 3, 'Mochila 95 Litros Snow Wind', 42.00, 42.00, 45.00, 10.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:49:51', NULL),
(39, 8, 9, 'Mantas Térmicas Equipo Cotopaxi', 2.70, 5.00, 5.00, 5.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 15:58:14', NULL),
(40, 8, 4, 'Navaja', 7.00, 7.00, 7.00, 7.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 16:00:15', NULL),
(41, 4, 8, 'Olla Grande', 4.00, 4.00, 4.00, 4.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 16:01:23', NULL),
(42, 4, 8, 'Olla Mediana', 3.50, 3.50, 3.50, 3.50, '2024-04-30', NULL, 'null', '0', '0', '2024-04-30 16:02:13', '2024-04-30 22:51:06'),
(43, 10, 8, 'Parlante cuadrado', 9.00, 9.00, 9.00, 9.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 16:07:34', NULL),
(44, 4, 4, 'Tanque de gas Grande', 17.00, 17.00, 17.00, 17.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 16:10:33', NULL),
(45, 4, 4, 'Tanque de gas pequeño', 12.00, 12.00, 12.00, 12.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 16:11:22', NULL),
(46, 10, 8, 'Walkie Talkie Radio', 37.00, 37.00, 37.00, 7.00, '2024-04-30', NULL, 'null', '0', '0', '2024-04-30 16:14:14', '2024-04-30 16:14:37'),
(47, 2, 8, 'Sleeping Azul', 20.00, 20.00, 20.00, 20.00, '2024-04-30', NULL, NULL, '0', '0', '2024-04-30 23:04:26', NULL),
(48, 4, 8, 'Tanque de gas pequeño negro', 0.00, 7.00, 0.00, 5.00, '2024-04-30', NULL, 'Este tanque se encontró John en una ruta', '0', '0', '2024-04-30 23:07:18', NULL),
(49, 2, 3, 'Sleeping Negro Sin Marca', 25.00, 35.00, 40.00, 7.00, '2024-05-02', NULL, NULL, '0', '0', '2024-05-02 16:16:51', NULL);

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
(4, 3, NULL, NULL, 5, 5, NULL, NULL, NULL),
(5, 4, NULL, NULL, 5, 5, NULL, NULL, NULL),
(6, 5, NULL, NULL, 5, 2, NULL, NULL, NULL),
(7, 6, NULL, NULL, 5, 3, NULL, NULL, NULL),
(8, 2, NULL, NULL, 3, 1, NULL, NULL, NULL),
(9, 7, NULL, NULL, 5, 1, NULL, NULL, NULL),
(10, 8, NULL, NULL, 5, 1, NULL, NULL, NULL),
(11, 9, NULL, NULL, 5, 1, NULL, NULL, NULL),
(12, 10, NULL, NULL, 5, 1, NULL, NULL, NULL),
(13, 13, NULL, NULL, 2, 1, NULL, NULL, NULL),
(15, 11, NULL, NULL, 4, 1, NULL, NULL, NULL),
(18, 15, NULL, NULL, 4, 5, NULL, NULL, NULL),
(19, 15, NULL, NULL, 3, 8, NULL, NULL, NULL),
(21, 16, NULL, NULL, 3, 2, NULL, '2024-04-30 16:51:17', '2024-04-30 16:51:17'),
(23, 17, NULL, NULL, 3, 1, NULL, '2024-04-30 16:52:25', '2024-04-30 16:52:25'),
(24, 17, NULL, NULL, 4, 1, NULL, '2024-04-30 16:52:31', '2024-04-30 16:52:31'),
(25, 18, NULL, NULL, 3, 1, NULL, '2024-04-30 16:53:32', '2024-04-30 16:53:32'),
(26, 19, NULL, NULL, 4, 1, NULL, '2024-04-30 16:53:46', '2024-04-30 16:53:46'),
(27, 20, NULL, NULL, 2, 5, NULL, '2024-04-30 16:54:44', '2024-04-30 16:54:44'),
(28, 20, NULL, NULL, 3, 1, NULL, '2024-04-30 16:54:52', '2024-04-30 16:54:52'),
(31, 22, NULL, NULL, 3, 2, NULL, '2024-04-30 17:00:17', '2024-04-30 17:00:17'),
(32, 23, NULL, NULL, 2, 2, NULL, '2024-04-30 17:00:59', '2024-04-30 17:00:59'),
(36, 25, NULL, NULL, 4, 3, NULL, '2024-04-30 17:02:43', '2024-04-30 17:02:43'),
(37, 25, NULL, NULL, 3, 2, NULL, '2024-04-30 22:41:02', '2024-04-30 22:41:02'),
(39, 27, NULL, NULL, 2, 1, NULL, '2024-04-30 22:42:44', '2024-04-30 22:42:44'),
(40, 27, NULL, NULL, 3, 1, NULL, '2024-04-30 22:42:53', '2024-04-30 22:42:53'),
(41, 28, NULL, NULL, 3, 1, NULL, '2024-04-30 22:43:22', '2024-04-30 22:43:22'),
(42, 12, NULL, NULL, 4, 1, NULL, NULL, NULL),
(46, 32, NULL, NULL, 2, 1, NULL, '2024-04-30 22:46:57', '2024-04-30 22:46:57'),
(47, 33, NULL, NULL, 2, 1, NULL, '2024-04-30 22:47:11', '2024-04-30 22:47:11'),
(48, 33, NULL, NULL, 4, 1, NULL, '2024-04-30 22:47:21', '2024-04-30 22:47:21'),
(49, 34, NULL, NULL, 3, 1, NULL, '2024-04-30 22:47:34', '2024-04-30 22:47:34'),
(50, 35, NULL, NULL, 2, 7, NULL, '2024-04-30 22:48:21', '2024-04-30 22:48:21'),
(51, 35, NULL, NULL, 4, 1, NULL, '2024-04-30 22:48:33', '2024-04-30 22:48:33'),
(52, 35, NULL, NULL, 3, 3, NULL, '2024-04-30 22:48:52', '2024-04-30 22:48:52'),
(53, 36, NULL, NULL, 4, 1, NULL, '2024-04-30 22:49:13', '2024-04-30 22:49:13'),
(55, 37, NULL, NULL, 3, 1, NULL, '2024-04-30 22:50:14', '2024-04-30 22:50:14'),
(56, 38, NULL, NULL, 3, 1, NULL, '2024-04-30 22:51:31', '2024-04-30 22:51:31'),
(57, 39, NULL, NULL, 3, 1, NULL, '2024-04-30 22:52:17', '2024-04-30 22:52:17'),
(60, 40, NULL, NULL, 3, 12, NULL, '2024-04-30 22:58:54', '2024-04-30 22:58:54'),
(61, 40, NULL, NULL, 4, 5, NULL, NULL, NULL),
(66, 43, NULL, NULL, 3, 3, NULL, '2024-04-30 23:06:06', '2024-04-30 23:06:06'),
(67, 44, NULL, NULL, 4, 1, NULL, '2024-04-30 23:06:29', '2024-04-30 23:06:29'),
(68, 45, NULL, NULL, 2, 1, NULL, '2024-04-30 23:07:58', '2024-04-30 23:07:58'),
(69, 46, NULL, NULL, 2, 1, NULL, '2024-04-30 23:08:14', '2024-04-30 23:08:14'),
(70, 46, NULL, NULL, 4, 1, NULL, '2024-04-30 23:08:21', '2024-04-30 23:08:21'),
(71, 46, NULL, NULL, 3, 2, NULL, '2024-04-30 23:08:28', '2024-04-30 23:08:28'),
(74, 49, NULL, NULL, 3, 2, NULL, '2024-05-02 20:02:32', '2024-05-02 20:02:32'),
(75, 50, NULL, NULL, 4, 1, NULL, '2024-05-02 20:04:04', '2024-05-02 20:04:04'),
(77, 14, NULL, NULL, 2, 1, NULL, NULL, NULL),
(78, 16, NULL, NULL, 2, 1, NULL, NULL, NULL),
(79, 51, NULL, NULL, 2, 2, NULL, '2024-08-25 19:35:19', '2024-08-25 19:35:19'),
(82, 40, NULL, NULL, 2, 10, NULL, NULL, NULL),
(84, 43, NULL, NULL, 2, 1, NULL, NULL, NULL),
(85, 43, NULL, NULL, 4, 1, NULL, NULL, NULL),
(86, 52, NULL, NULL, 3, 1, NULL, '2024-08-26 09:09:30', '2024-08-26 09:09:30'),
(87, 25, NULL, NULL, 2, 3, NULL, NULL, NULL),
(88, 22, NULL, NULL, 2, 1, NULL, NULL, NULL),
(89, 15, NULL, NULL, 2, 10, NULL, NULL, NULL);

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
(1, 'Full', '2024-04-30 12:13:31', '2024-04-30 12:13:31'),
(2, 'Inventario', '2024-04-30 12:13:31', '2024-04-30 12:13:31'),
(3, 'Demo', '2024-04-30 12:13:31', '2024-04-30 12:13:31');

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
(1, 'Nuevo', 'Productos', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(2, 'Bueno', 'Productos', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(3, 'Regular', 'Productos', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(4, 'Malo Funcional', 'Productos', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(5, 'Malo No funcional', 'Productos', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(6, 'No paga nada', 'Pagos de Pasajeros', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(7, 'Pagado Todo', 'Pagos de Pasajeros', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(8, 'Pago Parcial', 'Pagos de Pasajeros', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(9, 'No Aplica - Acompañante', 'Pagos de Pasajeros', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(10, 'No pagado', 'Creditos', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(11, 'Pagado', 'Creditos', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(12, 'Vencido', 'Creditos', '2024-04-30 12:13:30', '2024-04-30 12:13:30');

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
(1, 'Comercial Guacho', '0963124578', 'Riobamba Olmedo y la que cruza', 'Sra Guacho', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(2, 'Titan', '9999999', 'Parque Industrial', 'Gerente titan', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(3, 'Constante', '0963124578', 'Ibarra - Olmedo y la que cruza', 'Diego Constante', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(4, 'Kapak Urku', '0963124578', 'Riobamba - Coliseo', 'Mayor', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(5, 'Dicosavi', '0963124578', 'Riobamba - Guayaquil y 5 de junio', 'Mayor', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(6, 'Artlekin', '+593992989220', 'Frente al Seguro', 'Sebastián Haro Merino', '2024-04-30 14:04:57', '2024-04-30 14:04:57'),
(7, 'Frente a la estación', '+00000000', 'Estación del tren', 'Desconocido', '2024-04-30 14:31:29', '2024-04-30 14:31:29'),
(8, 'Otro', NULL, 'Otro', NULL, '2024-04-30 14:41:19', '2024-04-30 14:41:19'),
(9, 'Equipos Cotopaxi', '099 858 2779', 'Desconocido', 'Desconocido', '2024-04-30 15:50:59', '2024-04-30 15:56:24');

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

--
-- Volcado de datos para la tabla `tour_catalogues`
--

INSERT INTO `tour_catalogues` (`tour_catalogues_id`, `tour_name`, `tour_destiny`, `description`, `include`, `cost_1`, `cost_2`, `cost_3`, `cost_4`, `img_1`, `img_2`, `state`, `type`, `dificulty`, `discount`, `discount_description`, `contact_phone`, `messagge_for_contact`, `varchar_1`, `varchar_2`, `varchar_3`, `last_user`, `created_at`, `updated_at`) VALUES
(1, 'PON A PRUEBA TU MENTE Y CUERPO', 'ALTAR - LAGUNA AMARILLA', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Amarilla! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Amarilla! 🏞️🛍️', 'Transporte desde Riobamba, Desayuno Sábado, Cena Sábado, Desayuno Domingo, Guia, Mula de Carga para Equipo de Camping, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico.', 255.00, 135.00, 105.00, 80.00, 'catalogue/r6UZtZ1ZTzIPF20poxIaDiseдo sin tбtulo (9).png', 'catalogue/FCjeLKRBvFdnEFKxpWviDiseдo sin tбtulo (10).png', 1, 'Camping', 'Moderada - Alta', 0.00, 'Ninguno', '0961119670', 'Hola, me ayudan con informacion para el camping en el Altar vi esta publicación en la web', NULL, NULL, NULL, NULL, NULL, '2024-04-23 11:32:02'),
(2, 'CAMPING SOBRE LAS NUBES', 'CERRO PUÑAY', '¡Vive una aventura única en el cerro Puñay con nuestro camping sobre las nubes! 🏕️🌤️🌄 Descubre paisajes mágicos, respira aire puro y admira vistas panorámicas impresionantes. ¡No te pierdas la oportunidad de acampar en la cima! Reserva tu lugar ahora. 🌟🌲☁️🏞️', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 100.00, 60.00, 45.00, 40.00, 'catalogue/cSwEqsl8jprY9rd5maFrDiseдo sin tбtulo (11).png', 'catalogue/amx6lmD3ZCNP2s69j6HpDiseдo sin tбtulo (12).png', 1, 'Camping', 'Moderada', 0.00, 'Ninguno', '0997159098', 'Hola me gustaría informacion de la ruta de su catalogo hacia el Puñay', NULL, NULL, NULL, NULL, NULL, '2024-01-25 10:17:04'),
(3, 'GARGANTA DE FUEGO', 'TUNGURAHUA', '¡Únete a nosotros en una aventura inolvidable en el Volcán Tungurahua! 🌋🏞️ Disfruta de paisajes espectaculares y descansa en el refugio de montaña después de un día de exploración. 🏕️🌟 Este tour de 2 días te permitirá sumergirte en la naturaleza y admirar la majestuosidad del volcán. ¡No te lo pierdas! Reserva tu lugar ahora. 🙌🌄🌌', 'Transporte desde Baños, Cena Sábado, Desayuno Domingo, Estadía en el refugio, Sleeping, Casco, Crampones, Guia, Recuerdo de Ruta', 180.00, 99.00, 99.00, 99.00, 'catalogue/BTXDK1Q2S3jLxa7SGRLHDiseдo sin tбtulo (14).png', 'catalogue/cQCvO2htqyaqPJGWjSjMDiseдo sin tбtulo (13).png', 1, 'Camping', 'Alta', 0.00, '0', '0993786135', 'Hola me gustaría tener información para la ruta al Tungurahua. Vi esto en la web', NULL, NULL, NULL, NULL, NULL, '2024-01-25 10:17:58'),
(4, 'AGUAS TERMALES +', 'LAGUNA CONGELADA CARIHUAIRAZO', '¡Ven y disfruta de una experiencia única en los Andes ecuatorianos con nuestro tour de 2 días! 🌋🏞️🌡️ Sumérgete en las aguas termales del majestuoso Volcán Chimborazo y visita la impresionante Laguna Congelada del Carihuairazo. 🏊❄️ Después de un día lleno de aventuras, descansa en nuestro acogedor refugio de montaña rodeado de paisajes increíbles. 🏕️🌟 ¡No pierdas la oportunidad de vivir una experiencia única en la naturaleza! Reserva tu lugar ahora. 🙌🌄🌌', 'Transporte desde Riobamba, Desayuno Sábado, Box Lounch Sábado Desayuno, Cena Sábado, Desayuno Domingo, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Guianza, Costo de Ingreso al Carihuirazo, Costo de Ingreso a Aguas Termales.', 205.00, 123.00, 94.00, 70.00, 'catalogue/hBpLK4Ibb8NgjCHnciN9Diseдo sin tбtulo (15).png', 'catalogue/WTslwGmTTsvVzWVGAHWjDiseдo sin tбtulo (21).png', 1, 'Camping', 'Moderada', 0.00, '0', '0993786135', 'Hola me gustaría tener información para la ruta al Carihuairazo. Vi esto en la web', NULL, NULL, NULL, NULL, NULL, '2024-01-25 10:21:29'),
(5, 'VISITANDO EL CRATER DE UN VOLCÁN', 'QUILOTOA', '🏕️ ¡Descubre la magia del cráter del volcán Quilotoa en nuestro camping de dos días y una noche! 🌋⛺️\r\n\r\n🌄 Sumérgete en la belleza natural de este volcán extinto y disfruta de vistas impresionantes. 🌈🌌\r\n\r\n🥾 Explora senderos escénicos, admira la majestuosidad del cráter y conecta con la energía de la naturaleza. 🌿🌞\r\n\r\n✨ Vive una experiencia única en el corazón de los Andes, rodeado de paisajes cautivadores y tranquilidad absoluta. ¡No hay mejor manera de escapar de la rutina! 🏞️🌿\r\n\r\n¡Únete a nosotros en esta aventura inolvidable en el cráter del volcán Quilotoa! ¡Reserva ahora y vive una experiencia que te dejará sin aliento! 🌋', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogara, Charla Astronómica.', 97.00, 55.00, 41.00, 40.00, 'catalogue/VtZT0OHbynu1GSKL1ySxDiseдo sin tбtulo (17).png', 'catalogue/IctTAyuIbObQWiYuih3DDiseдo sin tбtulo (19).png', 1, 'Camping', 'Moderada - Fácil', 0.00, 'Ninguna', '091119670', 'Hola me gustaría reservar mi cupo para la ruta al Quilotoa', NULL, NULL, NULL, NULL, NULL, '2024-01-25 10:20:07'),
(6, 'AGUAS TERMALES +', 'CHIMBORAZO', '🌄 ¡Explora la majestuosidad del Nevado Chimborazo y sumérgete en las relajantes aguas termales! 🏔️🌊\r\n\r\n🥾 Únete a nuestro tour de un día y déjate sorprender por la imponente belleza de la montaña más alta de Ecuador. 🌟❄️\r\n\r\n🚶‍♀️ Recorreremos senderos impresionantes, maravillándonos con los paisajes de ensueño que nos rodean. 🏞️🌿\r\n\r\n💧 Después de una jornada de exploración, nos sumergiremos en las aguas termales para relajar cuerpo y mente. 🧖‍♀️💦\r\n\r\n¡Prepárate para una experiencia inolvidable en la cima de los Andes! 🗻✨', 'Transporte desde Riobamba, Guía, Desayuno Sábado, Box Lounch, Ingreso a Aguas Termales, Ingreso a reserva chimborazo, Visita Primer y segundo Refugio, Visita Condor Cocha, Canelazo Tradicional, Parádas fotográficas, Recuerdo de Ruta', 131.00, 75.00, 53.00, 42.00, 'catalogue/cvnbCGgCn22nOWlA4IOVDiseдo sin tбtulo (20).png', 'catalogue/cnhviVIkeLvVzWVGAHWjDiseдo sin tбtulo (21).png', 1, 'Camping', 'Moderada - Fácil', 0.00, 'Ninguna', '091119670', 'Hola me gustaría reservar mi cupo para la ruta al Quilotoa', NULL, NULL, NULL, NULL, NULL, '2024-01-25 10:20:42'),
(7, 'CAMINANDO ENTRE MONTAÑAS', 'OJO DEL FANTASMA', '🏕️ ¡Vive una experiencia mágica en el Ojo del Fantasma, en las faldas del imponente Volcán Tungurahua! 👻🌋\r\n\r\n🌄 Únete a nuestro camping de dos días y una noche y adéntrate en un mundo lleno de misterio y encanto. 🌌🌿\r\n\r\n🌟 Disfruta de un entorno natural único, rodeado de exuberante vegetación y paisajes impresionantes. 🏞️🌿\r\n\r\n🏕️ Acampa bajo el cielo estrellado, mientras el Volcán Tungurahua custodia tus sueños. 🌠⛺️\r\n\r\n🔥 Comparte historias alrededor de la fogata, conecta con la naturaleza y crea recuerdos inolvidables. 🔥🌌\r\n\r\n¡No pierdas la oportunidad de vivir esta experiencia única en el Ojo del Fantasma! 🏕️✨', 'Guia, Transporte desde Riobamba, Ticket de ingreso, Cena Sábado, Desayuno Domingo,  Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogara, Charla Astronómica.', 119.00, 67.00, 49.00, 40.00, 'catalogue/QPn1nzZLxfMFUP3DoUScDiseдo sin tбtulo (22).png', 'catalogue/RNGcaAA78hoXPIKBT6LzDiseдo sin tбtulo (23).png', 1, 'Camping', 'Moderada - Fácil', 0.00, 'Ninguna', '091119670', 'Hola me gustaría reservar mi cupo para la ruta al Ojo del Fantasma', NULL, NULL, NULL, NULL, NULL, '2024-02-20 22:16:41'),
(8, 'EL ALTAR DESDE OTRA PERSPECTIVA', 'ALTAR LAGUNA AZUL', '🏕️ ¿Quieres vivir una aventura inolvidable en medio de la naturaleza? ¡Te invitamos a nuestro camping en el Nevado El Altar y su hermosa Laguna Azul! ⛺.\r\nDesconecta del estrés de la ciudad y reconéctate con la naturaleza en una de las zonas más impresionantes de Ecuador. ¡Reserva ahora tu lugar en nuestro camping en el Nevado El Altar y su Laguna Azul! 🏞️🛍️', 'Guía, Transporte, Carpa, Aislante térmico, sleeping , Merienda sábado, Desayuno Domingo, Ticket de entrada, Charla sobre constelaciones', 200.00, 123.00, 95.00, 70.00, 'catalogue/lTmUMZ5z7TImagen para redes Sociales Viaje foto sacramento.png', 'catalogue/Tt122Vx2RRImagen para redes Sociales Viaje foto sacramento (1).png', 1, 'Camping', 'Moderada - Alta', 0.00, 'Ninguno', '0961119670', 'Por favor me ayudas con información del Altar, vi esta publicación en la web.', NULL, NULL, NULL, NULL, '2024-02-15 16:44:27', '2024-02-18 09:17:32'),
(10, 'EXPLORANDO', 'ILINIZA NORTE', '¡Sumérgete en la majestuosidad del Illiniza Norte en nuestro tour de un día! 🌄🏃\r\n🏞️ Explora un volcán: Descubre los secretos y misterios que alberga el Illiniza Norte 🌋.\r\n📸 Captura momentos únicos: Inmortaliza la aventura y comparte recuerdos inolvidables 📸.\r\n💪 ¡Prepárate para una experiencia de aventura y desafío en el majestuoso Illiniza Norte! Reserva ahora y vive una experiencia que recordarás toda la vida. 🗓️🏞️ #IllinizaNorte #FullDay #Andes #Aventura #Naturaleza #TurismoEcuador #EcuadorNature #AventuraEnLosAndes #Illiniza #TourAndino', 'Transporte desde Quito, Charla sobre la fauna y flora del lugar, Ingreso Parque Nacional, Casco de montaña, Cuerda de apoyo', 110.00, 90.00, 75.00, 50.00, 'catalogue/X1SOTSa76aImagen para redes Sociales Viaje foto sacramento (10).png', 'catalogue/8AARRXKh10Imagen para redes Sociales Viaje foto sacramento (10).png', 1, 'Full Day', 'Moderada - Alta', 0.00, '0', '0993786135', 'Hola Deseo info de los Illinizas porfa', NULL, NULL, NULL, NULL, '2024-02-18 20:46:31', '2024-07-25 08:43:03'),
(11, 'CONVERSANDO CON EL CHIMBORAZO', 'TEMPLO MACHAY', '¡Descubre la magia del Templo Machay en un tour de un día! 🏞️🌌\r\n🗿 Explora un sitio con muchos paisajes: Descubre los misterios y la historia del Templo Machay 🏛️.\r\n⛰️ Contempla la majestuosidad del Chimborazo: Observa el majestuoso volcán y su entorno desde las faldas 🌋.\r\n🌌 Vive un atardecer inolvidable: Maravíllate con los colores del atardecer en el Templo Machay 🌅.\r\n📸 Captura momentos únicos: Inmortaliza la aventura y comparte recuerdos inolvidables 📸.', 'Transporte desde Riobamba, Guía, Ticket de entrada, Charla sobre flora y fauna del lugar, Refrigerio, Parada gastronómica, parada fotográfica.', 90.00, 50.00, 40.00, 35.00, 'catalogue/8FXWhiyhdMImagen para redes Sociales Viaje foto sacramento (12).png', 'catalogue/1wgDEZan4OImagen para redes Sociales Viaje foto sacramento (11).png', 1, 'Full Day', 'Moderada - Alta', 0.00, '0', '0961119670', 'Hola Deseo info del Templo Machay', NULL, NULL, NULL, NULL, '2024-02-18 21:50:43', NULL),
(12, 'EXPLORANDO', 'VOLCÁN CORAZÓN', '¿Listo para explorar el Corazón? ¡No el de ella, sino el majestuoso Volcán Corazón! 😉💖\r\nÚnete a nuestro increíble Full Day y vive una experiencia única en uno de los destinos más espectaculares de Ecuador. 🌟 Caminaremos por senderos impresionantes, disfrutaremos de vistas panorámicas y sentiremos la adrenalina de estar en la cima. 🌄✨\r\nEste viaje es perfecto para aventureros y amantes de la naturaleza. Prepárate para conquistar el Corazón y llevarte recuerdos inolvidables. 🥾🌿\r\n¿Qué esperas? ¡Ven y descubre la magia del Volcán Corazón con nosotros! 🌍❤️\r\n#ExploraElCorazón #AventuraEnElVolcán', 'Guía de ruta, Permiso de ingreso, Transporte desde el Chaupi, Casco de montaña, Almuerzo', 99.00, 60.00, 50.00, 45.00, 'catalogue/s0KofgD2mi452380968_998313098970818_1036587638079750638_n.jpg', 'catalogue/vdvztUhPzBIMG_20230521_080242.jpg', 1, 'Full Day', 'Moderada - Alta', 0.00, 'Ninguno', '0997159098', 'Hola me ayudas con info del Corazón. Vi esto en la web', NULL, NULL, NULL, NULL, '2024-07-25 08:58:11', NULL),
(13, 'UN ATARDECER DIFERENTE', 'YAGUI URCO', '¡Vive una experiencia única en el mirador Yagüi Urco, donde las nubes se convierten en tu paisaje! ☁️⛰️ Disfruta de dos días de aventura acampando en este mágico lugar, con vistas espectaculares que te dejarán sin aliento. 🌌✨ Sumérgete en la tranquilidad de la naturaleza mientras observas el mundo desde lo alto, rodeado de montañas y cielos impresionantes. 🌲🔥\r\n\r\nUna aventura perfecta para quienes buscan desconectarse y disfrutar de un escenario natural incomparable. 🥾🌅 ¡Reserva tu lugar y vive una noche en las nubes! 🎒💫\r\n\r\n#YagüiUrco #CampingEcuador #MiradorDeLasNubes #AventuraAndina #ConexiónConLaNaturaleza #ExploraEcuador', 'Guia, Ticket de ingreso, Cena Sábado, Desayuno Domingo, Carpa de Media-Alta montaña, Sleeping Bag, Aislante Térmico, Fogata, Charla Astronómica.', 100.00, 60.00, 45.00, 40.00, 'catalogue/GZeIL4SzsZ24-10-2024_10-58-16.png', 'catalogue/v79ay5RCZO24-10-2024_10-58-16.png', 1, 'Camping', 'Fácil', 0.00, '0', '0961119670', 'Hola Estoy interesado en la ruta a Yagui Urko vi esto en la web', NULL, NULL, NULL, NULL, '2024-10-24 10:58:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `to_buys`
--

CREATE TABLE `to_buys` (
  `id_ToBuy` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
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
(1, NULL, NULL, NULL, 'Administrador', 'Sistema', NULL, NULL, NULL, NULL, 'admin', 'adminsistema@gmail.com', NULL, '$2y$10$TgEFrD/yltrwNuwjMGoyeOLXdFx6bkz7LcfUJWIn0b5kSr7nRc1Dy', NULL, '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(2, NULL, NULL, NULL, 'Darío', 'Janeta', NULL, NULL, NULL, NULL, 'guide', 'dariojaneta@gmail.com', NULL, '$2y$10$Brxej04PzagBD/jlI4e9MuY4DCpQAy0welYJQKxcQDt8fOYCH907W', NULL, '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(3, NULL, NULL, NULL, 'Luis', 'Yumiseba', NULL, NULL, NULL, NULL, 'guide', 'luisyumiseba65@gmail.com', NULL, '$2y$10$nWvqNPq6EOs3jgT9DrOv8uB3XVfNAA4JGSbawFQE/KuCq/mQ4n8yi', NULL, '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(4, NULL, NULL, NULL, 'John', 'Santos', NULL, NULL, NULL, NULL, 'guide', 'jhons5919@gmail.com', NULL, '$2y$10$.xHpQYy8oOCNcOR.U9YafeuNHBG7TluCv9mYc.EKiI58RVbk54qX2', NULL, '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(5, NULL, NULL, NULL, 'María', 'Paca', NULL, NULL, NULL, NULL, 'shopkeeper', 'manuelapak@yahoo.com', NULL, '$2y$10$/wdyL4ApwluhWpb2nA3dH.xrMKax3nUtGA0hEfIOWsvXYX8xBpPUq', NULL, '2024-04-30 12:13:31', '2024-04-30 12:13:31');

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
(1, 'General', 'Oficina CCH', '0961119670', 'Aquí están las cosas para alquilar y vender', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(2, 'Bodega Dario', 'Tierra Nueva', '0961119670', '', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(3, 'Bodega Jhon', 'Mercado la esperanza', '0997159098', '', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(4, 'Bodega Luis', 'Complejo la Panadería', '0993786135', 'Bodega casa Luchin', '2024-04-30 12:13:30', '2024-04-30 12:13:30'),
(5, 'Bodega Alimentación', 'Redondel del Libro', '0995300403', 'Mamá Darío - María Paca', '2024-04-30 12:13:30', '2024-04-30 12:13:30');

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
-- Indices de la tabla `to_buys`
--
ALTER TABLE `to_buys`
  ADD PRIMARY KEY (`id_ToBuy`);

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
  MODIFY `categories_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `credits`
--
ALTER TABLE `credits`
  MODIFY `credit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enterprises`
--
ALTER TABLE `enterprises`
  MODIFY `enterprise_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `equipment_rents`
--
ALTER TABLE `equipment_rents`
  MODIFY `equipment_rent_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `gallery_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `incomes_tours`
--
ALTER TABLE `incomes_tours`
  MODIFY `income_tour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories`
--
ALTER TABLE `inventories`
  MODIFY `inventories_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `list_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `monthly_tours`
--
ALTER TABLE `monthly_tours`
  MODIFY `monthly_tour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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
  MODIFY `passenger_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `passenger_lists`
--
ALTER TABLE `passenger_lists`
  MODIFY `passenger_lists_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `passenger_list_monthly_tours`
--
ALTER TABLE `passenger_list_monthly_tours`
  MODIFY `passenger_list_monthly_tours` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `product_warehouses`
--
ALTER TABLE `product_warehouses`
  MODIFY `product_warehouses_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

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
  MODIFY `sales_products_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secuential_bills`
--
ALTER TABLE `secuential_bills`
  MODIFY `secuential_bill_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `suppliers_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `total_account_sales`
--
ALTER TABLE `total_account_sales`
  MODIFY `total_account_sales_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tour_catalogues`
--
ALTER TABLE `tour_catalogues`
  MODIFY `tour_catalogues_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `to_buys`
--
ALTER TABLE `to_buys`
  MODIFY `id_ToBuy` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `warehouse_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
