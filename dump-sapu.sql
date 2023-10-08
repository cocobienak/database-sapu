CREATE TABLE `adt_beevey_configuration` (
  `id` bigint unsigned DEFAULT NULL,
  `key` varchar(100) DEFAULT NULL,
  `value` longtext,
  `type_data` varchar(200) DEFAULT NULL,
  `description` text,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `adt_beevey_entity_detail` (
  `id` bigint unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_ktp` varchar(100) DEFAULT NULL,
  `id_passport` varchar(100) DEFAULT NULL,
  `address_1` text,
  `address_2` text,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `adt_beevey_entity_detail_email` (
  `id` bigint unsigned DEFAULT NULL,
  `entity_detail_id` bigint unsigned DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `adt_beevey_entity_detail_phone_number` (
  `id` bigint unsigned DEFAULT NULL,
  `entity_detail_id` bigint unsigned DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `adt_beevey_domain` (
  `id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `code` text NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `email_cc` text,
  `phone_number` varchar(50) DEFAULT NULL,
  `description_html` text,
  `description_text` text,
  `link_web` text,
  `url_referer` longtext,
  `avatar_path` text,
  `force_event_publish_domain` tinyint(1) DEFAULT NULL,
  `force_event_publish_share` tinyint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `adt_beevey_domain_group` (
  `id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `domain_id` bigint unsigned DEFAULT NULL,
  `domain_child_id` text,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- adt_beevey_event definition

CREATE TABLE `adt_beevey_event` (
  `id` bigint unsigned DEFAULT NULL,
  `code` text,
  `id_event_old` text,
  `event_category_id` bigint unsigned DEFAULT NULL,
  `event_category_sub` text,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `domain_id` bigint unsigned DEFAULT NULL,
  `banner_image_id` bigint unsigned DEFAULT NULL,
  `speaker_id` bigint unsigned DEFAULT NULL,
  `speaker_use_degree` tinyint(1) DEFAULT NULL,
  `name` text,
  `event_type` varchar(20) DEFAULT NULL,
  `event_start` datetime DEFAULT NULL,
  `event_end` datetime DEFAULT NULL,
  `content_html` text,
  `content_text` text,
  `summary_html` text,
  `summary_text` text,
  `summary_created_on` datetime DEFAULT NULL,
  `summary_modified_on` datetime DEFAULT NULL,
  `member_type` varchar(20) DEFAULT NULL,
  `location_type` varchar(20) DEFAULT NULL,
  `location_address` text,
  `location_longitude` varchar(100) DEFAULT NULL,
  `location_latitude` varchar(100) DEFAULT NULL,
  `location_embed_map` text,
  `link_event` text,
  `is_publish` tinyint(1) DEFAULT NULL,
  `publish_status` varchar(100) DEFAULT NULL,
  `publish_message` text,
  `is_publish_force` tinyint(1) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `unpublish_date` datetime DEFAULT NULL,
  `is_publish_domain` tinyint(1) DEFAULT NULL,
  `publish_domain_status` varchar(100) DEFAULT NULL,
  `is_publish_domain_force` tinyint(1) DEFAULT NULL,
  `publish_domain_date` datetime DEFAULT NULL,
  `unpublish_domain_date` datetime DEFAULT NULL,
  `participant_limit` int DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_event_category definition

CREATE TABLE `adt_beevey_event_category` (
  `id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_event_category_mapping definition

CREATE TABLE `adt_beevey_event_category_mapping` (
  `event_id` bigint unsigned DEFAULT NULL,
  `event_category_id` bigint unsigned DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_event_message definition

CREATE TABLE `adt_beevey_event_message` (
  `id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `domain_id` bigint unsigned DEFAULT NULL,
  `event_id` bigint unsigned DEFAULT NULL,
  `visitor_id` bigint unsigned DEFAULT NULL,
  `message` text,
  `subject` varchar(200) DEFAULT NULL,
  `from` varchar(200) DEFAULT NULL,
  `sent_email_status` varchar(20) DEFAULT NULL,
  `sent_email_data` text,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_file definition

CREATE TABLE `adt_beevey_file` (
  `id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `domain_id` bigint unsigned DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `path` text,
  `is_lock` tinyint(1) DEFAULT NULL,
  `size_kb` bigint DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_image definition

CREATE TABLE `adt_beevey_image` (
  `id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `domain_id` bigint unsigned DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `path` text,
  `is_lock` tinyint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_log_change definition

CREATE TABLE `adt_beevey_log_change` (
  `id` bigint unsigned DEFAULT NULL,
  `table` varchar(200) DEFAULT NULL,
  `data_json_old` text,
  `data_json_new` text,
  `update_on` datetime NOT NULL,
  `update_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_log_error definition

CREATE TABLE `adt_beevey_log_error` (
  `id` bigint unsigned DEFAULT NULL,
  `request` text NOT NULL,
  `request_ip` varchar(50) DEFAULT NULL,
  `controller_name` varchar(200) DEFAULT NULL,
  `function_name` varchar(200) DEFAULT NULL,
  `report` text,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_log_trash definition

CREATE TABLE `adt_beevey_log_trash` (
  `id` bigint unsigned DEFAULT NULL,
  `table` varchar(200) DEFAULT NULL,
  `data_json` text,
  `delete_on` datetime NOT NULL,
  `delete_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_module definition

CREATE TABLE `adt_beevey_module` (
  `id` bigint unsigned DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` text,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_oauth_access_tokens definition

CREATE TABLE `adt_beevey_oauth_access_tokens` (
  `id` varchar(100) DEFAULT NULL,
  `client_id` int unsigned DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `domain_id` bigint DEFAULT NULL,
  `domain_code` text,
  `created_at` datetime DEFAULT NULL,
  `revoked` tinyint DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_oauth_clients definition

CREATE TABLE `adt_beevey_oauth_clients` (
  `id` int unsigned DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) DEFAULT NULL,
  `password_client` tinyint(1) DEFAULT NULL,
  `revoked` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_oauth_refresh_tokens definition

CREATE TABLE `adt_beevey_oauth_refresh_tokens` (
  `id` varchar(100) DEFAULT NULL,
  `oauth_access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `revoked` tinyint(1) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_permission definition

CREATE TABLE `adt_beevey_permission` (
  `id` bigint unsigned DEFAULT NULL,
  `privilege` varchar(100) DEFAULT NULL,
  `endpoint` text,
  `label` varchar(100) DEFAULT NULL,
  `module_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_role definition

CREATE TABLE `adt_beevey_role` (
  `id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `domain_id` bigint unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_role_permission definition

CREATE TABLE `adt_beevey_role_permission` (
  `id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `permission_id` bigint unsigned DEFAULT NULL,
  `action_value` int unsigned DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_system_user definition

CREATE TABLE `adt_beevey_system_user` (
  `id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `domain_id` bigint unsigned DEFAULT NULL,
  `entity_detail_id` bigint unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `password` text NOT NULL,
  `expired_date` datetime DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `back_door_code` text,
  `back_door_expired` datetime DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_system_user_role definition

CREATE TABLE `adt_beevey_system_user_role` (
  `id` bigint unsigned DEFAULT NULL,
  `system_user_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- adt_beevey_visitor definition

CREATE TABLE `adt_beevey_visitor` (
  `id` bigint unsigned DEFAULT NULL,
  `system_user_id` bigint unsigned DEFAULT NULL,
  `oauth_clients_id` int unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` text,
  `avatar_path` text,
  `is_active` tinyint DEFAULT NULL,
  `activation_expired` datetime DEFAULT NULL,
  `activation_code` text,
  `activation_status` varchar(20) DEFAULT NULL,
  `is_internal` tinyint(1) DEFAULT NULL,
  `internal_identity` text,
  `internal_identity_json` text,
  `created_on` datetime NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO adt_beevey_configuration (id,`key`,value,type_data,description,created_on,created_by,modified_on,modified_by) VALUES
	 (1,'type_data_list','[''integer'',''bigint'',''floating'',''double'',''boolean'',''text'',''json'',''array'',''date'',''time'',''datetime'',''timestamp'']','array',NULL,'2021-04-19 16:10:38',1,'2021-04-19 16:10:41',1),
	 (2,'default_base_url','https://localhost/manage/','text',NULL,'2021-04-19 16:10:38',1,'2021-07-02 10:02:24',1),
	 (3,'default_config_smtp','{"host" : "smtp.gmail.com", "sender_name" : "SAPU", "username" : "poke2wowo.89@gmail.com", "password" : "mmjayzmldqtlmbba", "domain" : "localhost", "port" : 587, "smtp_secure" : "tls"}','json',NULL,'2021-05-20 11:39:19',1,'2021-05-20 11:39:19',1),
	 (4,'activation_visitor_email','{"subject":"[No-Reply] Registration Verification","body":"<div style=\\"width:100%;max-width:600px;margin-left:auto;margin-right:auto;padding:24px;border:solid 1px #c9c9c9;border-radius:8px;background:#fff;color:#333;margin-top:40px\\"><h1 style=\\"margin:0 0 40px;padding:0 0 17px;border-bottom:solid 1px #c9c9c9;text-align:center\\">Registration Verification</h1><div style=\\"font-size:14px;color:#333\\">Hi, <br> You are one step away from joining <strong>BINUS Event</strong>. Click link below for activating your account.</div><br><br><div><a style=\\"background:#e48118;padding:0 20px;height:38px;line-height:38px;display:block;text-decoration:none;color:#fff;border-radius:8px;font-size:14px;text-align:center;text-transform:uppercase;font-weight:bold\\" href=\\"{{url_activation}}\\" target=\\"_blank\\">Activate Account</a></div></div>"}','json',NULL,'2021-04-19 16:10:38',1,'2021-04-19 16:10:38',1),
	 (5,'activation_visitor_base_url','https://localhost/manage/activation/visitor','text',NULL,'2021-04-19 16:10:38',1,'2021-07-02 10:03:36',1),
	 (6,'forgot_password_visitor_email','{"subject":"[No-Reply] Request Reset Password","body":"<div style=\\"width:100%;max-width:600px;margin-left:auto;margin-right:auto;padding:24px;border:solid 1px #c9c9c9;border-radius:8px;background:#fff;color:#333;margin-top:40px\\"><h1 style=\\"margin:0 0 40px;padding:0 0 17px;border-bottom:solid 1px #c9c9c9;text-align:center\\">Reset Password</h1><div style=\\"font-size:14px;color:#333\\">Hi {{name}}, <br> We got a request to reset your password. Click link below for reset your password.</div><br><br><div><a style=\\"background:#e48118;padding:0 20px;height:38px;line-height:38px;display:block;text-decoration:none;color:#fff;border-radius:8px;font-size:14px;text-align:center;text-transform:uppercase;font-weight:bold\\" href=\\"{{url_forgot_password}}\\" target=\\"_blank\\">Reset Password</a></div><div style=\\"font-size:14px;color:#333\\">if you ignore this message, your password won``t be change</div></div>"}','json',NULL,'2021-04-19 16:10:38',1,'2021-04-19 16:10:38',1),
	 (7,'forgot_password_visitor_base_url','https://localhost/manage/forgot-password/visitor','text',NULL,'2021-04-19 16:10:38',1,'2021-07-02 10:04:01',1),
	 (100,'go_to_url_2','https://localhost/','text',NULL,'2021-04-19 16:10:38',1,'2022-11-28 21:07:57',1);


INSERT INTO adt_beevey_entity_detail (id,name,id_ktp,id_passport,address_1,address_2,created_on,created_by,modified_on,modified_by) VALUES
	 (1,'Supper Administrator',NULL,NULL,NULL,NULL,'2020-07-24 11:38:18',1,'2020-07-24 11:38:20',1),
	 (2,'Visitor Request',NULL,NULL,NULL,NULL,'2021-05-28 16:46:33',1,'2021-05-28 16:46:33',1),
	 (3,'System User Visitor Binus Survey',NULL,NULL,NULL,NULL,'2021-06-17 16:20:34',1,'2021-06-17 16:20:34',1);

INSERT INTO adt_beevey_entity_detail_email (id,entity_detail_id,email,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1,1,'su.admin',1,'2020-08-04 11:36:09',1,'2020-08-10 15:15:55',1),
	 (2,2,'visitor.request@gmail.com',1,'2021-05-28 16:46:33',1,'2021-05-28 16:46:33',1),
	 (3,3,'visitor.binussurvey.user@gmail.com',1,'2021-06-17 16:20:34',1,'2021-06-17 16:20:34',1);

INSERT INTO adt_beevey_entity_detail_phone_number (id,entity_detail_id,phone_number,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1,1,'999999999999',1,'2020-08-04 11:36:09',1,'2020-08-04 11:36:09',1);

INSERT INTO adt_beevey_domain (id,oauth_clients_id,code,name,email,email_cc,phone_number,description_html,description_text,link_web,url_referer,avatar_path,force_event_publish_domain,force_event_publish_share,created_on,created_by,modified_on,modified_by) VALUES
	 (1,2,'master','SAPU','adhityaprabowo.dev@gmail.com',NULL,NULL,'<p>Event Web Master</p>','Event Web Master','http://localhost/',NULL,'https://cdn-binusacid.azureedge.net/event/uploads/_client__2/60ef964ea13d3.png',0,0,'2021-06-17 16:19:51',1,'2023-10-09 02:15:08',1);

INSERT INTO adt_beevey_module (id,code,description,created_on,created_by,modified_on,modified_by) VALUES
	 (1,'module','Module of system','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (2,'permission','Module from permission','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (3,'oauth_clients','Module from oauth clients','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (4,'oauth_access_tokens','Module from oauth access tokens','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (5,'oauth_refresh_tokens','Module from oauth refresh tokens','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (6,'oauth_personal_access_clients',NULL,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (7,'oauth_auth_codes','Oauth','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (8,'log_error','Module from log error','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (9,'entity_type','Module from entity_type','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (10,'configuration','Configuration','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1);
INSERT INTO adt_beevey_module (id,code,description,created_on,created_by,modified_on,modified_by) VALUES
	 (201,'log_trash','Module from log trash','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (202,'log_change','Module from log change','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (203,'entity_detail',NULL,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (204,'entity_detail_type_oclients',NULL,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (205,'entity_detail_email',NULL,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (206,'entity_detail_phone_number',NULL,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (210,'role','Role','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (211,'role_permission',NULL,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (212,'system_user','System User','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (213,'system_user_role',NULL,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1);
INSERT INTO adt_beevey_module (id,code,description,created_on,created_by,modified_on,modified_by) VALUES
	 (214,'domain','Domain','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (215,'domain_group','Domain Group','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (300,'visitor','Visitor','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (301,'Image','Image','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (303,'event','Event','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (302,'event_category','Event Category','2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (305,'degree','Degree','2021-07-23 05:39:29',1,'2021-07-23 05:39:29',1),
	 (306,'speaker','Speaker','2021-07-23 05:39:43',1,'2021-07-23 05:39:43',1),
	 (216,'event_message','Event Message','2021-02-02 08:49:44',1,'2021-11-06 01:08:44',1);


INSERT INTO adt_beevey_oauth_access_tokens (id,client_id,user_id,visitor_id,domain_id,domain_code,created_at,revoked,expires_at) VALUES
	 ('12c42614-88e6-48c1-a085-4940b8ffee68',1,1,NULL,NULL,'','2023-10-07 19:09:45',0,'2023-10-07 22:09:45'),
	 ('ad9cf750-5f87-4e2f-b428-a51648d14bd9',1,1,NULL,NULL,'','2023-10-07 19:16:14',0,'2023-10-07 22:16:14'),
	 ('f27c0cd0-3afc-43de-9fa1-5b8c32f27fb8',1,1,NULL,NULL,'','2023-10-07 19:17:44',1,'2023-10-07 22:17:44'),
	 ('80ad0aef-a997-483d-9cfd-62ab9c261cb3',1,1,NULL,NULL,NULL,'2023-10-07 19:17:46',0,'2023-10-07 22:17:46'),
	 ('3c8bbcdd-406a-46a7-962f-886c5100ccf9',1,1,NULL,NULL,'','2023-10-09 00:39:39',1,'2023-10-09 03:39:39'),
	 ('4a4b7ede-7a42-4897-8be4-d860ccd65d1d',1,1,NULL,NULL,'','2023-10-09 01:18:34',1,'2023-10-09 04:18:34'),
	 ('35290cc4-76b0-4af5-818d-f3e333d14256',1,1,NULL,0,'','2023-10-09 01:26:27',0,'2023-10-09 04:26:27'),
	 ('cd2982aa-2b62-409d-b9f5-354286d722c3',1,1,NULL,0,'','2023-10-09 01:37:40',0,'2023-10-09 04:37:40'),
	 ('08586d24-9bce-4ec4-89c8-a0adb3cf5ea1',1,1,NULL,0,'','2023-10-09 02:24:03',0,'2023-10-09 05:24:03'),
	 ('77bf9f0f-78a8-4a19-a78b-90a85f5bd917',1,1,NULL,0,'','2023-10-09 03:07:16',0,'2023-10-09 06:07:16');
INSERT INTO adt_beevey_oauth_access_tokens (id,client_id,user_id,visitor_id,domain_id,domain_code,created_at,revoked,expires_at) VALUES
	 ('c9ed12d8-b21e-4531-baab-2118680afaeb',1,1,NULL,0,'','2023-10-09 03:58:23',0,'2023-10-09 06:58:23'),
	 ('66e602f8-4321-4ae5-b0cb-161fb0cadc0e',1,1,NULL,0,'','2023-10-09 04:42:20',0,'2023-10-09 07:42:20'),
	 ('5fee6704-a583-4528-8330-7241ccd2145a',1,1,NULL,0,'','2023-10-09 05:25:00',0,'2023-10-09 08:25:00');


INSERT INTO adt_beevey_oauth_clients (id,user_id,name,secret,redirect,personal_access_client,password_client,revoked,created_at,updated_at) VALUES
	 (1,NULL,'su_admin','faWDAdknflljanLJDASDGASDF14FSDFAd124FDGa','http://127.0.0.1:8000/auth/callback',1,1,0,'2019-12-12 00:03:17','2019-12-12 00:03:17'),
	 (2,NULL,'sapu','GDsdgJywer24GSD346hS4256GDAFSdfsfFDFE03f','http://127.0.0.1:8000/auth/callback',0,1,0,'2020-07-23 12:05:30','2020-07-23 12:05:30');


INSERT INTO adt_beevey_oauth_refresh_tokens (id,oauth_access_token_id,created_at,revoked,expires_at) VALUES
	 ('7ee6dde8-159e-48d4-883b-bd19388c24c0','12c42614-88e6-48c1-a085-4940b8ffee68','2023-10-07 19:09:45',0,'2023-10-08 19:09:45'),
	 ('fdb8c35d-434b-4497-9bef-e24762ea858f','ad9cf750-5f87-4e2f-b428-a51648d14bd9','2023-10-07 19:16:14',1,'2023-10-08 19:16:14'),
	 ('ee6c761a-3d6a-4c3a-94da-a4d0ed7b020a','f27c0cd0-3afc-43de-9fa1-5b8c32f27fb8','2023-10-07 19:17:44',1,'2023-10-08 19:17:44'),
	 ('8ebc6801-3e73-4bf1-88af-c9d0d3b19755','80ad0aef-a997-483d-9cfd-62ab9c261cb3','2023-10-07 19:17:46',0,'2023-10-08 19:17:46'),
	 ('2e7ddf4d-3271-4750-8475-ddbe88977fb0','3c8bbcdd-406a-46a7-962f-886c5100ccf9','2023-10-09 00:39:39',1,'2023-10-10 00:39:39'),
	 ('e9df9e29-21db-4f69-9555-7711c15abffb','4a4b7ede-7a42-4897-8be4-d860ccd65d1d','2023-10-09 01:18:34',1,'2023-10-10 01:18:34'),
	 ('ee75f837-653c-4c94-a0a6-249d3888125a','35290cc4-76b0-4af5-818d-f3e333d14256','2023-10-09 01:26:27',0,'2023-10-10 01:26:27'),
	 ('0957e16b-677e-418c-b78f-3b267d09a301','cd2982aa-2b62-409d-b9f5-354286d722c3','2023-10-09 01:37:40',0,'2023-10-10 01:37:40'),
	 ('3469da93-9bb6-4638-8e72-5cab60cba835','08586d24-9bce-4ec4-89c8-a0adb3cf5ea1','2023-10-09 02:24:03',0,'2023-10-10 02:24:03'),
	 ('6fa46220-f16b-457c-8e35-6f6ee9ed7885','77bf9f0f-78a8-4a19-a78b-90a85f5bd917','2023-10-09 03:07:16',0,'2023-10-10 03:07:16');
INSERT INTO adt_beevey_oauth_refresh_tokens (id,oauth_access_token_id,created_at,revoked,expires_at) VALUES
	 ('1e773e74-9aa1-43be-91ea-9014b1ad62aa','c9ed12d8-b21e-4531-baab-2118680afaeb','2023-10-09 03:58:23',0,'2023-10-10 03:58:23'),
	 ('120e7c4a-3b94-45b2-bbdb-2eef6a6f7f49','66e602f8-4321-4ae5-b0cb-161fb0cadc0e','2023-10-09 04:42:20',0,'2023-10-10 04:42:20'),
	 ('8383cad3-c0f2-4fd1-a1c5-108bc0618d96','5fee6704-a583-4528-8330-7241ccd2145a','2023-10-09 05:25:00',0,'2023-10-10 05:25:01');


INSERT INTO adt_beevey_permission (id,privilege,endpoint,label,module_id,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1,'createmodule','put:/api/module/create','Create Module',1,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (2,'readmodule','get:/api/module/read/[p]|post:/api/module/list','Read Module',1,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (3,'updatemodule','patch:/api/module/update','Update Module',1,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (4,'deletemodule','delete:/api/module/delete/[p]','Delete Module',1,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (6,'createpermission','put:/api/permission/create','Create Permission',2,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (7,'readpermission','get:/api/permission/read/[p]|post:/api/permission/list','Read Permission',2,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (8,'updatepermission','patch:/api/permission/update','Update Permission',2,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (9,'deletepermission','delete:/api/permission/delete/[p]','Delete Permission',2,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (10,'generatetoken','get:/api/permission/generatetoken/[p]','Generate Token',2,1,'2021-04-19 16:15:35',1,'2021-04-19 16:15:35',1),
	 (20,'createconfiguration','put:/api/configuration/create','Create Configuration',10,0,'2021-04-19 16:19:08',1,'2021-04-19 16:19:08',1);
INSERT INTO adt_beevey_permission (id,privilege,endpoint,label,module_id,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (21,'readconfiguration','get:/api/configuration/read/[p]|post:/api/configuration/list','Read Configuration',10,0,'2021-04-19 16:18:40',1,'2021-04-19 16:18:40',1),
	 (22,'updateconfiguration','patch:/api/configuration/update','Update Configuration',10,1,'2021-04-19 16:19:36',1,'2021-04-19 16:19:36',1),
	 (23,'deleteconfiguration','delete:/api/configuration/delete/[p]','Delete Configuration',10,0,'2021-04-19 16:20:11',1,'2021-04-19 16:20:11',1),
	 (1100,'createrole','put:/api/role/create|post:/api/role/templatepermission','Create Role',210,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (1101,'readrole','get:/api/role/read/[p]|post:/api/role/list','Read Role',210,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (1102,'updaterole','patch:/api/role/update','Update Role',210,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (1103,'deleterole','delete:/api/role/delete/[p]','Delete Role',210,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (1120,'createsystemuser','put:/api/systemuser/create','Create System User',212,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (1121,'readsystemuser','get:/api/systemuser/read/[p]|post:/api/systemuser/list','Read System User',212,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1),
	 (1122,'updatesystemuser','patch:/api/systemuser/update','Update System User',212,1,'2021-02-02 08:49:44',1,'2021-02-02 08:49:44',1);
INSERT INTO adt_beevey_permission (id,privilege,endpoint,label,module_id,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1123,'inactivesystemuser','delete:/api/systemuser/inactive/[p]','Inactive System User',212,1,'2021-02-02 08:49:44',1,'2021-02-06 08:02:33',1),
	 (1124,'updatesystemuserrole','post:/api/systemuser/updaterole|post:/api/role/list','Update Role',212,1,'2021-02-06 08:00:17',1,'2021-02-06 08:00:17',1),
	 (1125,'backdoorlogin','get:/api/systemuser/bdlogin','Back Door Login',212,1,'2021-06-09 09:23:34',1,'2021-06-09 09:23:34',1),
	 (1126,'readselfsystemuser','get:/api/systemuser/readself/[p]','Read Self Data',212,1,'2021-06-15 13:53:15',1,'2021-10-29 18:20:48',1),
	 (1127,'updateselfsystemuser','patch:/api/systemuser/updateself','Update Self Data',212,1,'2021-06-16 11:45:24',1,'2021-10-29 18:21:09',1),
	 (1150,'createdomain','put:/api/domain/create','Create Domain',214,1,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (1151,'readdomain','get:/api/domain/read/[p]|post:/api/domain/list','Read Domain',214,1,'2021-05-30 08:10:12',1,'2021-05-30 08:10:12',1),
	 (1152,'updatedomain','patch:/api/domain/update','Update Domain',214,1,'2021-05-30 08:11:14',1,'2021-05-30 08:11:14',1),
	 (1153,'deletedomain','delete:/api/domain/delete/[p]','Delete Domain',214,1,'2021-05-30 08:11:36',1,'2021-05-30 08:11:36',1),
	 (1154,'forcepublishevent','patch:/api/domain/updateforcepublish','Force Publish Local',214,1,'2021-07-23 05:44:42',1,'2021-07-23 05:44:42',1);
INSERT INTO adt_beevey_permission (id,privilege,endpoint,label,module_id,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1155,'forcepublishshareevent','patch:/api/domain/updateforcepublishshare','Force Publish Local Share',214,1,'2021-07-23 05:45:24',1,'2021-07-23 05:45:24',1),
	 (1200,'createdomaingroup','put:/api/domaingroup/create','Create Domain Group',215,1,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (1201,'readdomaingroup','get:/api/domaingroup/read/[p]|post:/api/domaingroup/list','Read Domain Group',215,1,'2021-05-30 08:10:12',1,'2021-05-30 08:10:12',1),
	 (1202,'updatedomaingroup','patch:/api/domaingroup/update','Update Domain Group',215,1,'2021-05-30 08:11:14',1,'2021-05-30 08:11:14',1),
	 (1203,'deletedomaingroup','delete:/api/domaingroup/delete/[p]','Delete Domain Group',215,1,'2021-05-30 08:11:36',1,'2021-05-30 08:11:36',1),
	 (1300,'createvisitor','put:/api/visitor/create','Create Visitor',300,1,'2021-02-07 07:33:17',1,'2021-05-20 14:30:36',1),
	 (1301,'readvisitor','get:/api/visitor/read/[p]|post:/api/visitor/list','Read Visitor',300,1,'2021-02-07 07:34:15',1,'2021-02-07 07:34:15',1),
	 (1302,'updatevisitor','patch:/api/visitor/update|patch:/api/visitor/updateavatar','Update Visitor',300,1,'2021-02-07 07:37:34',1,'2021-06-16 12:32:34',1),
	 (1303,'deletevisitor','delete:/api/visitor/delete/[p]','Delete Visitor',300,1,'2021-02-07 07:40:24',1,'2021-02-07 07:40:24',1),
	 (1304,'registerevent','post:/api/visitor/registerevent|patch:/api/visitor/unregisterevent|post:/api/visitor/favoriteevent|patch:/api/visitor/unfavoriteevent','Register & Unregister Event',300,1,'2021-02-16 15:25:09',1,'2021-05-18 10:44:25',1);
INSERT INTO adt_beevey_permission (id,privilege,endpoint,label,module_id,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1305,'activationvisitor','post:/api/visitor/activation','Activation Visitor',300,1,'2021-05-20 14:30:07',1,'2021-05-20 14:51:01',1),
	 (1306,'forgotpassword','post:/api/visitor/forgotpassword','Request Forgot Password',300,1,'2021-05-22 13:10:31',1,'2021-05-22 13:10:31',1),
	 (1307,'resetpassword','post:/api/visitor/resetpassword','Reset Password',300,1,'2021-05-24 07:23:52',1,'2021-05-24 07:23:52',1),
	 (1400,'createimage','put:/api/image/create','Create Image',301,1,'2021-05-25 12:22:16',1,'2021-05-25 12:22:24',1),
	 (1401,'readimage','post:/api/image/list|get:/api/image/read/[p]','Read Image',301,1,'2021-05-25 12:23:03',1,'2021-05-25 12:23:03',1),
	 (2200,'createfile','put:/api/file/create','Create File',310,1,'2021-11-06 07:26:42',1,'2021-11-06 07:26:42',1),
	 (2201,'readfile','get:/api/file/read/[p]|post:/api/file/list','Read File',310,1,'2021-11-06 07:30:34',1,'2021-11-06 07:30:34',1),
	 (1154,'forcepublishevent','patch:/api/domain/updateforcepublish','Force Publish Local',214,1,'2021-07-23 05:44:42',1,'2021-07-23 05:44:42',1),
	 (1155,'forcepublishshareevent','patch:/api/domain/updateforcepublishshare','Force Publish Local Share',214,1,'2021-07-23 05:45:24',1,'2021-07-23 05:45:24',1),
	 (1304,'registerevent','post:/api/visitor/registerevent|patch:/api/visitor/unregisterevent|post:/api/visitor/favoriteevent|patch:/api/visitor/unfavoriteevent','Register & Unregister Event',300,1,'2021-02-16 15:25:09',1,'2021-05-18 10:44:25',1);
INSERT INTO adt_beevey_permission (id,privilege,endpoint,label,module_id,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1308,'getlinkevent','post:/api/visitor/getlinkevent','Get Link Event',300,1,'2021-06-04 08:51:31',1,'2021-06-04 08:51:31',1),
	 (1500,'createeventcategory','put:/api/eventcategory/create','Create Event Category',302,1,'2021-02-09 17:52:21',1,'2021-02-09 17:52:21',1),
	 (1501,'readeventcategory','get:/api/eventcategory/read/[p]|post:/api/eventcategory/list|get:/api/eventcategory/listparent/[p]|get:/api/eventcategory/gettree/[p]','Read Event Category',302,1,'2021-02-09 17:53:25',1,'2021-02-09 23:23:02',1),
	 (1502,'updateeventcategory','patch:/api/eventcategory/update','Update Event Category',302,1,'2021-02-09 17:54:28',1,'2021-02-09 17:54:28',1),
	 (1503,'deleteeventcategory','delete:/api/eventcategory/delete/[p]','Delete Event Category',302,1,'2021-02-09 17:55:08',1,'2021-02-09 17:55:12',1),
	 (1600,'createevent','put:/api/event/create','Create Event',303,1,'2021-02-11 06:52:18',1,'2021-02-11 06:52:18',1),
	 (1601,'readevent','get:/api/event/read/[p]|post:/api/event/list|post:/api/eventcategory/list|get:/api/event/listeventimage/[p]|post:/api/event/listeventjoined|post:/api/event/listeventrelate|post:/api/event/listeventfavorite|post:/api/event/getcount|post:/api/domain/list|post:/api/event/listimage|get:/api/event/listimage/[p]|get:/api/event/listdomainsharedevent','Read Event',303,1,'2021-02-11 06:54:08',1,'2022-01-20 09:59:47',1),
	 (1602,'updateevent','patch:/api/event/update','Update Event',303,1,'2021-02-11 06:54:51',1,'2021-02-11 06:54:51',1),
	 (1603,'deleteevent','delete:/api/event/delete/[p]','Delete Event',303,1,'2021-02-11 06:55:34',1,'2021-02-11 06:55:34',1),
	 (1604,'eventuploadimage','put:/api/event/uploadimage|get:/api/event/listeventimage/[p]','Upload Image',303,1,'2021-02-14 12:00:51',1,'2021-02-15 07:27:57',1);
INSERT INTO adt_beevey_permission (id,privilege,endpoint,label,module_id,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1605,'updateeventimage','patch:/api/event/registerbanner|patch:/api/event/shownimage|delete:/api/event/deleteeventimage/[p]|patch:/api/event/lockimage|put:/api/event/createeventimage|patch:/api/event/updateeventimageorder|patch:/api/event/removebanner','Update Event Image',303,1,'2021-02-16 07:37:49',1,'2021-05-18 10:31:18',1),
	 (1606,'publishevent','patch:/api/event/publish|patch:/api/event/approvalunpublish','Publish Web Master',303,1,'2021-04-19 16:16:48',1,'2021-07-27 16:29:11',1),
	 (1607,'publisheventdomain','patch:/api/event/publishdomain','Publish Local Domain',303,1,'2021-07-23 05:42:04',1,'2021-07-23 05:42:04',1),
	 (1608,'publisheventshare','patch:/api/event/publishshare','Publish Local Share',303,1,'2021-07-23 05:42:58',1,'2021-07-23 05:42:58',1),
	 (1609,'shareevent','patch:/api/event/updateshareevent','Share Event',303,1,'2021-07-23 05:43:38',1,'2021-07-23 05:43:38',1),
	 (1610,'readvisitorevent','post:/api/event/listvisitorevent','List Visitor Joined (attendance, Certificate, etc)',303,1,'2021-07-29 16:31:25',1,'2021-07-29 16:31:25',1),
	 (1700,'createdegree','put:/api/degree/create','Create Degree',305,1,'2021-07-23 05:45:57',1,'2021-07-23 05:45:57',1),
	 (1701,'readdegree','get:/api/degree/read/[p]|post:/api/degree/list','Read Degree',305,1,'2021-07-23 05:46:22',1,'2021-07-23 05:46:22',1),
	 (1702,'updatedegree','patch:/api/degree/update','Update Degree',305,1,'2021-07-23 05:46:45',1,'2021-07-23 05:46:45',1),
	 (1703,'deletedegree','delete:/api/degree/delete/[p]','Delete Degree',305,1,'2021-07-23 05:47:05',1,'2021-07-23 05:47:05',1);
INSERT INTO adt_beevey_permission (id,privilege,endpoint,label,module_id,is_active,created_on,created_by,modified_on,modified_by) VALUES
	 (1800,'createspeaker','put:/api/speaker/create','Create Speaker',306,1,'2021-07-23 05:47:32',1,'2021-07-23 05:47:32',1),
	 (1801,'readspeaker','post:/api/speaker/list|get:/api/speaker/read/[p]','Read Speaker',306,1,'2021-07-23 05:47:56',1,'2021-07-23 05:47:56',1),
	 (1802,'updatespeaker','patch:/api/speaker/update','Update Speaker',306,1,'2021-07-23 05:48:23',1,'2021-07-23 05:48:23',1),
	 (1803,'deletespeaker','delete:/api/speaker/delete/[p]','Delete Speaker',306,1,'2021-07-23 05:48:52',1,'2021-07-23 05:48:52',1),
	 (1250,'createeventmessage','put:/api/eventmessage/create','Create Event Message',216,1,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (1251,'readeventmessage','get:/api/eventmessage/read/[p]|post:/api/domainmessage/list','Read Event Message',216,1,'2021-05-30 08:10:12',1,'2021-05-30 08:10:12',1),
	 (1252,'updateeventmessage','patch:/api/eventmessage/update','Update Event Message',216,0,'2021-05-30 08:11:14',1,'2021-06-04 17:52:40',1);


INSERT INTO adt_beevey_role (id,oauth_clients_id,domain_id,name,description,created_on,created_by,modified_on,modified_by) VALUES
	 (1,1,NULL,'Super Administrator','Can do everything the system','2021-02-02 08:00:27',1,'2021-02-02 08:08:17',2),
	 (2,1,NULL,'Visitor Request','Only for Visitor : Activation & Reset Password','2021-05-28 16:24:56',1,'2021-05-28 16:37:18',1),
	 (3,1,NULL,'Visitor System User','Only for Visitor : System User Visitor for get survey','2021-05-28 17:05:16',1,'2023-10-09 03:08:27',1),
	 (7,2,1,'Administrator Event Master','Template Role olah event untuk user di (Master)','2021-07-02 09:47:09',1,'2021-11-06 07:55:39',1),
	 (8,2,1,'Administrator Event Prodi / Unit / Division','Template Role olah event untuk user di Prodi / Unit / Division (domain)','2021-07-16 18:31:50',1,'2022-11-28 21:00:54',1);


INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (1,1,1,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (2,1,2,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (3,1,3,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (4,1,4,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (5,1,6,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (6,1,7,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (7,1,8,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (8,1,9,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (9,1,10,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (10,1,20,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (11,1,21,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (12,1,22,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (13,1,23,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (14,1,1100,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (15,1,1101,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (16,1,1102,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (17,1,1103,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (18,1,1120,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (19,1,1121,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (20,1,1122,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (21,1,1123,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (22,1,1124,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (23,1,1150,1,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (24,1,1151,1,'2021-05-30 08:10:12',1,'2021-05-30 08:10:12',1),
	 (25,1,1152,1,'2021-05-30 08:11:14',1,'2021-05-30 08:11:14',1),
	 (26,1,1153,1,'2021-05-30 08:11:36',1,'2021-05-30 08:11:36',1),
	 (27,1,1200,1,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (28,1,1201,1,'2021-05-30 08:10:12',1,'2021-05-30 08:10:12',1),
	 (29,1,1202,1,'2021-05-30 08:11:14',1,'2021-05-30 08:11:14',1),
	 (30,1,1203,1,'2021-05-30 08:11:36',1,'2021-05-30 08:11:36',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (35,1,1300,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (36,1,1301,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (37,1,1302,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (38,1,1303,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (39,1,1304,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (40,1,1305,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (41,1,1306,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (42,1,1307,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (44,1,1400,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (45,1,1401,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (301,2,1,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (302,2,2,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (303,2,3,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (304,2,4,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (305,2,6,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (306,2,7,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (307,2,8,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (308,2,9,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (309,2,10,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (310,2,20,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (311,2,21,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (312,2,22,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (313,2,23,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (314,2,1100,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (315,2,1101,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (316,2,1102,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (317,2,1103,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (318,2,1120,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (319,2,1121,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (320,2,1122,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (321,2,1123,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (322,2,1124,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (323,2,1150,0,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (324,2,1151,0,'2021-05-30 08:10:12',1,'2021-05-30 08:10:12',1),
	 (325,2,1152,0,'2021-05-30 08:11:14',1,'2021-05-30 08:11:14',1),
	 (326,2,1153,0,'2021-05-30 08:11:36',1,'2021-05-30 08:11:36',1),
	 (327,2,1200,0,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (328,2,1201,0,'2021-05-30 08:10:12',1,'2021-05-30 08:10:12',1),
	 (329,2,1202,0,'2021-05-30 08:11:14',1,'2021-05-30 08:11:14',1),
	 (330,2,1203,0,'2021-05-30 08:11:36',1,'2021-05-30 08:11:36',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (335,2,1300,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (336,2,1301,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (337,2,1302,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (338,2,1303,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (339,2,1304,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (340,2,1305,1,'2021-05-28 16:24:56',1,'2021-05-28 16:37:18',1),
	 (341,2,1306,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (342,2,1307,1,'2021-05-28 16:24:56',1,'2021-05-28 16:37:18',1),
	 (344,2,1400,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1),
	 (345,2,1401,0,'2021-05-28 16:24:56',1,'2021-05-28 16:24:56',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (601,3,1,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (602,3,2,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (603,3,3,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (604,3,4,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (605,3,6,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (606,3,7,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (607,3,8,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (608,3,9,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (609,3,10,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (610,3,20,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (611,3,21,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (612,3,22,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (613,3,23,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (614,3,1100,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (615,3,1101,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (616,3,1102,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (617,3,1103,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (618,3,1120,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (619,3,1121,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (620,3,1122,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (621,3,1123,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (622,3,1124,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (623,3,1150,0,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (624,3,1151,1,'2021-05-30 08:10:12',1,'2023-10-09 03:08:27',1),
	 (625,3,1152,0,'2021-05-30 08:11:14',1,'2021-05-30 08:11:14',1),
	 (626,3,1153,0,'2021-05-30 08:11:36',1,'2021-05-30 08:11:36',1),
	 (627,3,1200,0,'2021-05-30 08:10:41',1,'2021-05-30 08:10:41',1),
	 (628,3,1201,0,'2021-05-30 08:10:12',1,'2021-05-30 08:10:12',1),
	 (629,3,1202,0,'2021-05-30 08:11:14',1,'2021-05-30 08:11:14',1),
	 (630,3,1203,0,'2021-05-30 08:11:36',1,'2021-05-30 08:11:36',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (635,3,1300,1,'2021-05-28 17:05:16',1,'2023-10-09 03:08:27',1),
	 (636,3,1301,1,'2021-05-28 17:05:16',1,'2023-10-09 03:08:27',1),
	 (637,3,1302,1,'2021-05-28 17:05:16',1,'2023-10-09 03:08:27',1),
	 (638,3,1303,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (639,3,1304,1,'2021-05-28 17:05:16',1,'2023-10-09 03:08:27',1),
	 (640,3,1305,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (641,3,1306,1,'2021-05-28 17:05:16',1,'2023-10-09 03:08:27',1),
	 (642,3,1307,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (644,3,1400,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1),
	 (645,3,1401,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (657,1,1125,1,'2021-06-09 09:23:34',1,'2021-06-09 09:23:34',1),
	 (658,2,1125,0,'2021-06-09 09:23:34',1,'2021-06-09 09:23:34',1),
	 (659,3,1125,0,'2021-06-09 09:23:34',1,'2021-06-09 09:23:34',1),
	 (660,1,1126,1,'2021-06-15 13:53:15',1,'2023-10-09 03:08:27',1),
	 (661,2,1126,0,'2021-06-15 13:53:15',1,'2021-06-15 13:53:15',1),
	 (662,3,1126,0,'2021-06-15 13:53:15',1,'2021-06-15 13:53:15',1),
	 (663,1,1127,1,'2021-06-16 11:45:24',1,'2021-06-16 11:45:24',1),
	 (664,2,1127,0,'2021-06-16 11:45:24',1,'2021-06-16 11:45:24',1),
	 (665,3,1127,0,'2021-06-16 11:45:24',1,'2021-06-16 11:45:24',1),
	 (858,1,1154,1,'2021-07-23 05:44:42',1,'2021-07-23 05:44:42',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (859,2,1154,0,'2021-07-23 05:44:42',1,'2021-07-23 05:44:42',1),
	 (860,3,1154,0,'2021-07-23 05:44:42',1,'2021-07-23 05:44:42',1),
	 (863,1,1155,1,'2021-07-23 05:45:24',1,'2021-07-23 05:45:24',1),
	 (864,2,1155,0,'2021-07-23 05:45:24',1,'2021-07-23 05:45:24',1),
	 (865,3,1155,0,'2021-07-23 05:45:24',1,'2021-07-23 05:45:24',1),
	 (1008,1,2200,1,'2021-11-06 07:26:42',1,'2021-11-06 07:26:42',1),
	 (1009,2,2200,0,'2021-11-06 07:26:42',1,'2021-11-06 07:26:42',1),
	 (1010,3,2200,0,'2021-11-06 07:26:42',1,'2021-11-06 07:26:42',1),
	 (1013,1,2201,1,'2021-11-06 07:30:34',1,'2021-11-06 07:30:34',1),
	 (1014,2,2201,0,'2021-11-06 07:30:34',1,'2021-11-06 07:30:34',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (1015,3,2201,0,'2021-11-06 07:30:34',1,'2021-11-06 07:30:34',1),
	 (725,7,20,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (726,7,23,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (727,7,21,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (728,7,22,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (729,7,1150,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (730,7,1153,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (731,7,1151,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (732,7,1152,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (733,7,1200,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (734,7,1203,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (735,7,1201,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (736,7,1202,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (741,7,1600,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (742,7,1603,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (743,7,1606,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (744,7,1601,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (745,7,1602,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (746,7,1605,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1),
	 (747,7,1604,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:40',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (748,7,1500,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (749,7,1503,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (750,7,1501,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (751,7,1502,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (752,7,1400,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (753,7,1401,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (754,7,1,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (755,7,4,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (756,7,2,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (757,7,3,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (758,7,6,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (759,7,9,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (760,7,10,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (761,7,7,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (762,7,8,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (763,7,1100,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (764,7,1103,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (765,7,1101,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (766,7,1102,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (767,7,1125,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (768,7,1120,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (769,7,1123,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (770,7,1126,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (771,7,1121,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (772,7,1124,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (773,7,1127,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (774,7,1122,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (775,7,1305,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (776,7,1300,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (777,7,1303,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (778,7,1308,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (779,7,1301,1,'2021-07-02 09:47:09',1,'2021-11-06 07:55:41',1),
	 (780,7,1304,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (781,7,1306,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (782,7,1307,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (783,7,1302,0,'2021-07-02 09:47:09',1,'2021-07-02 09:47:09',1),
	 (784,8,20,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (785,8,23,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (786,8,21,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (787,8,22,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (788,8,1150,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (789,8,1153,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (790,8,1151,1,'2021-07-16 18:31:50',1,'2022-11-28 21:00:55',1),
	 (791,8,1152,0,'2021-07-16 18:31:50',1,'2021-10-11 11:33:50',1),
	 (792,8,1200,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (793,8,1203,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (794,8,1201,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (795,8,1202,0,'2021-07-16 18:31:50',1,'2021-07-16 18:31:50',1),
	 (800,8,1600,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (801,8,1603,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (802,8,1606,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (803,8,1601,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (804,8,1602,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (805,8,1605,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (806,8,1604,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (807,8,1500,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (808,8,1503,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (809,8,1501,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (810,8,1502,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (811,8,1400,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (812,8,1401,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (813,8,1,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (814,8,4,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (815,8,2,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (816,8,3,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (817,8,6,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (818,8,9,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (819,8,10,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (820,8,7,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (821,8,8,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (822,8,1100,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (823,8,1103,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (824,8,1101,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (825,8,1102,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (826,8,1125,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (827,8,1120,0,'2021-07-16 18:31:51',1,'2021-10-06 12:38:54',1),
	 (828,8,1123,0,'2021-07-16 18:31:51',1,'2021-10-06 12:38:54',1),
	 (829,8,1126,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (830,8,1121,0,'2021-07-16 18:31:51',1,'2021-10-06 12:39:34',1),
	 (831,8,1124,0,'2021-07-16 18:31:51',1,'2021-10-06 12:38:54',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (832,8,1127,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (833,8,1122,0,'2021-07-16 18:31:51',1,'2021-10-06 12:39:35',1),
	 (834,8,1305,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (835,8,1300,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:56',1),
	 (836,8,1303,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (837,8,1308,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (838,8,1301,0,'2021-07-16 18:31:51',1,'2021-10-29 18:23:28',1),
	 (839,8,1304,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (840,8,1306,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:56',1),
	 (841,8,1307,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (842,8,1302,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (846,7,1607,0,'2021-07-23 05:42:04',1,'2021-07-23 05:42:04',1),
	 (847,8,1607,1,'2021-07-23 05:42:04',1,'2022-11-28 21:00:55',1),
	 (851,7,1608,0,'2021-07-23 05:42:58',1,'2021-07-23 05:42:58',1),
	 (852,8,1608,1,'2021-07-23 05:42:58',1,'2022-11-28 21:00:55',1),
	 (856,7,1609,1,'2021-07-23 05:43:38',1,'2021-11-06 07:55:40',1),
	 (857,8,1609,1,'2021-07-23 05:43:38',1,'2022-11-28 21:00:55',1),
	 (861,7,1154,0,'2021-07-23 05:44:42',1,'2021-07-23 05:44:42',1),
	 (862,8,1154,0,'2021-07-23 05:44:42',1,'2021-07-23 05:44:42',1),
	 (866,7,1155,0,'2021-07-23 05:45:24',1,'2021-07-23 05:45:24',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (867,8,1155,0,'2021-07-23 05:45:24',1,'2021-07-23 05:45:24',1),
	 (911,7,1610,1,'2021-07-29 16:31:25',1,'2021-11-06 07:55:40',1),
	 (912,8,1610,1,'2021-07-29 16:31:25',1,'2022-11-28 21:00:55',1),
	 (1011,7,2200,1,'2021-11-06 07:26:42',1,'2021-11-06 07:55:41',1),
	 (1012,8,2200,1,'2021-11-06 07:26:42',1,'2022-11-28 21:00:55',1),
	 (1016,7,2201,1,'2021-11-06 07:30:34',1,'2021-11-06 07:55:41',1),
	 (1017,8,2201,1,'2021-11-06 07:30:34',1,'2022-11-28 21:00:55',1),
	 (46,1,1308,1,'2021-02-02 08:00:27',1,'2021-02-02 08:00:27',1),
	 (343,2,1308,1,'2021-05-28 16:24:56',1,'2021-05-28 16:37:18',1),
	 (643,3,1308,0,'2021-05-28 17:05:16',1,'2021-05-28 17:05:16',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (46,1,1500,1,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (47,1,1501,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (48,1,1502,1,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (49,1,1503,1,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (50,1,1600,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (51,1,1601,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (52,1,1602,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (53,1,1603,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (54,1,1604,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (55,1,1605,1,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (56,1,1606,1,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (57,1,1607,1,'2021-07-23 05:42:04',1,'2022-11-28 21:00:55',1),
	 (58,1,1608,1,'2021-07-23 05:42:58',1,'2022-11-28 21:00:55',1),
	 (59,1,1609,1,'2021-07-23 05:43:38',1,'2022-11-28 21:00:55',1),
	 (60,1,1610,1,'2021-07-29 16:31:25',1,'2022-11-28 21:00:55',1),
	 (346,2,1500,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (347,2,1501,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (348,2,1502,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (349,2,1503,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (350,2,1600,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (351,2,1601,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (352,2,1602,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (353,2,1603,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (354,2,1604,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (355,2,1605,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (356,2,1606,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (357,2,1607,0,'2021-07-23 05:42:04',1,'2022-11-28 21:00:55',1),
	 (358,2,1608,0,'2021-07-23 05:42:58',1,'2022-11-28 21:00:55',1),
	 (359,2,1609,0,'2021-07-23 05:43:38',1,'2022-11-28 21:00:55',1),
	 (360,2,1610,0,'2021-07-29 16:31:25',1,'2022-11-28 21:00:55',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (646,3,1500,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (647,3,1501,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (648,3,1502,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (649,3,1503,0,'2021-07-16 18:31:51',1,'2021-07-18 20:21:56',1),
	 (650,3,1600,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (651,3,1601,1,'2021-07-16 18:31:51',1,'2023-10-09 03:08:27',1),
	 (652,3,1602,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (653,3,1603,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (654,3,1604,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1),
	 (655,3,1605,0,'2021-07-16 18:31:51',1,'2022-11-28 21:00:55',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (656,3,1606,0,'2021-07-16 18:31:51',1,'2021-07-16 18:31:51',1),
	 (657,3,1607,0,'2021-07-23 05:42:04',1,'2022-11-28 21:00:55',1),
	 (658,3,1608,0,'2021-07-23 05:42:58',1,'2022-11-28 21:00:55',1),
	 (659,3,1609,0,'2021-07-23 05:43:38',1,'2022-11-28 21:00:55',1),
	 (660,3,1610,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (61,1,1700,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (62,1,1701,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (63,1,1702,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (64,1,1703,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (65,1,1800,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (66,1,1801,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (67,1,1802,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (68,1,1803,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (69,1,1250,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (70,1,1251,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (71,1,1252,1,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (361,2,1700,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (362,2,1701,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (363,2,1702,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (364,2,1703,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (365,2,1800,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (366,2,1801,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (367,2,1802,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (368,2,1803,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (369,2,1250,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (370,2,1251,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (371,2,1252,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (661,3,1700,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (662,3,1701,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (663,3,1702,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (664,3,1703,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (665,3,1800,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (666,3,1801,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (667,3,1802,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (668,3,1803,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (669,3,1250,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (670,3,1251,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (671,3,1252,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (561,7,1700,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (562,7,1701,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (563,7,1702,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (564,7,1703,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (565,7,1800,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (566,7,1801,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (567,7,1802,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (568,7,1803,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (569,7,1250,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (570,7,1251,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (571,7,1252,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (861,8,1700,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1);
INSERT INTO adt_beevey_role_permission (id,role_id,permission_id,action_value,created_on,created_by,modified_on,modified_by) VALUES
	 (862,8,1701,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (863,8,1702,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (864,8,1703,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (865,8,1800,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (866,8,1801,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (867,8,1802,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (868,8,1803,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (869,8,1250,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (870,8,1251,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1),
	 (871,8,1252,0,'2021-07-29 16:31:25',1,'2023-10-09 03:08:27',1);


INSERT INTO adt_beevey_system_user (id,oauth_clients_id,domain_id,entity_detail_id,name,email,username,phone_number,password,expired_date,is_active,back_door_code,back_door_expired,created_on,created_by,modified_on,modified_by) VALUES
	 (1,1,NULL,1,'Super Administrator','su.admin','su.admin','999999999999','774a1b79d1966b93e5eea7f194f27f6aa843c8fae5303a023831e5d4767e9fe4','2020-12-12 13:55:58',1,'95270fafa641f0ba6acae480c60a013f3cf62eded611d75ff5582b892d051c26','2021-07-02 10:22:50','2019-12-12 13:56:08',1,'2019-12-12 13:56:14',1),
	 (2,1,1,2,'Visitor Request','visitor.request@gmail.com','visitor.request',NULL,'315a8585757b3aa7804f43a44dec724ee34edaa6645907931ff93823d6824372','2011-05-28 16:46:33',1,NULL,NULL,'2021-05-28 16:46:33',1,'2021-05-28 16:46:33',1),
	 (3,2,1,3,'System User Visitor Web SAPU','visitor.websapu.user@gmail.com','visitor.websapu.user',NULL,'a54bbb5db1fc1f2edeaeb28c5f95a2de1611bcb52635fe93aee19f47ab0e07a2','2011-06-17 16:20:35',1,NULL,NULL,'2021-06-17 16:20:35',1,'2021-06-17 16:20:35',1);


INSERT INTO adt_beevey_system_user_role (id,system_user_id,role_id,created_on,created_by,modified_on,modified_by) VALUES
	 (1,1,1,'2021-02-02 08:17:11',1,'2021-02-02 08:17:18',1),
	 (15,2,2,'2021-05-28 16:47:50',1,'2021-05-28 16:47:50',1),
	 (18,3,3,'2021-06-17 16:20:35',1,'2021-06-17 16:20:35',1);



