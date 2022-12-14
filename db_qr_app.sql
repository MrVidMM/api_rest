-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2022 a las 03:22:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_qr_app`
--
CREATE DATABASE IF NOT EXISTS `db_qr_app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_qr_app`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `nombre` varchar(100) NOT NULL,
  `id_asig` int(11) NOT NULL,
  `run` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`nombre`, `id_asig`, `run`) VALUES
('ESTADISTICA DESCRIPTIVA', 1, 22222222),
('PROGRAMACION DE APLICACIONES MOVILES', 2, 11111111),
('MATEMATICA APLICADA', 3, 22222222),
('PROGRAMACION WEB', 4, 11111111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asis` int(11) NOT NULL,
  `run` int(11) DEFAULT NULL,
  `id_jornada` int(11) DEFAULT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `asistencia` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id_asis`, `run`, `id_jornada`, `id_seccion`, `asistencia`) VALUES
(1, 20906454, 1, 1, 0),
(2, 20906454, 1, 2, 0),
(3, 20906454, 2, 3, 0),
(4, 20906454, 2, 4, 0),
(5, 20906454, 3, 5, 0),
(6, 20906454, 3, 6, 0),
(7, 20906454, 4, 7, 0),
(8, 20906454, 4, 8, 0),
(9, 20906454, 5, 9, 0),
(10, 20906454, 5, 10, 0),
(11, 20906454, 6, 11, 0),
(12, 20906454, 6, 12, 0),
(13, 20906454, 7, 13, 0),
(14, 20906454, 7, 14, 0),
(15, 20906454, 8, 15, 0),
(16, 20906454, 8, 16, 0),
(17, 20906454, 9, 17, 0),
(18, 20906454, 9, 18, 0),
(19, 20906454, 10, 19, 0),
(20, 20906454, 10, 20, 0),
(21, 20906454, 11, 21, 0),
(22, 20906454, 11, 22, 0),
(23, 20906454, 12, 23, 0),
(24, 20906454, 12, 24, 0),
(25, 20906454, 13, 25, 0),
(26, 20906454, 13, 26, 0),
(27, 20906454, 14, 27, 0),
(28, 20906454, 14, 28, 0),
(29, 20906454, 15, 29, 0),
(30, 20906454, 15, 30, 0),
(31, 20906454, 16, 31, 0),
(32, 20906454, 16, 32, 0),
(33, 21189889, 1, 1, 0),
(34, 21189889, 1, 2, 0),
(35, 21189889, 2, 3, 0),
(36, 21189889, 2, 4, 0),
(37, 21189889, 3, 5, 0),
(38, 21189889, 3, 6, 0),
(39, 21189889, 4, 7, 0),
(40, 21189889, 4, 8, 0),
(41, 21189889, 5, 9, 0),
(42, 21189889, 5, 10, 0),
(43, 21189889, 6, 11, 0),
(44, 21189889, 6, 12, 0),
(45, 21189889, 7, 13, 0),
(46, 21189889, 7, 14, 0),
(47, 21189889, 8, 15, 0),
(48, 21189889, 8, 16, 0),
(49, 21189889, 9, 17, 0),
(50, 21189889, 9, 18, 0),
(51, 21189889, 10, 19, 0),
(52, 21189889, 10, 20, 0),
(53, 21189889, 11, 21, 0),
(54, 21189889, 11, 22, 0),
(55, 21189889, 12, 23, 0),
(56, 21189889, 12, 24, 0),
(57, 21189889, 13, 25, 0),
(58, 21189889, 13, 26, 0),
(59, 21189889, 14, 27, 0),
(60, 21189889, 14, 28, 0),
(61, 21189889, 15, 29, 0),
(62, 21189889, 15, 30, 0),
(63, 21189889, 16, 31, 0),
(64, 21189889, 16, 32, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add asignatura', 7, 'add_asignatura'),
(26, 'Can change asignatura', 7, 'change_asignatura'),
(27, 'Can delete asignatura', 7, 'delete_asignatura'),
(28, 'Can view asignatura', 7, 'view_asignatura'),
(29, 'Can add curso', 8, 'add_curso'),
(30, 'Can change curso', 8, 'change_curso'),
(31, 'Can delete curso', 8, 'delete_curso'),
(32, 'Can view curso', 8, 'view_curso'),
(33, 'Can add estudiante', 9, 'add_estudiante'),
(34, 'Can change estudiante', 9, 'change_estudiante'),
(35, 'Can delete estudiante', 9, 'delete_estudiante'),
(36, 'Can view estudiante', 9, 'view_estudiante'),
(37, 'Can add profesor', 10, 'add_profesor'),
(38, 'Can change profesor', 10, 'change_profesor'),
(39, 'Can delete profesor', 10, 'delete_profesor'),
(40, 'Can view profesor', 10, 'view_profesor'),
(41, 'Can add tipo user', 11, 'add_tipouser'),
(42, 'Can change tipo user', 11, 'change_tipouser'),
(43, 'Can delete tipo user', 11, 'delete_tipouser'),
(44, 'Can view tipo user', 11, 'view_tipouser');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'API', 'asignatura'),
(8, 'API', 'curso'),
(9, 'API', 'estudiante'),
(10, 'API', 'profesor'),
(11, 'API', 'tipouser'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-01 02:11:56.944689'),
(2, 'auth', '0001_initial', '2022-10-01 02:11:57.201878'),
(3, 'admin', '0001_initial', '2022-10-01 02:11:57.267017'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-01 02:11:57.272005'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-01 02:11:57.278304'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-01 02:11:57.321583'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-01 02:11:57.350781'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-01 02:11:57.367594'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-01 02:11:57.375073'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-01 02:11:57.406391'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-01 02:11:57.408384'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-01 02:11:57.413368'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-01 02:11:57.427804'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-01 02:11:57.438861'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-01 02:11:57.452739'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-01 02:11:57.458719'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-01 02:11:57.470668'),
(18, 'sessions', '0001_initial', '2022-10-01 02:11:57.491626'),
(19, 'API', '0001_initial', '2022-10-12 01:25:51.029475');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `id_jornada` int(11) NOT NULL,
  `sigla` varchar(8) NOT NULL,
  `jornada` varchar(10) NOT NULL,
  `id_asig` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id_jornada`, `sigla`, `jornada`, `id_asig`) VALUES
