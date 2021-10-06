# ************************************************************
# Sequel Ace SQL dump
# Version 3030
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.22)
# Database: school
# Generation Time: 2021-10-06 14:57:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table branchs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `branchs`;

CREATE TABLE `branchs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Code` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users_permissions_user` int DEFAULT NULL,
  `admin_user` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreateTerminal` varchar(255) DEFAULT NULL,
  `UpdateBy` int DEFAULT NULL,
  `UpdateTerminal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `branchs` WRITE;
/*!40000 ALTER TABLE `branchs` DISABLE KEYS */;

INSERT INTO `branchs` (`id`, `Code`, `Name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `users_permissions_user`, `admin_user`, `CreatedBy`, `CreateTerminal`, `UpdateBy`, `UpdateTerminal`)
VALUES
	(2,'dfdasfd','fadsfdasf','2021-10-06 14:31:58',1,1,'2021-10-06 11:16:33','2021-10-06 14:31:58',NULL,NULL,NULL,'fadsfdfads',NULL,'dsafdsf');

/*!40000 ALTER TABLE `branchs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalogs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogs`;

CREATE TABLE `catalogs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ControlNumber` varchar(255) DEFAULT NULL,
  `BBID` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Eddition` varchar(255) DEFAULT NULL,
  `Pubblisher` varchar(255) DEFAULT NULL,
  `PublishLocation` varchar(255) DEFAULT NULL,
  `PublishYear` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `PhysicalDescription` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `CallNumber` varchar(255) DEFAULT NULL,
  `Note` varchar(255) DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL,
  `DeweyNo` varchar(255) DEFAULT NULL,
  `ApproveDateOPAC` datetime DEFAULT NULL,
  `IsOPAC` varchar(255) DEFAULT NULL,
  `IsBNI` tinyint(1) DEFAULT NULL,
  `IsKIN` tinyint(1) DEFAULT NULL,
  `IsRDA` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `branch` int DEFAULT NULL,
  `branchs` int DEFAULT NULL,
  `CreateTerminal` varchar(255) DEFAULT NULL,
  `UpdateTerminal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table components_adfdsf_tes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `components_adfdsf_tes`;

CREATE TABLE `components_adfdsf_tes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table core_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_store`;

CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`)
VALUES
	(1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),
	(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),
	(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),
	(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),
	(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),
	(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(10,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(11,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),
	(12,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),
	(13,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),
	(14,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),
	(15,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),
	(16,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]],\"editRelations\":[\"role\"]}}','object','',''),
	(17,'plugin_i18n_default_locale','\"en\"','string','',''),
	(18,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),
	(19,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),
	(20,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),
	(21,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),
	(22,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),
	(23,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),
	(24,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),
	(25,'model_def_application::catalogs.catalogs','{\"uid\":\"application::catalogs.catalogs\",\"collectionName\":\"catalogs\",\"kind\":\"collectionType\",\"info\":{\"name\":\"catalogs\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"ControlNumber\":{\"type\":\"string\"},\"BBID\":{\"type\":\"string\"},\"Title\":{\"type\":\"string\"},\"Author\":{\"type\":\"string\"},\"Eddition\":{\"type\":\"string\"},\"Pubblisher\":{\"type\":\"string\"},\"PublishLocation\":{\"type\":\"string\"},\"PublishYear\":{\"type\":\"string\"},\"Subject\":{\"type\":\"string\"},\"PhysicalDescription\":{\"type\":\"string\"},\"ISBN\":{\"type\":\"string\"},\"CallNumber\":{\"type\":\"string\"},\"Note\":{\"type\":\"string\"},\"Language\":{\"type\":\"string\"},\"DeweyNo\":{\"type\":\"string\"},\"ApproveDateOPAC\":{\"type\":\"datetime\"},\"IsOPAC\":{\"type\":\"string\"},\"IsBNI\":{\"type\":\"boolean\"},\"IsKIN\":{\"type\":\"boolean\"},\"IsRDA\":{\"type\":\"boolean\"},\"CoverURL\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"branchs\":{\"model\":\"branchs\"},\"CreateTerminal\":{\"type\":\"string\"},\"UpdateTerminal\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(26,'plugin_content_manager_configuration_content_types::application::catalogs.catalogs','{\"uid\":\"application::catalogs.catalogs\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ControlNumber\",\"defaultSortBy\":\"ControlNumber\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ControlNumber\":{\"edit\":{\"label\":\"ControlNumber\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ControlNumber\",\"searchable\":true,\"sortable\":true}},\"BBID\":{\"edit\":{\"label\":\"BBID\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BBID\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Author\":{\"edit\":{\"label\":\"Author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Author\",\"searchable\":true,\"sortable\":true}},\"Eddition\":{\"edit\":{\"label\":\"Eddition\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Eddition\",\"searchable\":true,\"sortable\":true}},\"Pubblisher\":{\"edit\":{\"label\":\"Pubblisher\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pubblisher\",\"searchable\":true,\"sortable\":true}},\"PublishLocation\":{\"edit\":{\"label\":\"PublishLocation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PublishLocation\",\"searchable\":true,\"sortable\":true}},\"PublishYear\":{\"edit\":{\"label\":\"PublishYear\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PublishYear\",\"searchable\":true,\"sortable\":true}},\"Subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"PhysicalDescription\":{\"edit\":{\"label\":\"PhysicalDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PhysicalDescription\",\"searchable\":true,\"sortable\":true}},\"ISBN\":{\"edit\":{\"label\":\"ISBN\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ISBN\",\"searchable\":true,\"sortable\":true}},\"CallNumber\":{\"edit\":{\"label\":\"CallNumber\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CallNumber\",\"searchable\":true,\"sortable\":true}},\"Note\":{\"edit\":{\"label\":\"Note\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Note\",\"searchable\":true,\"sortable\":true}},\"Language\":{\"edit\":{\"label\":\"Language\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Language\",\"searchable\":true,\"sortable\":true}},\"DeweyNo\":{\"edit\":{\"label\":\"DeweyNo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DeweyNo\",\"searchable\":true,\"sortable\":true}},\"ApproveDateOPAC\":{\"edit\":{\"label\":\"ApproveDateOPAC\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ApproveDateOPAC\",\"searchable\":true,\"sortable\":true}},\"IsOPAC\":{\"edit\":{\"label\":\"IsOPAC\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsOPAC\",\"searchable\":true,\"sortable\":true}},\"IsBNI\":{\"edit\":{\"label\":\"IsBNI\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsBNI\",\"searchable\":true,\"sortable\":true}},\"IsKIN\":{\"edit\":{\"label\":\"IsKIN\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsKIN\",\"searchable\":true,\"sortable\":true}},\"IsRDA\":{\"edit\":{\"label\":\"IsRDA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsRDA\",\"searchable\":true,\"sortable\":true}},\"CoverURL\":{\"edit\":{\"label\":\"CoverURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CoverURL\",\"searchable\":false,\"sortable\":false}},\"branchs\":{\"edit\":{\"label\":\"Branchs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Code\"},\"list\":{\"label\":\"Branchs\",\"searchable\":true,\"sortable\":true}},\"CreateTerminal\":{\"edit\":{\"label\":\"CreateTerminal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CreateTerminal\",\"searchable\":true,\"sortable\":true}},\"UpdateTerminal\":{\"edit\":{\"label\":\"UpdateTerminal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UpdateTerminal\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"ControlNumber\",\"BBID\",\"Title\"],\"edit\":[[{\"name\":\"ControlNumber\",\"size\":6},{\"name\":\"BBID\",\"size\":6}],[{\"name\":\"Title\",\"size\":6},{\"name\":\"Author\",\"size\":6}],[{\"name\":\"Eddition\",\"size\":6},{\"name\":\"Pubblisher\",\"size\":6}],[{\"name\":\"PublishLocation\",\"size\":6},{\"name\":\"PublishYear\",\"size\":6}],[{\"name\":\"Subject\",\"size\":6},{\"name\":\"PhysicalDescription\",\"size\":6}],[{\"name\":\"ISBN\",\"size\":6},{\"name\":\"CallNumber\",\"size\":6}],[{\"name\":\"Note\",\"size\":6},{\"name\":\"Language\",\"size\":6}],[{\"name\":\"DeweyNo\",\"size\":6},{\"name\":\"ApproveDateOPAC\",\"size\":6}],[{\"name\":\"IsOPAC\",\"size\":6},{\"name\":\"IsBNI\",\"size\":4}],[{\"name\":\"IsKIN\",\"size\":4},{\"name\":\"IsRDA\",\"size\":4}],[{\"name\":\"CoverURL\",\"size\":6},{\"name\":\"CreateTerminal\",\"size\":6}],[{\"name\":\"UpdateTerminal\",\"size\":6}]],\"editRelations\":[\"branchs\"]}}','object','',''),
	(27,'model_def_application::branchs.branchs','{\"uid\":\"application::branchs.branchs\",\"collectionName\":\"branchs\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Branchs\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Code\":{\"type\":\"string\"},\"Name\":{\"type\":\"string\"},\"CreateTerminal\":{\"type\":\"string\"},\"UpdateTerminal\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(28,'plugin_content_manager_configuration_content_types::application::branchs.branchs','{\"uid\":\"application::branchs.branchs\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Code\",\"defaultSortBy\":\"Code\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"CreateTerminal\":{\"edit\":{\"label\":\"CreateTerminal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CreateTerminal\",\"searchable\":true,\"sortable\":true}},\"UpdateTerminal\":{\"edit\":{\"label\":\"UpdateTerminal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UpdateTerminal\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Code\",\"Name\",\"created_at\"],\"edit\":[[{\"name\":\"Code\",\"size\":6},{\"name\":\"Name\",\"size\":6}],[{\"name\":\"CreateTerminal\",\"size\":6},{\"name\":\"UpdateTerminal\",\"size\":6}]],\"editRelations\":[]}}','object','',''),
	(29,'model_def_application::worksheets.worksheets','{\"uid\":\"application::worksheets.worksheets\",\"collectionName\":\"worksheets\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Worksheets\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Name\":{\"type\":\"string\"},\"Format_id\":{\"type\":\"integer\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(30,'plugin_content_manager_configuration_content_types::application::worksheets.worksheets','{\"uid\":\"application::worksheets.worksheets\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Format_id\":{\"edit\":{\"label\":\"Format_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Format_id\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"Name\",\"size\":6},{\"name\":\"Format_id\",\"size\":4}]],\"editRelations\":[]}}','object','',''),
	(31,'model_def_application::formats.formats','{\"uid\":\"application::formats.formats\",\"collectionName\":\"formats\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Formats\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Code\":{\"type\":\"string\"},\"Name\":{\"type\":\"string\"},\"CreateTerminal\":{\"type\":\"string\"},\"UpdateTerminal\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(32,'plugin_content_manager_configuration_content_types::application::formats.formats','{\"uid\":\"application::formats.formats\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Code\",\"defaultSortBy\":\"Code\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"CreateTerminal\":{\"edit\":{\"label\":\"CreateTerminal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CreateTerminal\",\"searchable\":true,\"sortable\":true}},\"UpdateTerminal\":{\"edit\":{\"label\":\"UpdateTerminal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UpdateTerminal\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Code\",\"Name\"],\"edit\":[[{\"name\":\"Code\",\"size\":6},{\"name\":\"Name\",\"size\":6}],[{\"name\":\"CreateTerminal\",\"size\":6}],[{\"name\":\"UpdateTerminal\",\"size\":6}]],\"editRelations\":[]}}','object','',''),
	(33,'model_def_adfdsf.tes','{\"uid\":\"adfdsf.tes\",\"collectionName\":\"components_adfdsf_tes\",\"info\":{\"name\":\"tes\",\"icon\":\"archive\"},\"options\":{\"timestamps\":false},\"attributes\":{\"tes\":{\"type\":\"string\"}}}','object',NULL,NULL),
	(34,'plugin_content_manager_configuration_components::adfdsf.tes','{\"uid\":\"adfdsf.tes\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"tes\",\"defaultSortBy\":\"tes\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"tes\":{\"edit\":{\"label\":\"Tes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tes\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"tes\"],\"edit\":[[{\"name\":\"tes\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),
	(35,'model_def_application::tes.tes','{\"uid\":\"application::tes.tes\",\"collectionName\":\"tes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"tes\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"te\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),
	(36,'plugin_content_manager_configuration_content_types::application::tes.tes','{\"uid\":\"application::tes.tes\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"te\",\"defaultSortBy\":\"te\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"te\":{\"edit\":{\"label\":\"Te\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Te\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"te\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"te\",\"size\":6}]]}}','object','','');

/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table formats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `formats`;

CREATE TABLE `formats` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Code` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `admin_user` int DEFAULT NULL,
  `CreateTerminal` varchar(255) DEFAULT NULL,
  `UpdateBy` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateBy` varchar(255) DEFAULT NULL,
  `UpdateTerminal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table i18n_locales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `i18n_locales`;

CREATE TABLE `i18n_locales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `i18n_locales` WRITE;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;

INSERT INTO `i18n_locales` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`)
VALUES
	(1,'English (en)','en',NULL,NULL,'2021-10-06 09:56:29','2021-10-06 09:56:29');

/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table strapi_administrator
# ------------------------------------------------------------

DROP TABLE IF EXISTS `strapi_administrator`;

CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`, `preferedLanguage`)
VALUES
	(1,'Alfonso Ricky','Ananditya',NULL,'alfonsorickykurnia@gmail.com','$2a$10$M4.5bLyQ5J8WDzjklbBWb.8zhCz31VT.DmigM77ClFKIgeS581cGy',NULL,NULL,1,NULL,NULL);

/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table strapi_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `strapi_permission`;

CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `properties`, `conditions`, `role`, `created_at`, `updated_at`)
VALUES
	(1,'plugins::upload.read',NULL,'{}','[]',2,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(2,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(3,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(4,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(5,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(6,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(7,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(8,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(9,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(10,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(15,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(16,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(17,'plugins::upload.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(18,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(19,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(20,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(21,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(22,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(23,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(24,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(25,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(26,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(27,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(28,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(29,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(30,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(31,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(32,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(33,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(34,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(35,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(36,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(37,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(38,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(39,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(40,'admin::marketplace.read',NULL,'{}','[]',1,'2021-10-06 09:56:35','2021-10-06 09:56:35'),
	(41,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(42,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(43,'admin::webhooks.create',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(44,'admin::webhooks.read',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(45,'admin::webhooks.update',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(46,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(47,'admin::users.create',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(48,'admin::users.read',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(49,'admin::users.update',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(50,'admin::users.delete',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(51,'admin::roles.create',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(52,'admin::roles.read',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(53,'admin::roles.update',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(54,'admin::roles.delete',NULL,'{}','[]',1,'2021-10-06 09:56:36','2021-10-06 09:56:36'),
	(81,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-10-06 10:28:17','2021-10-06 10:28:18'),
	(83,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-10-06 10:28:17','2021-10-06 10:28:18'),
	(85,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-10-06 10:28:17','2021-10-06 10:28:18'),
	(141,'plugins::content-manager.explorer.create','application::worksheets.worksheets','{\"fields\":[\"Name\",\"Format_id\"]}','[]',1,'2021-10-06 11:10:09','2021-10-06 11:10:09'),
	(142,'plugins::content-manager.explorer.read','application::worksheets.worksheets','{\"fields\":[\"Name\",\"Format_id\"]}','[]',1,'2021-10-06 11:10:09','2021-10-06 11:10:09'),
	(143,'plugins::content-manager.explorer.update','application::worksheets.worksheets','{\"fields\":[\"Name\",\"Format_id\"]}','[]',1,'2021-10-06 11:10:09','2021-10-06 11:10:09'),
	(187,'plugins::content-manager.explorer.create','application::branchs.branchs','{\"fields\":[\"Code\",\"Name\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:17:00','2021-10-06 11:17:00'),
	(188,'plugins::content-manager.explorer.read','application::branchs.branchs','{\"fields\":[\"Code\",\"Name\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:17:00','2021-10-06 11:17:00'),
	(189,'plugins::content-manager.explorer.update','application::branchs.branchs','{\"fields\":[\"Code\",\"Name\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:17:00','2021-10-06 11:17:00'),
	(211,'plugins::content-manager.explorer.create','application::formats.formats','{\"fields\":[\"Code\",\"Name\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:17:43','2021-10-06 11:17:43'),
	(212,'plugins::content-manager.explorer.read','application::formats.formats','{\"fields\":[\"Code\",\"Name\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:17:43','2021-10-06 11:17:43'),
	(213,'plugins::content-manager.explorer.update','application::formats.formats','{\"fields\":[\"Code\",\"Name\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:17:43','2021-10-06 11:17:43'),
	(232,'plugins::content-manager.explorer.create','application::catalogs.catalogs','{\"fields\":[\"ControlNumber\",\"BBID\",\"Title\",\"Author\",\"Eddition\",\"Pubblisher\",\"PublishLocation\",\"PublishYear\",\"Subject\",\"PhysicalDescription\",\"ISBN\",\"CallNumber\",\"Note\",\"Language\",\"DeweyNo\",\"ApproveDateOPAC\",\"IsOPAC\",\"IsBNI\",\"IsKIN\",\"IsRDA\",\"CoverURL\",\"branchs\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:25:25','2021-10-06 11:25:25'),
	(233,'plugins::content-manager.explorer.read','application::catalogs.catalogs','{\"fields\":[\"ControlNumber\",\"BBID\",\"Title\",\"Author\",\"Eddition\",\"Pubblisher\",\"PublishLocation\",\"PublishYear\",\"Subject\",\"PhysicalDescription\",\"ISBN\",\"CallNumber\",\"Note\",\"Language\",\"DeweyNo\",\"ApproveDateOPAC\",\"IsOPAC\",\"IsBNI\",\"IsKIN\",\"IsRDA\",\"CoverURL\",\"branchs\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:25:25','2021-10-06 11:25:25'),
	(234,'plugins::content-manager.explorer.update','application::catalogs.catalogs','{\"fields\":[\"ControlNumber\",\"BBID\",\"Title\",\"Author\",\"Eddition\",\"Pubblisher\",\"PublishLocation\",\"PublishYear\",\"Subject\",\"PhysicalDescription\",\"ISBN\",\"CallNumber\",\"Note\",\"Language\",\"DeweyNo\",\"ApproveDateOPAC\",\"IsOPAC\",\"IsBNI\",\"IsKIN\",\"IsRDA\",\"CoverURL\",\"branchs\",\"CreateTerminal\",\"UpdateTerminal\"]}','[]',1,'2021-10-06 11:25:25','2021-10-06 11:25:25'),
	(253,'plugins::content-manager.explorer.create','application::tes.tes','{\"fields\":[\"te\"]}','[]',1,'2021-10-06 14:41:34','2021-10-06 14:41:34'),
	(254,'plugins::content-manager.explorer.read','application::tes.tes','{\"fields\":[\"te\"]}','[]',1,'2021-10-06 14:41:34','2021-10-06 14:41:34'),
	(255,'plugins::content-manager.explorer.update','application::tes.tes','{\"fields\":[\"te\"]}','[]',1,'2021-10-06 14:41:34','2021-10-06 14:41:34'),
	(267,'plugins::content-manager.explorer.delete','application::branchs.branchs','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(268,'plugins::content-manager.explorer.delete','application::catalogs.catalogs','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(269,'plugins::content-manager.explorer.delete','application::formats.formats','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(270,'plugins::content-manager.explorer.delete','application::tes.tes','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(271,'plugins::content-manager.explorer.delete','application::worksheets.worksheets','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(272,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(273,'plugins::content-manager.explorer.publish','application::branchs.branchs','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(274,'plugins::content-manager.explorer.publish','application::catalogs.catalogs','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(275,'plugins::content-manager.explorer.publish','application::formats.formats','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(276,'plugins::content-manager.explorer.publish','application::tes.tes','{}','[]',1,'2021-10-06 14:56:43','2021-10-06 14:56:44'),
	(277,'plugins::content-manager.explorer.publish','application::worksheets.worksheets','{}','[]',1,'2021-10-06 14:56:44','2021-10-06 14:56:44');

/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table strapi_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `strapi_role`;

CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-10-06 09:56:34','2021-10-06 09:56:34'),
	(3,'Author','strapi-author','Authors can manage the content they have created.','2021-10-06 09:56:34','2021-10-06 09:56:34');

/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table strapi_users_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `strapi_users_roles`;

CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`)
VALUES
	(1,1,1);

/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table strapi_webhooks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `strapi_webhooks`;

CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tes`;

CREATE TABLE `tes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `te` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table upload_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `upload_file`;

CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table upload_file_morph
# ------------------------------------------------------------

DROP TABLE IF EXISTS `upload_file_morph`;

CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table users-permissions_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users-permissions_permission`;

CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`)
VALUES
	(1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),
	(2,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),
	(3,'content-manager','collection-types','create',0,'',1,NULL,NULL),
	(4,'content-manager','collection-types','create',0,'',2,NULL,NULL),
	(5,'content-manager','collection-types','delete',0,'',1,NULL,NULL),
	(6,'content-manager','collection-types','find',0,'',1,NULL,NULL),
	(7,'content-manager','collection-types','delete',0,'',2,NULL,NULL),
	(8,'content-manager','collection-types','find',0,'',2,NULL,NULL),
	(9,'content-manager','collection-types','findone',0,'',1,NULL,NULL),
	(10,'content-manager','collection-types','findone',0,'',2,NULL,NULL),
	(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),
	(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),
	(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),
	(14,'content-manager','collection-types','publish',0,'',2,NULL,NULL),
	(15,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),
	(16,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),
	(17,'content-manager','collection-types','update',0,'',1,NULL,NULL),
	(18,'content-manager','collection-types','update',0,'',2,NULL,NULL),
	(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),
	(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),
	(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),
	(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),
	(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),
	(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),
	(25,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),
	(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),
	(27,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),
	(28,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),
	(29,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),
	(30,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),
	(31,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),
	(32,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),
	(33,'content-manager','relations','find',0,'',1,NULL,NULL),
	(34,'content-manager','relations','find',0,'',2,NULL,NULL),
	(35,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),
	(36,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),
	(37,'content-manager','single-types','delete',0,'',1,NULL,NULL),
	(38,'content-manager','single-types','delete',0,'',2,NULL,NULL),
	(39,'content-manager','single-types','find',0,'',1,NULL,NULL),
	(40,'content-manager','single-types','find',0,'',2,NULL,NULL),
	(41,'content-manager','single-types','publish',0,'',1,NULL,NULL),
	(42,'content-manager','single-types','publish',0,'',2,NULL,NULL),
	(43,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),
	(44,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),
	(45,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),
	(46,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),
	(47,'content-manager','uid','generateuid',0,'',1,NULL,NULL),
	(48,'content-manager','uid','generateuid',0,'',2,NULL,NULL),
	(49,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),
	(50,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),
	(51,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),
	(52,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),
	(53,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),
	(54,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),
	(55,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),
	(56,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),
	(57,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),
	(58,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),
	(59,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),
	(60,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),
	(61,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),
	(62,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),
	(63,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),
	(64,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),
	(65,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),
	(66,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),
	(67,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),
	(68,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),
	(69,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),
	(70,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),
	(71,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),
	(72,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),
	(73,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),
	(74,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),
	(75,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),
	(76,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),
	(77,'email','email','getsettings',0,'',1,NULL,NULL),
	(78,'email','email','getsettings',0,'',2,NULL,NULL),
	(79,'email','email','send',0,'',1,NULL,NULL),
	(80,'email','email','send',0,'',2,NULL,NULL),
	(81,'email','email','test',0,'',1,NULL,NULL),
	(82,'email','email','test',0,'',2,NULL,NULL),
	(83,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),
	(84,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),
	(85,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),
	(86,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),
	(87,'i18n','locales','createlocale',0,'',1,NULL,NULL),
	(88,'i18n','locales','createlocale',0,'',2,NULL,NULL),
	(89,'i18n','locales','deletelocale',0,'',1,NULL,NULL),
	(90,'i18n','locales','deletelocale',0,'',2,NULL,NULL),
	(91,'i18n','locales','listlocales',0,'',1,NULL,NULL),
	(92,'i18n','locales','listlocales',0,'',2,NULL,NULL),
	(93,'i18n','locales','updatelocale',0,'',1,NULL,NULL),
	(94,'i18n','locales','updatelocale',0,'',2,NULL,NULL),
	(95,'upload','upload','count',0,'',1,NULL,NULL),
	(96,'upload','upload','count',0,'',2,NULL,NULL),
	(97,'upload','upload','destroy',0,'',1,NULL,NULL),
	(98,'upload','upload','destroy',0,'',2,NULL,NULL),
	(99,'upload','upload','find',0,'',1,NULL,NULL),
	(100,'upload','upload','find',0,'',2,NULL,NULL),
	(101,'upload','upload','findone',0,'',1,NULL,NULL),
	(102,'upload','upload','findone',0,'',2,NULL,NULL),
	(103,'upload','upload','getsettings',0,'',1,NULL,NULL),
	(104,'upload','upload','getsettings',0,'',2,NULL,NULL),
	(105,'upload','upload','search',0,'',1,NULL,NULL),
	(106,'upload','upload','search',0,'',2,NULL,NULL),
	(107,'upload','upload','updatesettings',0,'',1,NULL,NULL),
	(108,'upload','upload','updatesettings',0,'',2,NULL,NULL),
	(109,'upload','upload','upload',0,'',1,NULL,NULL),
	(110,'upload','upload','upload',0,'',2,NULL,NULL),
	(111,'users-permissions','auth','callback',0,'',1,NULL,NULL),
	(112,'users-permissions','auth','callback',1,'',2,NULL,NULL),
	(113,'users-permissions','auth','connect',1,'',1,NULL,NULL),
	(114,'users-permissions','auth','connect',1,'',2,NULL,NULL),
	(115,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),
	(116,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),
	(117,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),
	(118,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),
	(119,'users-permissions','auth','register',0,'',1,NULL,NULL),
	(120,'users-permissions','auth','register',1,'',2,NULL,NULL),
	(121,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),
	(122,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),
	(123,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),
	(124,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),
	(125,'users-permissions','user','count',0,'',1,NULL,NULL),
	(126,'users-permissions','user','count',0,'',2,NULL,NULL),
	(127,'users-permissions','user','create',0,'',1,NULL,NULL),
	(128,'users-permissions','user','create',0,'',2,NULL,NULL),
	(129,'users-permissions','user','destroy',0,'',1,NULL,NULL),
	(130,'users-permissions','user','destroy',0,'',2,NULL,NULL),
	(131,'users-permissions','user','destroyall',0,'',1,NULL,NULL),
	(132,'users-permissions','user','destroyall',0,'',2,NULL,NULL),
	(133,'users-permissions','user','find',0,'',1,NULL,NULL),
	(134,'users-permissions','user','find',0,'',2,NULL,NULL),
	(135,'users-permissions','user','findone',0,'',1,NULL,NULL),
	(136,'users-permissions','user','findone',0,'',2,NULL,NULL),
	(137,'users-permissions','user','me',1,'',1,NULL,NULL),
	(138,'users-permissions','user','me',1,'',2,NULL,NULL),
	(139,'users-permissions','user','update',0,'',1,NULL,NULL),
	(140,'users-permissions','user','update',0,'',2,NULL,NULL),
	(141,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),
	(142,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),
	(143,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),
	(144,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),
	(145,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),
	(146,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),
	(147,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),
	(148,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),
	(149,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),
	(150,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),
	(151,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),
	(152,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),
	(153,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),
	(154,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),
	(155,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),
	(156,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),
	(157,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),
	(158,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),
	(159,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),
	(160,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),
	(161,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),
	(162,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),
	(163,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),
	(164,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),
	(165,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),
	(166,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),
	(167,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),
	(168,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),
	(169,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),
	(170,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),
	(171,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),
	(172,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),
	(173,'application','catalogs','count',0,'',2,NULL,NULL),
	(174,'application','catalogs','count',0,'',1,NULL,NULL),
	(175,'application','catalogs','create',0,'',1,NULL,NULL),
	(176,'application','catalogs','create',0,'',2,NULL,NULL),
	(177,'application','catalogs','delete',0,'',1,NULL,NULL),
	(178,'application','catalogs','delete',0,'',2,NULL,NULL),
	(179,'application','catalogs','find',0,'',1,NULL,NULL),
	(180,'application','catalogs','find',0,'',2,NULL,NULL),
	(181,'application','catalogs','findone',0,'',1,NULL,NULL),
	(182,'application','catalogs','findone',0,'',2,NULL,NULL),
	(183,'application','catalogs','update',0,'',1,NULL,NULL),
	(184,'application','catalogs','update',0,'',2,NULL,NULL),
	(185,'application','branchs','create',0,'',1,NULL,NULL),
	(186,'application','branchs','count',0,'',2,NULL,NULL),
	(187,'application','branchs','count',0,'',1,NULL,NULL),
	(188,'application','branchs','create',0,'',2,NULL,NULL),
	(189,'application','branchs','delete',0,'',1,NULL,NULL),
	(190,'application','branchs','delete',0,'',2,NULL,NULL),
	(191,'application','branchs','find',0,'',1,NULL,NULL),
	(192,'application','branchs','find',1,'',2,NULL,NULL),
	(193,'application','branchs','findone',0,'',1,NULL,NULL),
	(194,'application','branchs','findone',0,'',2,NULL,NULL),
	(195,'application','branchs','update',0,'',1,NULL,NULL),
	(196,'application','branchs','update',0,'',2,NULL,NULL),
	(197,'application','worksheets','count',0,'',1,NULL,NULL),
	(198,'application','worksheets','count',0,'',2,NULL,NULL),
	(199,'application','worksheets','create',0,'',1,NULL,NULL),
	(200,'application','worksheets','create',0,'',2,NULL,NULL),
	(201,'application','worksheets','delete',0,'',1,NULL,NULL),
	(202,'application','worksheets','delete',0,'',2,NULL,NULL),
	(203,'application','worksheets','find',0,'',1,NULL,NULL),
	(204,'application','worksheets','find',0,'',2,NULL,NULL),
	(205,'application','worksheets','findone',0,'',1,NULL,NULL),
	(206,'application','worksheets','findone',0,'',2,NULL,NULL),
	(207,'application','worksheets','update',0,'',1,NULL,NULL),
	(208,'application','worksheets','update',0,'',2,NULL,NULL),
	(209,'application','formats','count',0,'',1,NULL,NULL),
	(210,'application','formats','count',0,'',2,NULL,NULL),
	(211,'application','formats','create',0,'',1,NULL,NULL),
	(212,'application','formats','create',0,'',2,NULL,NULL),
	(213,'application','formats','delete',0,'',1,NULL,NULL),
	(214,'application','formats','delete',0,'',2,NULL,NULL),
	(215,'application','formats','find',0,'',1,NULL,NULL),
	(216,'application','formats','find',0,'',2,NULL,NULL),
	(217,'application','formats','findone',0,'',1,NULL,NULL),
	(218,'application','formats','findone',0,'',2,NULL,NULL),
	(219,'application','formats','update',0,'',1,NULL,NULL),
	(220,'application','formats','update',0,'',2,NULL,NULL),
	(221,'application','branchs','find',1,'',3,NULL,NULL),
	(222,'application','branchs','findone',0,'',3,NULL,NULL),
	(223,'application','branchs','count',0,'',3,NULL,NULL),
	(224,'application','branchs','create',0,'',3,NULL,NULL),
	(225,'application','branchs','update',0,'',3,NULL,NULL),
	(226,'application','branchs','delete',0,'',3,NULL,NULL),
	(227,'application','catalogs','find',0,'',3,NULL,NULL),
	(228,'application','catalogs','findone',0,'',3,NULL,NULL),
	(229,'application','catalogs','count',0,'',3,NULL,NULL),
	(230,'application','catalogs','create',0,'',3,NULL,NULL),
	(231,'application','catalogs','update',0,'',3,NULL,NULL),
	(232,'application','catalogs','delete',0,'',3,NULL,NULL),
	(233,'application','formats','find',0,'',3,NULL,NULL),
	(234,'application','formats','findone',0,'',3,NULL,NULL),
	(235,'application','formats','count',0,'',3,NULL,NULL),
	(236,'application','formats','create',0,'',3,NULL,NULL),
	(237,'application','formats','update',0,'',3,NULL,NULL),
	(238,'application','formats','delete',0,'',3,NULL,NULL),
	(239,'application','worksheets','find',0,'',3,NULL,NULL),
	(240,'application','worksheets','findone',0,'',3,NULL,NULL),
	(241,'application','worksheets','count',0,'',3,NULL,NULL),
	(242,'application','worksheets','create',0,'',3,NULL,NULL),
	(243,'application','worksheets','update',0,'',3,NULL,NULL),
	(244,'application','worksheets','delete',0,'',3,NULL,NULL),
	(245,'content-type-builder','builder','getreservednames',0,'',3,NULL,NULL),
	(246,'content-type-builder','componentcategories','editcategory',0,'',3,NULL,NULL),
	(247,'content-type-builder','componentcategories','deletecategory',0,'',3,NULL,NULL),
	(248,'content-type-builder','components','getcomponents',0,'',3,NULL,NULL),
	(249,'content-type-builder','components','createcomponent',0,'',3,NULL,NULL),
	(250,'content-type-builder','components','getcomponent',0,'',3,NULL,NULL),
	(251,'content-type-builder','components','updatecomponent',0,'',3,NULL,NULL),
	(252,'content-type-builder','components','deletecomponent',0,'',3,NULL,NULL),
	(253,'content-type-builder','connections','getconnections',0,'',3,NULL,NULL),
	(254,'content-type-builder','contenttypes','getcontenttypes',0,'',3,NULL,NULL),
	(255,'content-type-builder','contenttypes','getcontenttype',0,'',3,NULL,NULL),
	(256,'content-type-builder','contenttypes','updatecontenttype',0,'',3,NULL,NULL),
	(257,'content-type-builder','contenttypes','createcontenttype',0,'',3,NULL,NULL),
	(258,'content-manager','collection-types','find',0,'',3,NULL,NULL),
	(259,'content-manager','collection-types','findone',0,'',3,NULL,NULL),
	(260,'content-type-builder','contenttypes','deletecontenttype',0,'',3,NULL,NULL),
	(261,'content-manager','collection-types','create',0,'',3,NULL,NULL),
	(262,'content-manager','collection-types','update',0,'',3,NULL,NULL),
	(263,'content-manager','collection-types','delete',0,'',3,NULL,NULL),
	(264,'content-manager','collection-types','publish',0,'',3,NULL,NULL),
	(265,'content-manager','collection-types','unpublish',0,'',3,NULL,NULL),
	(266,'content-manager','collection-types','bulkdelete',0,'',3,NULL,NULL),
	(267,'content-manager','collection-types','previewmanyrelations',0,'',3,NULL,NULL),
	(268,'content-manager','components','findcomponents',0,'',3,NULL,NULL),
	(269,'content-manager','components','findcomponentconfiguration',0,'',3,NULL,NULL),
	(270,'content-manager','components','updatecomponentconfiguration',0,'',3,NULL,NULL),
	(271,'content-manager','content-types','findcontenttypes',0,'',3,NULL,NULL),
	(272,'content-manager','content-types','findcontenttypessettings',0,'',3,NULL,NULL),
	(273,'content-manager','content-types','findcontenttypeconfiguration',0,'',3,NULL,NULL),
	(274,'content-manager','content-types','updatecontenttypeconfiguration',0,'',3,NULL,NULL),
	(275,'content-manager','relations','find',0,'',3,NULL,NULL),
	(276,'content-manager','single-types','find',0,'',3,NULL,NULL),
	(277,'content-manager','single-types','createorupdate',0,'',3,NULL,NULL),
	(278,'content-manager','single-types','delete',0,'',3,NULL,NULL),
	(279,'content-manager','single-types','publish',0,'',3,NULL,NULL),
	(280,'content-manager','single-types','unpublish',0,'',3,NULL,NULL),
	(281,'content-manager','uid','generateuid',0,'',3,NULL,NULL),
	(282,'content-manager','uid','checkuidavailability',0,'',3,NULL,NULL),
	(283,'users-permissions','auth','callback',0,'',3,NULL,NULL),
	(284,'users-permissions','auth','resetpassword',0,'',3,NULL,NULL),
	(285,'users-permissions','auth','connect',0,'',3,NULL,NULL),
	(286,'users-permissions','auth','forgotpassword',0,'',3,NULL,NULL),
	(287,'users-permissions','auth','register',0,'',3,NULL,NULL),
	(288,'users-permissions','auth','emailconfirmation',0,'',3,NULL,NULL),
	(289,'users-permissions','auth','sendemailconfirmation',0,'',3,NULL,NULL),
	(290,'users-permissions','user','create',0,'',3,NULL,NULL),
	(291,'users-permissions','user','update',0,'',3,NULL,NULL),
	(292,'users-permissions','user','find',0,'',3,NULL,NULL),
	(293,'users-permissions','user','findone',0,'',3,NULL,NULL),
	(294,'users-permissions','user','count',0,'',3,NULL,NULL),
	(295,'users-permissions','user','destroy',0,'',3,NULL,NULL),
	(296,'users-permissions','user','destroyall',0,'',3,NULL,NULL),
	(297,'users-permissions','user','me',0,'',3,NULL,NULL),
	(298,'users-permissions','userspermissions','createrole',0,'',3,NULL,NULL),
	(299,'users-permissions','userspermissions','deleterole',0,'',3,NULL,NULL),
	(300,'users-permissions','userspermissions','getpermissions',0,'',3,NULL,NULL),
	(301,'users-permissions','userspermissions','getpolicies',0,'',3,NULL,NULL),
	(302,'users-permissions','userspermissions','getrole',0,'',3,NULL,NULL),
	(303,'users-permissions','userspermissions','getroles',0,'',3,NULL,NULL),
	(304,'users-permissions','userspermissions','getroutes',0,'',3,NULL,NULL),
	(305,'users-permissions','userspermissions','index',0,'',3,NULL,NULL),
	(306,'users-permissions','userspermissions','searchusers',0,'',3,NULL,NULL),
	(307,'users-permissions','userspermissions','updaterole',0,'',3,NULL,NULL),
	(308,'users-permissions','userspermissions','getemailtemplate',0,'',3,NULL,NULL),
	(309,'users-permissions','userspermissions','updateemailtemplate',0,'',3,NULL,NULL),
	(310,'users-permissions','userspermissions','getadvancedsettings',0,'',3,NULL,NULL),
	(311,'users-permissions','userspermissions','updateadvancedsettings',0,'',3,NULL,NULL),
	(312,'users-permissions','userspermissions','getproviders',0,'',3,NULL,NULL),
	(313,'users-permissions','userspermissions','updateproviders',0,'',3,NULL,NULL),
	(314,'email','email','send',0,'',3,NULL,NULL),
	(315,'email','email','test',0,'',3,NULL,NULL),
	(316,'email','email','getsettings',0,'',3,NULL,NULL),
	(317,'upload','upload','find',0,'',3,NULL,NULL),
	(318,'upload','upload','findone',0,'',3,NULL,NULL),
	(319,'upload','upload','count',0,'',3,NULL,NULL),
	(320,'upload','upload','destroy',0,'',3,NULL,NULL),
	(321,'upload','upload','updatesettings',0,'',3,NULL,NULL),
	(322,'upload','upload','getsettings',0,'',3,NULL,NULL),
	(323,'upload','upload','upload',0,'',3,NULL,NULL),
	(324,'upload','upload','search',0,'',3,NULL,NULL),
	(325,'i18n','content-types','getnonlocalizedattributes',0,'',3,NULL,NULL),
	(326,'i18n','iso-locales','listisolocales',0,'',3,NULL,NULL),
	(327,'i18n','locales','listlocales',0,'',3,NULL,NULL),
	(328,'i18n','locales','createlocale',0,'',3,NULL,NULL),
	(329,'i18n','locales','updatelocale',0,'',3,NULL,NULL),
	(330,'i18n','locales','deletelocale',0,'',3,NULL,NULL),
	(331,'application','branchs','find',0,'',4,NULL,NULL),
	(332,'application','branchs','findone',0,'',4,NULL,NULL),
	(333,'application','branchs','delete',0,'',4,NULL,NULL),
	(334,'application','branchs','count',0,'',4,NULL,NULL),
	(335,'application','branchs','create',0,'',4,NULL,NULL),
	(336,'application','branchs','update',0,'',4,NULL,NULL),
	(337,'application','catalogs','find',0,'',4,NULL,NULL),
	(338,'application','catalogs','findone',0,'',4,NULL,NULL),
	(339,'application','catalogs','count',0,'',4,NULL,NULL),
	(340,'application','catalogs','create',0,'',4,NULL,NULL),
	(341,'application','catalogs','update',0,'',4,NULL,NULL),
	(342,'application','catalogs','delete',0,'',4,NULL,NULL),
	(343,'application','formats','find',0,'',4,NULL,NULL),
	(344,'application','formats','findone',0,'',4,NULL,NULL),
	(345,'application','formats','count',0,'',4,NULL,NULL),
	(346,'application','formats','create',0,'',4,NULL,NULL),
	(347,'application','formats','update',0,'',4,NULL,NULL),
	(348,'application','formats','delete',0,'',4,NULL,NULL),
	(349,'application','worksheets','find',0,'',4,NULL,NULL),
	(350,'application','worksheets','findone',0,'',4,NULL,NULL),
	(351,'application','worksheets','count',0,'',4,NULL,NULL),
	(352,'application','worksheets','create',0,'',4,NULL,NULL),
	(353,'application','worksheets','update',0,'',4,NULL,NULL),
	(354,'application','worksheets','delete',0,'',4,NULL,NULL),
	(355,'content-type-builder','builder','getreservednames',0,'',4,NULL,NULL),
	(356,'content-type-builder','componentcategories','editcategory',0,'',4,NULL,NULL),
	(357,'content-type-builder','componentcategories','deletecategory',0,'',4,NULL,NULL),
	(358,'content-type-builder','components','getcomponents',0,'',4,NULL,NULL),
	(359,'content-type-builder','components','getcomponent',0,'',4,NULL,NULL),
	(360,'content-type-builder','components','createcomponent',0,'',4,NULL,NULL),
	(361,'content-type-builder','components','updatecomponent',0,'',4,NULL,NULL),
	(362,'content-type-builder','components','deletecomponent',0,'',4,NULL,NULL),
	(363,'content-type-builder','connections','getconnections',0,'',4,NULL,NULL),
	(364,'content-type-builder','contenttypes','getcontenttypes',0,'',4,NULL,NULL),
	(365,'content-type-builder','contenttypes','getcontenttype',0,'',4,NULL,NULL),
	(366,'content-type-builder','contenttypes','createcontenttype',0,'',4,NULL,NULL),
	(367,'content-type-builder','contenttypes','deletecontenttype',0,'',4,NULL,NULL),
	(368,'content-type-builder','contenttypes','updatecontenttype',0,'',4,NULL,NULL),
	(369,'content-manager','collection-types','find',0,'',4,NULL,NULL),
	(370,'content-manager','collection-types','findone',0,'',4,NULL,NULL),
	(371,'content-manager','collection-types','create',0,'',4,NULL,NULL),
	(372,'content-manager','collection-types','update',0,'',4,NULL,NULL),
	(373,'content-manager','collection-types','delete',0,'',4,NULL,NULL),
	(374,'content-manager','collection-types','publish',0,'',4,NULL,NULL),
	(375,'content-manager','collection-types','unpublish',0,'',4,NULL,NULL),
	(376,'content-manager','collection-types','bulkdelete',0,'',4,NULL,NULL),
	(377,'content-manager','collection-types','previewmanyrelations',0,'',4,NULL,NULL),
	(378,'content-manager','components','findcomponents',0,'',4,NULL,NULL),
	(379,'content-manager','components','findcomponentconfiguration',0,'',4,NULL,NULL),
	(380,'content-manager','components','updatecomponentconfiguration',0,'',4,NULL,NULL),
	(381,'content-manager','content-types','findcontenttypes',0,'',4,NULL,NULL),
	(382,'content-manager','content-types','findcontenttypessettings',0,'',4,NULL,NULL),
	(383,'content-manager','content-types','findcontenttypeconfiguration',0,'',4,NULL,NULL),
	(384,'content-manager','content-types','updatecontenttypeconfiguration',0,'',4,NULL,NULL),
	(385,'content-manager','relations','find',0,'',4,NULL,NULL),
	(386,'content-manager','single-types','find',0,'',4,NULL,NULL),
	(387,'content-manager','single-types','createorupdate',0,'',4,NULL,NULL),
	(388,'content-manager','single-types','delete',0,'',4,NULL,NULL),
	(389,'content-manager','single-types','publish',0,'',4,NULL,NULL),
	(390,'content-manager','single-types','unpublish',0,'',4,NULL,NULL),
	(391,'content-manager','uid','generateuid',0,'',4,NULL,NULL),
	(392,'content-manager','uid','checkuidavailability',0,'',4,NULL,NULL),
	(393,'users-permissions','auth','callback',0,'',4,NULL,NULL),
	(394,'users-permissions','auth','resetpassword',0,'',4,NULL,NULL),
	(395,'users-permissions','auth','connect',0,'',4,NULL,NULL),
	(396,'users-permissions','auth','forgotpassword',0,'',4,NULL,NULL),
	(397,'users-permissions','auth','register',0,'',4,NULL,NULL),
	(398,'users-permissions','auth','emailconfirmation',0,'',4,NULL,NULL),
	(399,'users-permissions','auth','sendemailconfirmation',0,'',4,NULL,NULL),
	(400,'users-permissions','user','create',0,'',4,NULL,NULL),
	(401,'users-permissions','user','update',0,'',4,NULL,NULL),
	(402,'users-permissions','user','find',0,'',4,NULL,NULL),
	(403,'users-permissions','user','findone',0,'',4,NULL,NULL),
	(404,'users-permissions','user','count',0,'',4,NULL,NULL),
	(405,'users-permissions','user','destroy',0,'',4,NULL,NULL),
	(406,'users-permissions','user','destroyall',0,'',4,NULL,NULL),
	(407,'users-permissions','user','me',0,'',4,NULL,NULL),
	(408,'users-permissions','userspermissions','createrole',0,'',4,NULL,NULL),
	(409,'users-permissions','userspermissions','deleterole',0,'',4,NULL,NULL),
	(410,'users-permissions','userspermissions','getpermissions',0,'',4,NULL,NULL),
	(411,'users-permissions','userspermissions','getpolicies',0,'',4,NULL,NULL),
	(412,'users-permissions','userspermissions','getrole',0,'',4,NULL,NULL),
	(413,'users-permissions','userspermissions','getroles',0,'',4,NULL,NULL),
	(414,'users-permissions','userspermissions','getroutes',0,'',4,NULL,NULL),
	(415,'users-permissions','userspermissions','index',0,'',4,NULL,NULL),
	(416,'users-permissions','userspermissions','searchusers',0,'',4,NULL,NULL),
	(417,'users-permissions','userspermissions','updaterole',0,'',4,NULL,NULL),
	(418,'users-permissions','userspermissions','getemailtemplate',0,'',4,NULL,NULL),
	(419,'users-permissions','userspermissions','updateemailtemplate',0,'',4,NULL,NULL),
	(420,'users-permissions','userspermissions','getadvancedsettings',0,'',4,NULL,NULL),
	(421,'users-permissions','userspermissions','updateadvancedsettings',0,'',4,NULL,NULL),
	(422,'users-permissions','userspermissions','getproviders',0,'',4,NULL,NULL),
	(423,'users-permissions','userspermissions','updateproviders',0,'',4,NULL,NULL),
	(424,'email','email','test',0,'',4,NULL,NULL),
	(425,'email','email','send',0,'',4,NULL,NULL),
	(426,'email','email','getsettings',0,'',4,NULL,NULL),
	(427,'upload','upload','find',0,'',4,NULL,NULL),
	(428,'upload','upload','findone',0,'',4,NULL,NULL),
	(429,'upload','upload','count',0,'',4,NULL,NULL),
	(430,'upload','upload','destroy',0,'',4,NULL,NULL),
	(431,'upload','upload','updatesettings',0,'',4,NULL,NULL),
	(432,'upload','upload','getsettings',0,'',4,NULL,NULL),
	(433,'upload','upload','upload',0,'',4,NULL,NULL),
	(434,'upload','upload','search',0,'',4,NULL,NULL),
	(435,'i18n','content-types','getnonlocalizedattributes',0,'',4,NULL,NULL),
	(436,'i18n','iso-locales','listisolocales',0,'',4,NULL,NULL),
	(437,'i18n','locales','listlocales',0,'',4,NULL,NULL),
	(438,'i18n','locales','createlocale',0,'',4,NULL,NULL),
	(439,'i18n','locales','updatelocale',0,'',4,NULL,NULL),
	(440,'i18n','locales','deletelocale',0,'',4,NULL,NULL),
	(441,'application','tes','count',0,'',3,NULL,NULL),
	(442,'application','tes','count',0,'',2,NULL,NULL),
	(443,'application','tes','count',0,'',1,NULL,NULL),
	(444,'application','tes','count',0,'',4,NULL,NULL),
	(445,'application','tes','create',0,'',1,NULL,NULL),
	(446,'application','tes','create',0,'',2,NULL,NULL),
	(447,'application','tes','create',0,'',3,NULL,NULL),
	(448,'application','tes','create',0,'',4,NULL,NULL),
	(449,'application','tes','delete',0,'',1,NULL,NULL),
	(450,'application','tes','delete',0,'',2,NULL,NULL),
	(451,'application','tes','delete',0,'',3,NULL,NULL),
	(452,'application','tes','delete',0,'',4,NULL,NULL),
	(453,'application','tes','find',0,'',1,NULL,NULL),
	(454,'application','tes','find',0,'',2,NULL,NULL),
	(455,'application','tes','find',0,'',3,NULL,NULL),
	(456,'application','tes','find',0,'',4,NULL,NULL),
	(457,'application','tes','findone',0,'',1,NULL,NULL),
	(458,'application','tes','findone',0,'',2,NULL,NULL),
	(459,'application','tes','findone',0,'',3,NULL,NULL),
	(460,'application','tes','findone',0,'',4,NULL,NULL),
	(461,'application','tes','update',0,'',1,NULL,NULL),
	(462,'application','tes','update',0,'',3,NULL,NULL),
	(463,'application','tes','update',0,'',2,NULL,NULL),
	(464,'application','tes','update',0,'',4,NULL,NULL);

/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users-permissions_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users-permissions_role`;

CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`)
VALUES
	(1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),
	(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL),
	(3,'Anggota','Role Anggota Perpustakaan','anggota',NULL,NULL),
	(4,'Staff Perpustakaan','Role Untuk Staff Perpustakaan','staff_perpustakaan',NULL,NULL);

/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users-permissions_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users-permissions_user`;

CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table worksheets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `worksheets`;

CREATE TABLE `worksheets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Format_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
