-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 10 2022 г., 18:04
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_brand_id` int(11) NOT NULL,
  `car_model_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`id`, `car_brand_id`, `car_model_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-11-10 12:30:47', NULL),
(2, 1, 2, '2022-11-10 12:30:47', NULL),
(3, 1, 3, '2022-11-10 12:30:47', NULL),
(4, 2, 6, '2022-11-10 12:34:09', NULL),
(5, 3, 8, '2022-11-09 21:00:00', NULL),
(6, 3, 9, '2022-11-10 12:29:54', NULL),
(7, 3, 10, '2022-11-10 12:33:41', NULL),
(8, 2, 4, '2022-11-10 12:34:45', NULL),
(9, 2, 5, '2022-11-09 21:00:00', NULL),
(10, 4, 11, '2022-11-10 12:35:16', NULL),
(11, 4, 12, '2022-11-10 12:35:16', NULL),
(12, 4, 13, '2022-11-10 12:35:44', NULL),
(13, 5, 14, '2022-11-10 12:36:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `car_brands`
--

CREATE TABLE `car_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `car_brands`
--

INSERT INTO `car_brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mercedes-Benz', '2022-11-09 21:00:00', NULL),
(2, 'BMW', '2022-11-10 12:23:09', NULL),
(3, 'Audi', '2022-11-10 12:23:41', NULL),
(4, 'Lada', '2022-11-09 21:00:00', NULL),
(5, 'Aurus', '2022-11-09 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `car_models`
--

CREATE TABLE `car_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `car_models`
--

INSERT INTO `car_models` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'E Class', '2022-11-10 12:29:54', NULL),
(2, 'S Class', '2022-11-10 12:29:54', NULL),
(3, 'C Class\r\n', '2022-11-10 12:29:54', NULL),
(4, 'M5', '2022-11-10 12:29:54', NULL),
(5, 'M3', '2022-11-10 12:29:54', NULL),
(6, '7 series', '2022-11-10 12:29:54', NULL),
(8, 'A4', '2022-11-10 12:29:54', NULL),
(9, 'A6', '2022-11-10 12:29:54', NULL),
(10, 'A8', '2022-11-10 12:29:54', NULL),
(11, 'Granta', '2022-11-10 12:29:54', NULL),
(12, 'Largus', '2022-11-10 12:29:54', NULL),
(13, 'Granta GT', '2022-11-10 12:29:54', NULL),
(14, 'Senat', '2022-11-10 12:29:54', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_10_105021_create_car_brands_table', 2),
(6, '2022_11_10_105434_create_car_models_table', 2),
(8, '2022_11_10_105724_create_user_cars_rent_table', 3),
(9, '2022_11_10_112533_create_cars_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hakob', 'hakobsargsyan94@gmail.com', '2022-11-09 20:11:28', '$2a$12$ElAH13xzpmF1Ts01mGlqwOKUxtn.1rWymakKTw2JPCJUPscBvk.2y', NULL, '2022-11-09 20:11:28', NULL),
(2, 'Ashot', 'ashot@gmail.com', '2022-11-09 20:11:28', '$2a$12$ElAH13xzpmF1Ts01mGlqwOKUxtn.1rWymakKTw2JPCJUPscBvk.2y', NULL, '2022-11-09 20:11:28', NULL),
(3, 'Armen', 'armen@gmail.com', '2022-11-09 20:11:28', '$2a$12$ElAH13xzpmF1Ts01mGlqwOKUxtn.1rWymakKTw2JPCJUPscBvk.2y', NULL, '2022-11-09 20:11:28', NULL),
(4, 'Liana', 'liana@gmail.com', '2022-11-09 20:11:28', '$2a$12$ElAH13xzpmF1Ts01mGlqwOKUxtn.1rWymakKTw2JPCJUPscBvk.2y', NULL, '2022-11-09 20:11:28', NULL),
(5, 'Samvel', 'samvel@gmail.com', '2022-11-09 20:11:28', '$2a$12$ElAH13xzpmF1Ts01mGlqwOKUxtn.1rWymakKTw2JPCJUPscBvk.2y', NULL, '2022-11-09 20:11:28', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_cars_rent`
--

CREATE TABLE `user_cars_rent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_cars_rent`
--

INSERT INTO `user_cars_rent` (`id`, `user_id`, `car_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2022-11-10 13:34:49', NULL),
(3, 4, 4, '2022-11-10 10:12:12', '2022-11-10 10:12:12'),
(4, 2, 1, '2022-11-10 10:32:15', '2022-11-10 10:32:15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cars_car_brand_id_car_model_id_unique` (`car_brand_id`,`car_model_id`);

--
-- Индексы таблицы `car_brands`
--
ALTER TABLE `car_brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `user_cars_rent`
--
ALTER TABLE `user_cars_rent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_cars_rent_user_id_car_id_unique` (`user_id`,`car_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `car_brands`
--
ALTER TABLE `car_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `car_models`
--
ALTER TABLE `car_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user_cars_rent`
--
ALTER TABLE `user_cars_rent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