(1, 'MAT4140', 'DIURNO', 1),
(2, 'MAT4141', 'DIURNO', 1),
(3, 'MAT5150', 'VESPERTINO', 1),
(4, 'MAT5151', 'VESPERTINO', 1),
(5, 'MATE4140', 'DIURNO', 3),
(6, 'MATE4141', 'DIURNO', 3),
(7, 'MATE4140', 'VESPERTINO', 3),
(8, 'MATE4141', 'VESPERTINO', 3),
(9, 'PGY4140', 'DIURNO', 2),
(10, 'PGY4141', 'DIURNO', 2),
(11, 'PGY5150', 'VESPERTINO', 2),
(12, 'PGY5151', 'VESPERTINO', 2),
(13, 'WEB4140', 'DIURNO', 4),
(14, 'WEB4141', 'DIURNO', 4),
(15, 'WEB5150', 'VESPERTINO', 4),
(16, 'WEB5150', 'VESPERTINO', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(11) NOT NULL,
  `seccion` varchar(6) NOT NULL,
  `id_jornada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id_seccion`, `seccion`, `id_jornada`) VALUES
(1, '001D', 1),
(2, '002D', 1),
(3, '003D', 2),
(4, '004D', 2),
(5, '005V', 3),
(6, '006V', 3),
(7, '007V', 4),
(8, '008V', 4),
(9, '009D', 5),
(10, '010D', 5),
(11, '011D', 6),
(12, '012D', 6),
(13, '013V', 7),
(14, '014V', 7),
(15, '015V', 8),
(16, '016V', 8),
(17, '017D', 9),
(18, '018D', 9),
(19, '019D', 10),
(20, '020D', 10),
(21, '021V', 11),
(22, '022V', 11),
(23, '023V', 12),
(24, '024V', 12),
(25, '025D', 13),
(26, '026D', 13),
(27, '027D', 14),
(28, '028D', 14),
(29, '029V', 15),
(30, '030V', 15),
(31, '031V', 16),
(32, '032V', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_user`
--

CREATE TABLE `tipo_user` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_user`
--

INSERT INTO `tipo_user` (`id_tipo`, `tipo`) VALUES
(1, 'Admin'),
(2, 'Alumno'),
(3, 'Profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `run` int(11) NOT NULL,
  `dv` varchar(1) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `appaterno` varchar(30) NOT NULL,
  `apmaterno` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `id_tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`run`, `dv`, `nombre`, `appaterno`, `apmaterno`, `user`, `contrasena`, `id_tipo`) VALUES
(11111111, '1', 'FREDDY', 'CAMPOS', 'ORELLANA', 'fre.camposo', '11111111', 3),
(20906454, '5', 'David', 'Martinez', 'Manciet', 'dav.martinez', '20906454', 2),
(21189889, '5', 'Javier', 'Inostroza', 'Marambio', 'ja.inostroza', '21189889', 2),
(22222222, '2', 'JUAN', 'BARRERA', 'LABRA', 'ju.barrera', '22222222', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id_asig`),
  ADD KEY `run` (`run`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asis`),
  ADD KEY `run` (`run`),
  ADD KEY `id_jornada` (`id_jornada`),
  ADD KEY `id_seccion` (`id_seccion`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id_jornada`),
  ADD KEY `id_asig` (`id_asig`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`),
  ADD KEY `id_jornada` (`id_jornada`);

--
-- Indices de la tabla `tipo_user`
--
ALTER TABLE `tipo_user`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`run`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id_asig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id_jornada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `tipo_user`
--
ALTER TABLE `tipo_user`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
