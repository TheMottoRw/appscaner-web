-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: scanner
-- ------------------------------------------------------
-- Server version	5.7.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `package` varchar(255) DEFAULT '',
  `sdk_version` varchar(30) DEFAULT NULL,
  `installed` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `permissions` text,
  `sensitivity_level` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (20,1,'NCSA Challenge','1.0','com.learn.scanner','30','2021-02-16 09:19:00','2021-02-19 11:51:00','android.permission.PACKAGE_USAGE_STATS,\nandroid.permission.READ_PHONE_STATE,\nandroid.permission.READ_PRIVILEGED_PHONE_STATE,\nandroid.permission.INTERNET,\nandroid.permission.REQUEST_DELETE_PACKAGES,\n',NULL,'2021-03-07 12:29:54'),(21,1,'Quora','3.0.20','com.quora.android','29','2021-01-04 08:41:00','2021-02-25 20:12:00','android.permission.INTERNET,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.GET_ACCOUNTS,\nandroid.permission.USE_CREDENTIALS,\nandroid.permission.VIBRATE,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\nandroid.permission.WAKE_LOCK,\nandroid.permission.RECEIVE_BOOT_COMPLETED,\nandroid.permission.ACCESS_WIFI_STATE,\nandroid.permission.FOREGROUND_SERVICE,\ncom.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE,\ncom.google.android.c2dm.permission.RECEIVE,\nandroid.permission.READ_EXTERNAL_STORAGE,\n',NULL,'2021-03-07 12:29:54'),(22,1,'WhatsApp','2.21.3.19','com.whatsapp','29','2020-10-30 15:23:00','2021-02-26 00:41:00','android.permission.READ_PHONE_STATE,\nandroid.permission.READ_PHONE_NUMBERS,\nandroid.permission.RECEIVE_SMS,\nandroid.permission.VIBRATE,\nandroid.permission.USE_BIOMETRIC,\nandroid.permission.USE_FINGERPRINT,\nandroid.permission.ACCESS_COARSE_LOCATION,\nandroid.permission.ACCESS_FINE_LOCATION,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.ACCESS_WIFI_STATE,\nandroid.permission.AUTHENTICATE_ACCOUNTS,\nandroid.permission.BLUETOOTH,\nandroid.permission.BROADCAST_STICKY,\nandroid.permission.CAMERA,\nandroid.permission.CHANGE_NETWORK_STATE,\nandroid.permission.CHANGE_WIFI_STATE,\nandroid.permission.GET_ACCOUNTS,\nandroid.permission.GET_TASKS,\nandroid.permission.INSTALL_SHORTCUT,\nandroid.permission.INTERNET,\nandroid.permission.MANAGE_ACCOUNTS,\nandroid.permission.MANAGE_OWN_CALLS,\nandroid.permission.MODIFY_AUDIO_SETTINGS,\nandroid.permission.NFC,\nandroid.permission.READ_CONTACTS,\nandroid.permission.READ_PROFILE,\nandroid.permission.READ_SYNC_SETTINGS,\nandroid.permission.READ_SYNC_STATS,\nandroid.permission.RECEIVE_BOOT_COMPLETED,\nandroid.permission.RECORD_AUDIO,\nandroid.permission.SEND_SMS,\nandroid.permission.USE_CREDENTIALS,\nandroid.permission.WAKE_LOCK,\nandroid.permission.WRITE_CONTACTS,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\nandroid.permission.WRITE_SYNC_SETTINGS,\nandroid.permission.REQUEST_INSTALL_PACKAGES,\nandroid.permission.FOREGROUND_SERVICE,\nandroid.permission.USE_FULL_SCREEN_INTENT,\ncom.android.launcher.permission.INSTALL_SHORTCUT,\ncom.android.launcher.permission.UNINSTALL_SHORTCUT,\ncom.google.android.c2dm.permission.RECEIVE,\ncom.google.android.providers.gsf.permission.READ_GSERVICES,\ncom.sec.android.provider.badge.permission.READ,\ncom.sec.android.provider.badge.permission.WRITE,\ncom.htc.launcher.permission.READ_SETTINGS,\ncom.htc.launcher.permission.UPDATE_SHORTCUT,\ncom.sonyericsson.home.permission.BROADCAST_BADGE,\ncom.sonymobile.home.permission.PROVIDER_INSERT_BADGE,\ncom.huawei.android.launcher.permission.READ_SETTINGS,\ncom.huawei.android.launcher.permission.WRITE_SETTINGS,\ncom.huawei.android.launcher.permission.CHANGE_BADGE,\ncom.whatsapp.permission.BROADCAST,\ncom.whatsapp.permission.MAPS_RECEIVE,\ncom.whatsapp.permission.REGISTRATION,\ncom.whatsapp.sticker.READ,\nandroid.permission.CALL_PHONE,\nandroid.permission.ANSWER_PHONE_CALLS,\nandroid.permission.READ_CALL_LOG,\nandroid.permission.READ_EXTERNAL_STORAGE,\n',NULL,'2021-03-07 12:29:54'),(23,1,'QR & Barcode Scanner','2.2.3','com.gamma.scan','29','2020-12-01 12:53:00','2021-02-27 08:53:00','android.permission.CAMERA,\nandroid.permission.INTERNET,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.ACCESS_WIFI_STATE,\nandroid.permission.CHANGE_WIFI_STATE,\nandroid.permission.CHANGE_WIFI_MULTICAST_STATE,\nandroid.permission.READ_EXTERNAL_STORAGE,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\nandroid.permission.VIBRATE,\nandroid.permission.FLASHLIGHT,\nandroid.permission.WAKE_LOCK,\ncom.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE,\nandroid.permission.RECEIVE_BOOT_COMPLETED,\n',NULL,'2021-03-07 12:29:54'),(24,1,'TuneIn Radio','26.1','tunein.player','29','2021-02-06 10:29:00','2021-02-26 00:40:00','com.android.vending.BILLING,\nandroid.permission.INTERNET,\nandroid.permission.BLUETOOTH,\nandroid.permission.ACCESS_COARSE_LOCATION,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.RECEIVE_BOOT_COMPLETED,\nandroid.permission.WAKE_LOCK,\nandroid.permission.READ_INTERNAL_STORAGE,\nandroid.permission.WRITE_INTERNAL_STORAGE,\nandroid.permission.FOREGROUND_SERVICE,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\ncom.google.android.providers.gsf.permission.READ_GSERVICES,\ncom.google.android.c2dm.permission.RECEIVE,\ncom.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE,\nandroid.permission.ACCESS_FINE_LOCATION,\nandroid.permission.READ_EXTERNAL_STORAGE,\n',NULL,'2021-03-07 12:29:54'),(25,1,'Eazzy Banking','2.6.1','ke.co.equitybank.equitel','30','2021-02-15 13:17:00','2021-02-15 13:17:00','android.permission.READ_CONTACTS,\nandroid.permission.INTERNET,\nandroid.permission.ACCESS_NETWORK_STATE,\ncom.google.android.providers.gsf.permission.READ_GSERVICES,\nfractal5.mythirdapp.permission.MAPS_RECEIVE,\nandroid.permission.ACCESS_COARSE_LOCATION,\nandroid.permission.ACCESS_FINE_LOCATION,\nandroid.permission.READ_EXTERNAL_STORAGE,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\nandroid.permission.VIBRATE,\nandroid.permission.USE_BIOMETRIC,\nandroid.permission.USE_FINGERPRINT,\nandroid.permission.GET_ACCOUNTS,\ncom.google.android.c2dm.permission.RECEIVE,\nandroid.permission.CAMERA,\nandroid.permission.READ_PHONE_STATE,\nandroid.permission.WAKE_LOCK,\nandroid.permission.ACCESS_WIFI_STATE,\nandroid.permission.REQUEST_INSTALL_PACKAGES,\ncom.huawei.appmarket.service.commondata.permission.GET_COMMON_DATA,\n',NULL,'2021-03-07 12:29:54'),(26,1,'E-Gura','5.0.1','com.ee.gura','29','2020-12-04 14:44:00','2021-02-27 08:44:00','android.permission.ACCESS_NETWORK_STATE,\nandroid.permission.INTERNET,\nandroid.permission.READ_EXTERNAL_STORAGE,\n',NULL,'2021-03-07 12:29:54'),(27,1,'Imenye','1.0','com.app.imenye','28','2021-02-15 09:56:00','2021-02-15 09:56:00','android.permission.INTERNET,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.RECEIVE_BOOT_COMPLETED,\n',NULL,'2021-03-07 12:29:54'),(28,1,'Google Play services for Instant Apps','6.11-release-353984765','com.google.android.instantapps.supervisor','27','2020-10-30 10:53:00','2021-01-31 08:37:00','android.permission.CAMERA,\nandroid.permission.RECORD_AUDIO,\nandroid.permission.ACCESS_COARSE_LOCATION,\nandroid.permission.ACCESS_FINE_LOCATION,\nandroid.permission.READ_PHONE_STATE,\nandroid.permission.INTERNET,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.ACCESS_WIFI_STATE,\nandroid.permission.VIBRATE,\nandroid.permission.WAKE_LOCK,\nandroid.permission.RECEIVE_BOOT_COMPLETED,\ncom.google.android.providers.gsf.permission.READ_GSERVICES,\nandroid.permission.DOWNLOAD_WITHOUT_NOTIFICATION,\n',NULL,'2021-03-07 12:29:54'),(29,1,'mbwira_ios','1.0.0','com.example.mbwira_ios','28','2020-12-19 16:15:00','2020-12-19 16:15:00','android.permission.INTERNET,\n',NULL,'2021-03-07 12:29:54'),(30,1,'Sosoma','4.0','com.app.sosoma','29','2020-12-21 20:43:00','2021-02-12 11:11:00','android.permission.ACCESS_NETWORK_STATE,\nandroid.permission.INTERNET,\nandroid.permission.READ_EXTERNAL_STORAGE,\n',NULL,'2021-03-07 12:29:54'),(31,1,'Africa\'s Talking','1.1.5','com.africastalking.sandbox','27','2020-11-15 13:15:00','2021-02-27 08:48:00','android.permission.USE_SIP,\nandroid.permission.INTERNET,\nandroid.permission.VIBRATE,\nandroid.permission.ACCESS_WIFI_STATE,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.WAKE_LOCK,\nandroid.permission.RECORD_AUDIO,\nandroid.permission.MODIFY_AUDIO_SETTINGS,\n',NULL,'2021-03-07 12:29:54'),(32,1,'VLC','3.3.4','org.videolan.vlc','29','2020-11-04 00:49:00','2021-01-29 09:28:00','org.videolan.vlc.permission.READ_EXTENSION_DATA,\norg.videolan.vlc.permission.BIND_DATA_CONSUMER,\nandroid.permission.VIBRATE,\nandroid.permission.WRITE_SETTINGS,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\nandroid.permission.INTERNET,\nandroid.permission.RECEIVE_BOOT_COMPLETED,\nandroid.permission.RECORD_AUDIO,\nandroid.permission.FOREGROUND_SERVICE,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.WAKE_LOCK,\nandroid.permission.MODIFY_AUDIO_SETTINGS,\nandroid.permission.BLUETOOTH,\nandroid.permission.SYSTEM_ALERT_WINDOW,\ncom.android.providers.tv.permission.READ_EPG_DATA,\ncom.android.providers.tv.permission.WRITE_EPG_DATA,\norg.videolan.vlc.MEDIA,\ncom.android.vending.BILLING,\nandroid.permission.READ_EXTERNAL_STORAGE,\n',NULL,'2021-03-07 12:29:54'),(33,1,'TikTok','18.6.6','com.zhiliaoapp.musically','29','2021-03-07 12:28:00','2021-03-07 12:28:00','android.permission.INTERNET,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.READ_EXTERNAL_STORAGE,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\nandroid.permission.ACCESS_WIFI_STATE,\nandroid.permission.CAMERA,\nandroid.permission.RECORD_AUDIO,\nandroid.permission.FLASHLIGHT,\nandroid.permission.WAKE_LOCK,\nandroid.permission.GET_TASKS,\nandroid.permission.READ_CONTACTS,\nandroid.permission.RECEIVE_BOOT_COMPLETED,\nandroid.permission.VIBRATE,\ncom.meizu.c2dm.permission.RECEIVE,\ncom.zhiliaoapp.musically.permission.READ_ACCOUNT,\ncom.zhiliaoapp.musically.permission.WRITE_ACCOUNT,\ncom.android.launcher.permission.INSTALL_SHORTCUT,\ncom.android.launcher.permission.UNINSTALL_SHORTCUT,\ncom.android.launcher.permission.READ_SETTINGS,\nandroid.permission.AUTHENTICATE_ACCOUNTS,\ncom.htc.launcher.permission.READ_SETTINGS,\ncom.lge.launcher.permission.READ_SETTINGS,\ncom.lge.launcher.permission.WRITE_SETTINGS,\ncom.huawei.launcher3.permission.READ_SETTINGS,\ncom.huawei.launcher3.permission.WRITE_SETTINGS,\ncom.huawei.launcher2.permission.READ_SETTINGS,\ncom.huawei.launcher2.permission.WRITE_SETTINGS,\ncom.ebproductions.android.launcher.permission.READ_SETTINGS,\ncom.ebproductions.android.launcher.permission.WRITE_SETTINGS,\ncom.oppo.launcher.permission.READ_SETTINGS,\ncom.oppo.launcher.permission.WRITE_SETTINGS,\ncom.huawei.android.launcher.permission.READ_SETTINGS,\ncom.huawei.android.launcher.permission.WRITE_SETTINGS,\ndianxin.permission.ACCESS_LAUNCHER_DATA,\ncom.miui.mihome2.permission.READ_SETTINGS,\ncom.miui.mihome2.permission.WRITE_SETTINGS,\nandroid.permission.FOREGROUND_SERVICE,\ncom.zhiliao.musically.livewallpaper.permission.wallpaperplugin,\ncom.zhiliaoapp.musically.permission.MIPUSH_RECEIVE,\ncom.zhiliaoapp.musically.push.permission.MESSAGE,\nandroid.permission.REORDER_TASKS,\ncom.android.vending.BILLING,\nandroid.permission.WRITE_SYNC_SETTINGS,\ncom.sec.android.provider.badge.permission.READ,\ncom.sec.android.provider.badge.permission.WRITE,\ncom.htc.launcher.permission.UPDATE_SHORTCUT,\ncom.sonyericsson.home.permission.BROADCAST_BADGE,\ncom.sonymobile.home.permission.PROVIDER_INSERT_BADGE,\ncom.majeur.launcher.permission.UPDATE_BADGE,\nandroid.permission.MODIFY_AUDIO_SETTINGS,\ncom.zhiliaoapp.musically.miniapp.PROCESS_COMMUNICATION,\ncom.huawei.android.launcher.permission.CHANGE_BADGE,\nandroid.permission.READ_APP_BADGE,\nme.everything.badger.permission.BADGE_COUNT_READ,\nme.everything.badger.permission.BADGE_COUNT_WRITE,\nandroid.permission.UPDATE_APP_BADGE,\ncom.vivo.notification.permission.BADGE_ICON,\ncom.google.android.c2dm.permission.RECEIVE,\ncom.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE,\ncom.zhiliaoapp.musically.permission.RECEIVE_ADM_MESSAGE,\ncom.amazon.device.messaging.permission.RECEIVE,\n',NULL,'2021-03-07 12:29:54'),(34,1,'Pool Billiards Pro','4.4','com.forthblue.pool','28','2020-10-31 09:46:00','2021-02-07 23:18:00','com.android.vending.BILLING,\nandroid.permission.ACCESS_WIFI_STATE,\nandroid.permission.INTERNET,\nandroid.permission.ACCESS_NETWORK_STATE,\n',NULL,'2021-03-07 12:29:55'),(35,1,'Genesis Church Hub','1.0','com.gensischurch.genesisapp','28','2021-03-01 16:26:00','2021-03-05 11:55:00','android.permission.ACCESS_NETWORK_STATE,\nandroid.permission.CAMERA,\nandroid.permission.INTERNET,\nandroid.permission.READ_EXTERNAL_STORAGE,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\nandroid.permission.CHANGE_NETWORK_STATE,\nandroid.permission.CALL_PHONE,\nandroid.permission.BROADCAST_STICKY,\nandroid.permission.VIBRATE,\nandroid.permission.BLUETOOTH_ADMIN,\nandroid.permission.BLUETOOTH,\n',NULL,'2021-03-07 12:29:55'),(36,1,'200 Secrets of Success','1.0.24','com.yolobookstories.secretsofsuccess','29','2020-10-30 09:03:00','2021-02-27 08:49:00','android.permission.INTERNET,\nandroid.permission.WRITE_EXTERNAL_STORAGE,\nandroid.permission.READ_EXTERNAL_STORAGE,\nandroid.permission.ACCESS_NETWORK_STATE,\nandroid.permission.WAKE_LOCK,\ncom.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE,\n',NULL,'2021-03-07 12:29:55');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_sensitivity`
--

DROP TABLE IF EXISTS `permission_sensitivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_sensitivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sensitivity` varchar(30) DEFAULT '',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_sensitivity`
--

LOCK TABLES `permission_sensitivity` WRITE;
/*!40000 ALTER TABLE `permission_sensitivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_sensitivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sensitivity` int(11) DEFAULT NULL,
  `permission` varchar(255) DEFAULT '',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` varchar(255) DEFAULT NULL,
  `operator_1` varchar(255) DEFAULT NULL,
  `iccid_1` varchar(255) DEFAULT NULL,
  `operator_2` varchar(30) DEFAULT NULL,
  `iccid_2` varchar(20) DEFAULT NULL,
  `imei_1` varchar(30) DEFAULT NULL,
  `imei_2` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'635105014273842','Airtel','89250131105021642297','MTN','8925010000142738424f','354988097296683','354988097296691','2021-02-18 15:26:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-07 17:33:59
