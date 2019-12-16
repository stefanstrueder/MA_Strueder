-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dataset
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `busybox_metrics`
--

DROP TABLE IF EXISTS `busybox_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `busybox_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `comm` varchar(255) DEFAULT NULL,
  `adev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busybox_metrics`
--

LOCK TABLES `busybox_metrics` WRITE;
/*!40000 ALTER TABLE `busybox_metrics` DISABLE KEYS */;
INSERT INTO `busybox_metrics` VALUES ('busybox','1_16_0','__glibc__','2','1'),('busybox','1_16_0','__gnu__','1','1'),('busybox','1_16_0','__gnuc__','2','1'),('busybox','1_16_0','__kernel__','2','1'),('busybox','1_16_0','__linux__','2','1'),('busybox','1_16_0','check_for_overflow','1','1'),('busybox','1_16_0','config_symbol','1','1'),('busybox','1_16_0','config_symbol\"','1','1'),('busybox','1_16_0','config_xz_dec_arm','1','1'),('busybox','1_16_0','config_xz_dec_armthumb','1','1'),('busybox','1_16_0','config_xz_dec_ia64','1','1'),('busybox','1_16_0','config_xz_dec_powerpc','1','1'),('busybox','1_16_0','config_xz_dec_sparc','1','1'),('busybox','1_16_0','config_xz_dec_x86','1','1'),('busybox','1_16_0','debug','1','1'),('busybox','1_16_0','debug_shell','1','1'),('busybox','1_16_0','dmalloc','1','1'),('busybox','1_16_0','dns_compr_testing','1','1'),('busybox','1_16_0','do_flushcache','1','1'),('busybox','1_16_0','enable_htree','1','1'),('busybox','1_16_0','glob_brace','1','1'),('busybox','1_16_0','glob_tilde','1','1'),('busybox','1_16_0','have_afinet6','1','1'),('busybox','1_16_0','have_mntent_h','1','1'),('busybox','1_16_0','have_sys_statfs_h','1','1'),('busybox','1_16_0','head2','1','1'),('busybox','1_16_0','hwib_debug','1','1'),('busybox','1_16_0','mshdebug','1','1'),('busybox','1_16_0','rlimit_as','2','1'),('busybox','1_16_0','rlimit_core','2','1'),('busybox','1_16_0','rlimit_cpu','2','1'),('busybox','1_16_0','rlimit_data','2','1'),('busybox','1_16_0','rlimit_fsize','2','1'),('busybox','1_16_0','rlimit_locks','2','1'),('busybox','1_16_0','rlimit_memlock','2','1'),('busybox','1_16_0','rlimit_nofile','2','1'),('busybox','1_16_0','rlimit_nproc','2','1'),('busybox','1_16_0','rlimit_rss','2','1'),('busybox','1_16_0','rlimit_stack','2','1'),('busybox','1_16_0','shrinkby','1','1'),('busybox','1_16_0','single_applet_main','1','1'),('busybox','1_16_0','so_bindtodevice','1','1'),('busybox','1_16_0','sslsvd','1','1'),('busybox','1_16_0','standalone','1','1'),('busybox','1_16_0','swd_best_off','1','1'),('busybox','1_16_0','syslogd_mark','1','1'),('busybox','1_16_0','test','2','2'),('busybox','1_16_0','this_one_is_unused','1','1'),('busybox','1_16_0','unused','3','1'),('busybox','1_16_0','unused_for_now','2','1'),('busybox','1_16_0','unused_since_we_avoid_static_bufs','2','1'),('busybox','1_16_0','unused_so_far','1','1'),('busybox','1_16_0','use_poll','1','1'),('busybox','1_16_0','using_lseek_to_get_size','1','1'),('busybox','1_16_0','version_with_writev','1','1'),('busybox','1_16_0','xz_dec_any_check','1','1'),('busybox','1_16_0','xz_dec_arm','1','1'),('busybox','1_16_0','xz_dec_armthumb','1','1'),('busybox','1_16_0','xz_dec_bcj','3','1'),('busybox','1_16_0','xz_dec_dynalloc','1','1'),('busybox','1_16_0','xz_dec_ia64','1','1'),('busybox','1_16_0','xz_dec_powerpc','1','1'),('busybox','1_16_0','xz_dec_prealloc','1','1'),('busybox','1_16_0','xz_dec_single','1','1'),('busybox','1_16_0','xz_dec_sparc','1','1'),('busybox','1_16_0','xz_dec_x86','1','1'),('busybox','1_16_0','xz_realloc_dict_buf','2','1'),('busybox','1_17_0','__do_strrstr_test','2','1'),('busybox','1_17_0','__gnu__','1','1'),('busybox','1_17_0','__i386__','4','2'),('busybox','1_17_0','__linux__','8','2'),('busybox','1_17_0','__sparc__','1','1'),('busybox','1_17_0','_sc_nprocessors_conf','2','2'),('busybox','1_17_0','af_netlink','1','1'),('busybox','1_17_0','af_packet','1','1'),('busybox','1_17_0','and','2','2'),('busybox','1_17_0','b19200','1','1'),('busybox','1_17_0','b38400','1','1'),('busybox','1_17_0','bsdly','1','1'),('busybox','1_17_0','cibaud','1','1'),('busybox','1_17_0','cmd_singleword_noglob_cond','4','1'),('busybox','1_17_0','crdly','1','1'),('busybox','1_17_0','crtscts','2','1'),('busybox','1_17_0','dns_compr_testing','1','1'),('busybox','1_17_0','echoctl','1','1'),('busybox','1_17_0','echoke','1','1'),('busybox','1_17_0','echoprt','1','1'),('busybox','1_17_0','ext2_dynamic_rev','1','1'),('busybox','1_17_0','ffdly','1','1'),('busybox','1_17_0','forest','1','1'),('busybox','1_17_0','have_mntent_h','2','2'),('busybox','1_17_0','have_sys_statfs_h','1','1'),('busybox','1_17_0','hush_brace_exp','2','1'),('busybox','1_17_0','hush_brace_expansion','2','1'),('busybox','1_17_0','iexten','1','1'),('busybox','1_17_0','imaxbel','1','1'),('busybox','1_17_0','issue','1','1'),('busybox','1_17_0','iuclc','1','1'),('busybox','1_17_0','ixany','1','1'),('busybox','1_17_0','kernel_pll','1','1'),('busybox','1_17_0','nldly','1','1'),('busybox','1_17_0','ocrnl','1','1'),('busybox','1_17_0','ofdel','1','1'),('busybox','1_17_0','ofill','1','1'),('busybox','1_17_0','olcuc','1','1'),('busybox','1_17_0','onlcr','1','1'),('busybox','1_17_0','onlret','1','1'),('busybox','1_17_0','onocr','1','1'),('busybox','1_17_0','oxtabs','1','1'),('busybox','1_17_0','rb_disable_cad','2','2'),('busybox','1_17_0','rb_enable_cad','1','1'),('busybox','1_17_0','single_applet_str','1','1'),('busybox','1_17_0','small_mem','1','1'),('busybox','1_17_0','so_original_dst','1','1'),('busybox','1_17_0','standalone','2','1'),('busybox','1_17_0','tabdly','1','1'),('busybox','1_17_0','tiocgserial','1','1'),('busybox','1_17_0','tiocgwinsz','1','1'),('busybox','1_17_0','tostop','1','1'),('busybox','1_17_0','unused','2','1'),('busybox','1_17_0','use_poll','1','1'),('busybox','1_17_0','use_tty_group','2','1'),('busybox','1_17_0','vdsusp','1','1'),('busybox','1_17_0','veol2','1','1'),('busybox','1_17_0','vflusho','1','1'),('busybox','1_17_0','vlnext','1','1'),('busybox','1_17_0','vreprint','1','1'),('busybox','1_17_0','vstatus','1','1'),('busybox','1_17_0','vswtc','1','1'),('busybox','1_17_0','vswtch','1','1'),('busybox','1_17_0','vt_openqry','1','1'),('busybox','1_17_0','vtdly','1','1'),('busybox','1_17_0','vwerase','1','1'),('busybox','1_17_0','want_hex_escapes','1','1'),('busybox','1_17_0','xcase','1','1'),('busybox','1_18_0','__bionic__','2','1'),('busybox','1_18_0','__glibc__','3','2'),('busybox','1_18_0','__gnu__','2','1'),('busybox','1_18_0','__linux__','15','4'),('busybox','1_18_0','__sigrtmax','1','1'),('busybox','1_18_0','__sigrtmin','1','1'),('busybox','1_18_0','ancient_bs_kill_chars','2','1'),('busybox','1_18_0','and','1','1'),('busybox','1_18_0','blkgetsize64','1','1'),('busybox','1_18_0','broken_parity_detection_code','2','1'),('busybox','1_18_0','but_util_linux_last_has_no_such_opt','1','1'),('busybox','1_18_0','cbaudex','2','1'),('busybox','1_18_0','cibaud','2','1'),('busybox','1_18_0','cmspar','1','1'),('busybox','1_18_0','config_feature_editing_history','1','1'),('busybox','1_18_0','crtscts','8','1'),('busybox','1_18_0','debugging','2','1'),('busybox','1_18_0','dotrace','1','1'),('busybox','1_18_0','handle_allcaps','3','1'),('busybox','1_18_0','have_c_line','1','1'),('busybox','1_18_0','have_mntent_h','3','2'),('busybox','1_18_0','have_net_ethernet_h','1','1'),('busybox','1_18_0','have_strverscmp','2','1'),('busybox','1_18_0','have_sys_statfs_h','2','1'),('busybox','1_18_0','have_unlocked_line_ops','1','1'),('busybox','1_18_0','have_unlocked_stdio','1','1'),('busybox','1_18_0','iff_dormant','1','1'),('busybox','1_18_0','issue','5','1'),('busybox','1_18_0','login_process','2','1'),('busybox','1_18_0','m_mmap_threshold','1','1'),('busybox','1_18_0','m_trim_threshold','1','1'),('busybox','1_18_0','rlimit_locks','1','1'),('busybox','1_18_0','rlimit_nice','1','1'),('busybox','1_18_0','rlimit_rtprio','1','1'),('busybox','1_18_0','rtf_irtt','1','1'),('busybox','1_18_0','rtf_reject','1','1'),('busybox','1_18_0','sigio','1','1'),('busybox','1_18_0','sigiot','1','1'),('busybox','1_18_0','sigsys','1','1'),('busybox','1_18_0','syslogd_mark','1','1'),('busybox','1_18_0','syslogd_wrlock','1','1'),('busybox','1_18_0','test','1','1'),('busybox','1_18_0','tiocgserial','1','1'),('busybox','1_18_0','unused','1','1'),('busybox','1_18_0','use_tty_group','1','1'),('busybox','1_18_0','vswtc','3','1'),('busybox','1_18_0','vswtch','2','1'),('busybox','1_18_0','why_we_do_it_for_dev_root_only','1','1'),('busybox','1_19_0','__linux__','6','3'),('busybox','1_19_0','cbaud','1','1'),('busybox','1_19_0','cbaudex','1','1'),('busybox','1_19_0','check_for_child_exitcode','2','1'),('busybox','1_19_0','cmspar','1','1'),('busybox','1_19_0','crtscts','1','1'),('busybox','1_19_0','dmalloc','2','1'),('busybox','1_19_0','have_mntent_h','3','2'),('busybox','1_19_0','inetd_builtins_enabled','1','1'),('busybox','1_19_0','ip_pktinfo','1','1'),('busybox','1_19_0','issue','2','1'),('busybox','1_19_0','small_mem','1','1'),('busybox','1_19_0','syslogd_wrlock','1','1'),('busybox','1_19_0','testing','1','1'),('busybox','1_19_0','tiocgserial','2','2'),('busybox','1_19_0','vswtc','2','1'),('busybox','1_19_0','vswtch','2','1'),('busybox','1_20_0','__linux__','1','1'),('busybox','1_20_0','debug','1','1'),('busybox','1_20_0','eth_p_atmfate','1','1'),('busybox','1_20_0','eth_p_atmmpoa','1','1'),('busybox','1_20_0','eth_p_econet','1','1'),('busybox','1_20_0','eth_p_ieeepup','1','1'),('busybox','1_20_0','eth_p_ieeepupat','1','1'),('busybox','1_20_0','eth_p_ppp_disc','1','1'),('busybox','1_20_0','eth_p_ppp_ses','1','1'),('busybox','1_20_0','eth_p_pupat','1','1'),('busybox','1_20_0','s_typeismq','1','1'),('busybox','1_20_0','s_typeissem','1','1'),('busybox','1_20_0','s_typeisshm','1','1'),('busybox','1_20_0','s_typeistmo','1','1'),('busybox','1_20_0','sigwinch','1','1'),('busybox','1_20_0','sta_nano','1','1'),('busybox','1_20_0','unused','1','1'),('busybox','1_20_0','unused_for_now','1','1'),('busybox','1_20_0','why_bother','1','1'),('busybox','1_21_0','__cplusplus','2','2'),('busybox','1_21_0','__linux__','2','1'),('busybox','1_21_0','__uclibc__','1','1'),('busybox','1_21_0','archive_replace_via_rename','1','1'),('busybox','1_21_0','debug','1','1'),('busybox','1_21_0','enable_feature_show_threads','1','1'),('busybox','1_21_0','icmp6_filter','1','1'),('busybox','1_21_0','ip_tos','1','1'),('busybox','1_21_0','make_suid\\n\");','1','1'),('busybox','1_21_0','res_gdt_debug','1','1'),('busybox','1_21_0','swd_best_off','1','1'),('busybox','1_21_0','xz_dec_x86','1','1'),('busybox','1_22_0','__do_strrstr_test','1','1'),('busybox','1_22_0','__linux__','1','1'),('busybox','1_22_0','g','2','2'),('busybox','1_22_0','id_rsa','1','1'),('busybox','1_22_0','if_we_want_to_require_login','1','1'),('busybox','1_22_0','randtest','1','1'),('busybox','1_22_0','sigpwr','2','2'),('busybox','1_22_0','syslogd_wrlock','4','2'),('busybox','1_22_0','use_header_keys','1','1'),('busybox','1_23_0','__cplusplus','1','1'),('busybox','1_23_0','__gnuc__','3','2'),('busybox','1_23_0','__linux__','1','1'),('busybox','1_23_0','__sparc__','1','1'),('busybox','1_23_0','__turboc__','1','1'),('busybox','1_23_0','_sc_pagesize','1','1'),('busybox','1_23_0','apple_darwin','1','1'),('busybox','1_23_0','atomic_user','1','1'),('busybox','1_23_0','base_md','2','1'),('busybox','1_23_0','blkflsbuf','1','1'),('busybox','1_23_0','blkgetsize','1','1'),('busybox','1_23_0','blkgetsize64','1','1'),('busybox','1_23_0','blksszget','1','1'),('busybox','1_23_0','bloat','1','1'),('busybox','1_23_0','config_blkid_debug','1','1'),('busybox','1_23_0','config_e2label','1','1'),('busybox','1_23_0','config_feature_devfs','1','1'),('busybox','1_23_0','config_lfs','1','1'),('busybox','1_23_0','config_testio_debug','1','1'),('busybox','1_23_0','debug','5','2'),('busybox','1_23_0','debug_e2fsck','1','1'),('busybox','1_23_0','dkiocgetblockcount','1','1'),('busybox','1_23_0','enable_compression','1','1'),('busybox','1_23_0','enable_feature_gzip_levels','1','1'),('busybox','1_23_0','enable_htree','1','1'),('busybox','1_23_0','enable_swapfs','1','1'),('busybox','1_23_0','erofs','1','1'),('busybox','1_23_0','ext2_big_endian_bitmaps','1','1'),('busybox','1_23_0','ext2_dfl_checkinterval','1','1'),('busybox','1_23_0','ext2_dynamic_rev','1','1'),('busybox','1_23_0','ext2fs_require_486','1','1'),('busybox','1_23_0','fdflush','1','1'),('busybox','1_23_0','fdgetprm','1','1'),('busybox','1_23_0','have_conio_h','1','1'),('busybox','1_23_0','have_crl','1','1'),('busybox','1_23_0','have_ecc','1','1'),('busybox','1_23_0','have_errno_h','1','1'),('busybox','1_23_0','have_ext2_ioctls','1','1'),('busybox','1_23_0','have_get_file_size_ex','1','1'),('busybox','1_23_0','have_getmntinfo','1','1'),('busybox','1_23_0','have_getopt_h','1','1'),('busybox','1_23_0','have_linux_fd_h','1','1'),('busybox','1_23_0','have_linux_major_h','1','1'),('busybox','1_23_0','have_max_fragment','1','1'),('busybox','1_23_0','have_mntent_h','1','1'),('busybox','1_23_0','have_net_ethernet_h','1','1'),('busybox','1_23_0','have_net_if_dl_h','1','1'),('busybox','1_23_0','have_net_if_h','1','1'),('busybox','1_23_0','have_netinet_in_h','1','1'),('busybox','1_23_0','have_pk_callbacks','1','1'),('busybox','1_23_0','have_poly1305','1','1'),('busybox','1_23_0','have_sa_len','1','1'),('busybox','1_23_0','have_secure_renegotiation','1','1'),('busybox','1_23_0','have_session_ticket','1','1'),('busybox','1_23_0','have_sni','1','1'),('busybox','1_23_0','have_srandom','1','1'),('busybox','1_23_0','have_strptime','1','1'),('busybox','1_23_0','have_strtoull','1','1'),('busybox','1_23_0','have_sys_disk_h','1','1'),('busybox','1_23_0','have_sys_disklabel_h','1','1'),('busybox','1_23_0','have_sys_ioctl_h','1','1'),('busybox','1_23_0','have_sys_mkdev_h','1','1'),('busybox','1_23_0','have_sys_queue_h','1','1'),('busybox','1_23_0','have_sys_sockio_h','1','1'),('busybox','1_23_0','have_sys_stat_h','1','1'),('busybox','1_23_0','have_sys_types_h','1','1'),('busybox','1_23_0','have_termios_h','1','1'),('busybox','1_23_0','have_truncated_hmac','1','1'),('busybox','1_23_0','have_unistd_h','1','1'),('busybox','1_23_0','ifla_master','1','1'),('busybox','1_23_0','ip_dontfrag','2','1'),('busybox','1_23_0','ip_pktinfo','1','1'),('busybox','1_23_0','ip_tos','2','1'),('busybox','1_23_0','ipv6_recvpktinfo','1','1'),('busybox','1_23_0','is','1','1'),('busybox','1_23_0','mntopt_ro','1','1'),('busybox','1_23_0','namei_debug','1','1'),('busybox','1_23_0','need_bounce_buffer','1','1'),('busybox','1_23_0','no_io_cache','1','1'),('busybox','1_23_0','o_largefile','1','1'),('busybox','1_23_0','random_debug','1','1'),('busybox','1_23_0','res_gdt_debug','1','1'),('busybox','1_23_0','rtf_reject','1','1'),('busybox','1_23_0','sa_restart','1','1'),('busybox','1_23_0','scsi_disk0_major','1','1'),('busybox','1_23_0','scsi_disk8_major','1','1'),('busybox','1_23_0','siocgenaddr','1','1'),('busybox','1_23_0','siocgifhwaddr','1','1'),('busybox','1_23_0','so_bindtodevice','1','1'),('busybox','1_23_0','so_sndbuf','1','1'),('busybox','1_23_0','test_program','1','1'),('busybox','1_23_0','unused','3','1'),('busybox','1_23_0','unused_and_buggy','1','1'),('busybox','1_23_0','unused_for_now','2','2'),('busybox','1_23_0','unused_since_we_avoid_static_bufs','3','2'),('busybox','1_23_0','use_inode_io','1','1'),('busybox','1_23_0','user_ca_cb','1','1'),('busybox','1_23_0','uuid_unparse_default_upper','1','1'),('busybox','1_23_0','verify_callback','1','1'),('busybox','1_23_0','vg_dir','1','1'),('busybox','1_23_0','words_bigendian','1','1'),('busybox','1_23_0','zap_bootblock','1','1'),('busybox','1_24_0','__bionic__','1','1'),('busybox','1_24_0','__cplusplus','1','1'),('busybox','1_24_0','__gnu__','1','1'),('busybox','1_24_0','__gnuc__','1','1'),('busybox','1_24_0','__linux__','2','2'),('busybox','1_24_0','archive_replace_via_rename','1','1'),('busybox','1_24_0','base_md','1','1'),('busybox','1_24_0','debug','1','1'),('busybox','1_24_0','dns_compr_testing','1','1'),('busybox','1_24_0','enable_compression','1','1'),('busybox','1_24_0','m_trim_threshold','1','1'),('busybox','1_24_0','resolve_hostnames','1','1'),('busybox','1_24_0','rlimit_fsize','1','1'),('busybox','1_24_0','this_one_doesnt_do_single_write','1','1'),('busybox','1_24_0','tiocpkt','1','1'),('busybox','1_24_0','unused','1','1'),('busybox','1_24_0','version_with_writev','1','1'),('busybox','1_25_0','__glibc__','1','1'),('busybox','1_25_0','__nr_finit_module','1','1'),('busybox','1_25_0','b1000000','1','1'),('busybox','1_25_0','b115200','1','1'),('busybox','1_25_0','b1152000','1','1'),('busybox','1_25_0','b1500000','1','1'),('busybox','1_25_0','b19200','1','1'),('busybox','1_25_0','b2000000','1','1'),('busybox','1_25_0','b230400','1','1'),('busybox','1_25_0','b2500000','1','1'),('busybox','1_25_0','b3000000','1','1'),('busybox','1_25_0','b3500000','1','1'),('busybox','1_25_0','b38400','2','1'),('busybox','1_25_0','b4000000','1','1'),('busybox','1_25_0','b460800','1','1'),('busybox','1_25_0','b500000','1','1'),('busybox','1_25_0','b57600','1','1'),('busybox','1_25_0','b576000','1','1'),('busybox','1_25_0','b921600','1','1'),('busybox','1_25_0','have_unlocked_line_ops','1','1'),('busybox','1_25_0','have_unlocked_stdio','1','1'),('busybox','1_25_0','so_sndbuf','1','1'),('busybox','1_25_0','sslsvd','1','1'),('busybox','1_26_0','__glibc__','1','1'),('busybox','1_26_0','__linux__','1','1'),('busybox','1_26_0','__nr_finit_module','1','1'),('busybox','1_26_0','__thumb2__','1','1'),('busybox','1_26_0','__uclibc__','1','1'),('busybox','1_26_0','_msc_ver','2','1'),('busybox','1_26_0','enable_feature_gzip_levels','2','2'),('busybox','1_26_0','enable_feature_show_threads','1','1'),('busybox','1_26_0','endian_32bitword','1','1'),('busybox','1_26_0','endian_big','2','1'),('busybox','1_26_0','endian_little','1','1'),('busybox','1_26_0','have_mntent_h','2','1'),('busybox','1_26_0','have_native_int64','1','1'),('busybox','1_26_0','isqrt_test','1','1'),('busybox','1_26_0','m_trim_threshold','1','1'),('busybox','1_26_0','ps_pubkey_optimize_for_faster_speed','1','1'),('busybox','1_26_0','ps_pubkey_optimize_for_smaller_ram','2','1'),('busybox','1_26_0','pstm_64bit','1','1'),('busybox','1_26_0','pstm_8bit','1','1'),('busybox','1_26_0','pstm_iso','1','1'),('busybox','1_26_0','pstm_x86_64','1','1'),('busybox','1_26_0','resolve_hostnames','1','1'),('busybox','1_26_0','use_1024_key_speed_optimizations','1','1'),('busybox','1_26_0','use_2048_key_speed_optimizations','1','1'),('busybox','1_26_0','use_3des','1','1'),('busybox','1_26_0','use_aes','3','1'),('busybox','1_26_0','use_aes_ccm','1','1'),('busybox','1_26_0','use_aes_gcm','1','1'),('busybox','1_26_0','use_arc4','1','1'),('busybox','1_26_0','use_burn_stack','3','1'),('busybox','1_26_0','use_idea','1','1'),('busybox','1_26_0','use_rc2','1','1'),('busybox','1_26_0','use_rsa_cipher_suite','2','1'),('busybox','1_26_0','use_seed','1','1'),('busybox','1_27_0','__bionic__','1','1'),('busybox','1_27_0','__glibc__','1','1'),('busybox','1_27_0','__linux__','3','1'),('busybox','1_27_0','debug','1','1'),('busybox','1_27_0','extproc','1','1'),('busybox','1_27_0','have_printf_percentm','2','2'),('busybox','1_27_0','ip_pktinfo','1','1'),('busybox','1_27_0','ipv6_recvpktinfo','1','1'),('busybox','1_27_0','pstm_iso','1','1'),('busybox','1_27_0','sslsvd','1','1'),('busybox','1_27_0','symbol_prefix','1','1'),('busybox','1_29_0','__sigrtmax','1','1'),('busybox','1_29_0','__sigrtmin','1','1'),('busybox','1_29_0','define_script_data\\n\'','2','1'),('busybox','1_29_0','define_script_names\\n\'','2','2'),('busybox','1_29_0','enable_bc','2','2'),('busybox','1_29_0','enable_dc','3','2'),('busybox','1_29_0','sigsys','1','1'),('busybox','1_29_0','testing','1','1'),('busybox','1_30_0','no_such_applet_yet','3','1'),('busybox','1_30_0','rlimit_as','3','1'),('busybox','1_30_0','rlimit_core','2','1'),('busybox','1_30_0','rlimit_cpu','2','1'),('busybox','1_30_0','rlimit_data','2','1'),('busybox','1_30_0','rlimit_fsize','1','1'),('busybox','1_30_0','rlimit_locks','3','1'),('busybox','1_30_0','rlimit_memlock','4','1'),('busybox','1_30_0','rlimit_msgqueue','1','1'),('busybox','1_30_0','rlimit_nice','3','1'),('busybox','1_30_0','rlimit_nofile','4','1'),('busybox','1_30_0','rlimit_nproc','3','1'),('busybox','1_30_0','rlimit_rss','3','1'),('busybox','1_30_0','rlimit_rtprio','3','1'),('busybox','1_30_0','rlimit_sigpending','1','1'),('busybox','1_30_0','rlimit_stack','2','1'),('busybox','1_30_0','sched_reset_on_fork','1','1'),('busybox','1_30_0','single_applet_str','1','1'),('busybox','1_30_0','use_1024_key_speed_optimizations','1','1'),('busybox','1_30_0','using_lseek_to_get_size','1','1');
/*!40000 ALTER TABLE `busybox_metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-16 14:25:20
