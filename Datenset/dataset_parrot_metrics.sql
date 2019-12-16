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
-- Table structure for table `parrot_metrics`
--

DROP TABLE IF EXISTS `parrot_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parrot_metrics` (
  `name` varchar(255) DEFAULT NULL,
  `release_number` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `comm` varchar(255) DEFAULT NULL,
  `adev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parrot_metrics`
--

LOCK TABLES `parrot_metrics` WRITE;
/*!40000 ALTER TABLE `parrot_metrics` DISABLE KEYS */;
INSERT INTO `parrot_metrics` VALUES ('parrot','1_0_0','__clang__','2','2'),('parrot','1_0_0','__cplusplus','8','7'),('parrot','1_0_0','__gnuc__','5','4'),('parrot','1_0_0','__hpux','2','2'),('parrot','1_0_0','__ia64__','2','2'),('parrot','1_0_0','__ibmc__','1','1'),('parrot','1_0_0','__linux','1','1'),('parrot','1_0_0','__ppc__','1','1'),('parrot','1_0_0','_i64_max','2','1'),('parrot','1_0_0','_i64_min','2','1'),('parrot','1_0_0','_ieee_','3','3'),('parrot','1_0_0','_msc_ver','14','8'),('parrot','1_0_0','_posix_priority_scheduling','1','1'),('parrot','1_0_0','_win64','4','4'),('parrot','1_0_0','arm','1','1'),('parrot','1_0_0','code_end','3','2'),('parrot','1_0_0','code_start','3','2'),('parrot','1_0_0','emit_<op>_m<r>_<r>','1','1'),('parrot','1_0_0','emit_<op>_m<r>_i','1','1'),('parrot','1_0_0','emitm_f<op>','1','1'),('parrot','1_0_0','ewouldblock','2','2'),('parrot','1_0_0','exec_a_out','4','3'),('parrot','1_0_0','exec_coff','1','1'),('parrot','1_0_0','exec_elf','1','1'),('parrot','1_0_0','exec_mach_o','1','1'),('parrot','1_0_0','exec_shared','1','1'),('parrot','1_0_0','gc_is_malloc','13','3'),('parrot','1_0_0','gc_use_fixed_size_allocator','4','4'),('parrot','1_0_0','has_jit','4','2'),('parrot','1_0_0','hasattribute_never_works','1','1'),('parrot','1_0_0','hasattribute_pure','4','2'),('parrot','1_0_0','have_computed_goto','23','6'),('parrot','1_0_0','i386','3','2'),('parrot','1_0_0','jit_capable','1','1'),('parrot','1_0_0','jit_cgp','3','2'),('parrot','1_0_0','jit_emit','1','1'),('parrot','1_0_0','jit_emit_<op>_m<_n>','1','1'),('parrot','1_0_0','jit_emit_<op>_mi_<_n>','1','1'),('parrot','1_0_0','jit_emit_<op>_mr<_n>','1','1'),('parrot','1_0_0','jit_emit_<op>_rri<_n>','1','1'),('parrot','1_0_0','jit_emit_noop','1','1'),('parrot','1_0_0','malloc_alignment','2','1'),('parrot','1_0_0','memdebug','1','1'),('parrot','1_0_0','ndebug','14','6'),('parrot','1_0_0','parrot_arm','1','1'),('parrot','1_0_0','parrot_def_inet_aton','3','3'),('parrot','1_0_0','parrot_exec_os_aix','5','3'),('parrot','1_0_0','parrot_exec_os_darwin','1','1'),('parrot','1_0_0','parrot_exec_os_freebsd','1','1'),('parrot','1_0_0','parrot_exec_os_netbsd','1','1'),('parrot','1_0_0','parrot_exec_os_openbsd','1','1'),('parrot','1_0_0','parrot_gc_ims','5','2'),('parrot','1_0_0','parrot_has_aligned_funcptr','4','3'),('parrot','1_0_0','parrot_has_backtrace','1','1'),('parrot','1_0_0','parrot_has_dlinfo','1','1'),('parrot','1_0_0','parrot_has_exec_protect','4','3'),('parrot','1_0_0','parrot_has_gmp','4','3'),('parrot','1_0_0','parrot_has_header_dlfcn','2','2'),('parrot','1_0_0','parrot_has_header_limits','1','1'),('parrot','1_0_0','parrot_has_header_pthread','2','1'),('parrot','1_0_0','parrot_has_header_sal','2','2'),('parrot','1_0_0','parrot_has_header_setjmp','2','2'),('parrot','1_0_0','parrot_has_header_sysmman','3','3'),('parrot','1_0_0','parrot_has_header_sysutsname','1','1'),('parrot','1_0_0','parrot_has_header_unistd','7','4'),('parrot','1_0_0','parrot_has_msvc_sal','6','4'),('parrot','1_0_0','parrot_has_negative_zero','1','1'),('parrot','1_0_0','parrot_has_readline','8','5'),('parrot','1_0_0','parrot_has_setenv','1','1'),('parrot','1_0_0','parrot_has_threads','3','1'),('parrot','1_0_0','parrot_has_unsetenv','1','1'),('parrot','1_0_0','parrot_i386','3','2'),('parrot','1_0_0','parrot_in_core','7','4'),('parrot','1_0_0','parrot_in_objects_c','5','3'),('parrot','1_0_0','parrot_jit_stack_reuse_interp','1','1'),('parrot','1_0_0','parrot_openbsd_elf','1','1'),('parrot','1_0_0','parrot_ppc','1','1'),('parrot','1_0_0','pf_inet','3','1'),('parrot','1_0_0','pf_inet6','3','1'),('parrot','1_0_0','pf_local','3','1'),('parrot','1_0_0','pf_unix','3','1'),('parrot','1_0_0','pic_test','2','2'),('parrot','1_0_0','pio_os_stdio','10','6'),('parrot','1_0_0','pio_os_unix','14','8'),('parrot','1_0_0','pio_os_win32','12','8'),('parrot','1_0_0','premature_opt','1','1'),('parrot','1_0_0','s_splint_s','5','2'),('parrot','1_0_0','short','19','6'),('parrot','1_0_0','sigbus','1','1'),('parrot','1_0_0','slow_and_boring','3','2'),('parrot','1_0_0','sock_dgram','3','1'),('parrot','1_0_0','sock_packet','3','1'),('parrot','1_0_0','sock_raw','3','1'),('parrot','1_0_0','sock_rdm','3','1'),('parrot','1_0_0','sock_seqpacket','3','1'),('parrot','1_0_0','sock_stream','3','1'),('parrot','1_0_0','struct_debug','1','1'),('parrot','1_0_0','test','3','3'),('parrot','1_0_0','use_op_map_and_code_start','2','1'),('parrot','1_0_0','win32','23','10'),('parrot','1_0_0','wsaewouldblock','2','2'),('parrot','1_0_0','yy_need_strlen','1','1'),('parrot','1_0_0','yy_use_const','2','1'),('parrot','1_0_0','yy_user_init','1','1'),('parrot','1_0_0','yyerror_verbose','5','3'),('parrot','1_0_0','yyparse_param','5','3'),('parrot','2_0_0','__cplusplus','12','7'),('parrot','2_0_0','__cygwin__','6','2'),('parrot','2_0_0','__gnuc__','7','6'),('parrot','2_0_0','__ia64__','8','5'),('parrot','2_0_0','__lcc__','2','2'),('parrot','2_0_0','__mingw32__','4','3'),('parrot','2_0_0','__size_type__','1','1'),('parrot','2_0_0','_msc_ver','7','5'),('parrot','2_0_0','_posix_priority_scheduling','1','1'),('parrot','2_0_0','_s_ifmt','2','1'),('parrot','2_0_0','_sc_pagesize','3','2'),('parrot','2_0_0','_win32','5','2'),('parrot','2_0_0','arbitrary_debug_statement','2','1'),('parrot','2_0_0','atexit_destroy','3','1'),('parrot','2_0_0','blksize','1','1'),('parrot','2_0_0','build_old_code','2','1'),('parrot','2_0_0','code_start','1','1'),('parrot','2_0_0','code_that_breaks','2','1'),('parrot','2_0_0','compile_old_scheduler_code','2','1'),('parrot','2_0_0','compile_old_stuff','2','1'),('parrot','2_0_0','detail_memory_debug','17','6'),('parrot','2_0_0','eagain','2','1'),('parrot','2_0_0','enabled','15','5'),('parrot','2_0_0','ewouldblock','3','2'),('parrot','2_0_0','exception','2','2'),('parrot','2_0_0','func_core','1','1'),('parrot','2_0_0','has_sysconf,','1','1'),('parrot','2_0_0','hasattribute_cold','1','1'),('parrot','2_0_0','hasattribute_format','3','2'),('parrot','2_0_0','hasattribute_hot','1','1'),('parrot','2_0_0','hasattribute_malloc','3','2'),('parrot','2_0_0','hasattribute_warn_unused_result','1','1'),('parrot','2_0_0','have_computed_goto','4','3'),('parrot','2_0_0','i386','3','2'),('parrot','2_0_0','intlist_emul','1','1'),('parrot','2_0_0','linux','2','1'),('parrot','2_0_0','list_test','1','1'),('parrot','2_0_0','mapw32','3','3'),('parrot','2_0_0','native_exec_elf','1','1'),('parrot','2_0_0','ndebug','8','8'),('parrot','2_0_0','obsolete_thread_code','1','1'),('parrot','2_0_0','only_fixed_allocations','1','1'),('parrot','2_0_0','parrot_api_h_guard','2','2'),('parrot','2_0_0','parrot_bignum_can_bigint','3','1'),('parrot','2_0_0','parrot_cx_build_old_stuff','8','1'),('parrot','2_0_0','parrot_def_inet_aton','5','3'),('parrot','2_0_0','parrot_has___sighandler_t','1','1'),('parrot','2_0_0','parrot_has_bsd_stat_extn','2','1'),('parrot','2_0_0','parrot_has_exec_protect','6','2'),('parrot','2_0_0','parrot_has_gmp','7','6'),('parrot','2_0_0','parrot_has_header_dlfcn','2','2'),('parrot','2_0_0','parrot_has_header_math','1','1'),('parrot','2_0_0','parrot_has_header_signal','1','1'),('parrot','2_0_0','parrot_has_header_sysmman','7','3'),('parrot','2_0_0','parrot_has_header_sysstat','1','1'),('parrot','2_0_0','parrot_has_header_sysutsname','1','1'),('parrot','2_0_0','parrot_has_header_unistd','4','1'),('parrot','2_0_0','parrot_has_inf_nan','6','2'),('parrot','2_0_0','parrot_has_jit_fcomip','2','2'),('parrot','2_0_0','parrot_has_libffi','2','2'),('parrot','2_0_0','parrot_has_negative_zero','5','3'),('parrot','2_0_0','parrot_has_platform_init_code','1','1'),('parrot','2_0_0','parrot_has_readline','3','3'),('parrot','2_0_0','parrot_has_setenv','2','2'),('parrot','2_0_0','parrot_has_setitimer','2','1'),('parrot','2_0_0','parrot_has_sigaction','1','1'),('parrot','2_0_0','parrot_has_threads','7','4'),('parrot','2_0_0','parrot_has_unsetenv','3','3'),('parrot','2_0_0','parrot_in_core','12','3'),('parrot','2_0_0','parrot_in_extension','3','1'),('parrot','2_0_0','parrot_in_objects_c','1','1'),('parrot','2_0_0','pf_inet','3','2'),('parrot','2_0_0','pf_inet6','3','2'),('parrot','2_0_0','pf_local','3','2'),('parrot','2_0_0','pf_unix','3','2'),('parrot','2_0_0','pio_os_stdio','6','3'),('parrot','2_0_0','pio_os_unix','7','5'),('parrot','2_0_0','pio_os_win32','9','4'),('parrot','2_0_0','s_islnk','1','1'),('parrot','2_0_0','s_splint_s','3','3'),('parrot','2_0_0','short','34','11'),('parrot','2_0_0','slow_and_boring','1','1'),('parrot','2_0_0','sock_dgram','2','1'),('parrot','2_0_0','sock_packet','2','1'),('parrot','2_0_0','sock_raw','2','1'),('parrot','2_0_0','sock_rdm','2','1'),('parrot','2_0_0','sock_seqpacket','2','1'),('parrot','2_0_0','sock_stream','2','1'),('parrot','2_0_0','test_thread_safety','1','1'),('parrot','2_0_0','unix','1','1'),('parrot','2_0_0','unused_thread_code','1','1'),('parrot','2_0_0','win32','19','11'),('parrot','2_0_0','wsaewouldblock','3','2'),('parrot','2_0_0','yy_decl_is_ours','2','2'),('parrot','2_0_0','yy_header_export_start_conditions','2','2'),('parrot','2_0_0','yy_need_strlen','2','2'),('parrot','2_0_0','yy_stdinit','1','1'),('parrot','2_0_0','yy_use_const','2','2'),('parrot','2_0_0','yy_user_init','1','1'),('parrot','2_0_0','yydebug','1','1'),('parrot','2_0_0','yyerror_verbose','8','5'),('parrot','2_0_0','yylex_param','1','1'),('parrot','2_0_0','yyoverflow','1','1'),('parrot','2_0_0','yyparse_param','8','5'),('parrot','2_0_0','yyprint','1','1'),('parrot','2_0_0','yystack_alloc','1','1'),('parrot','2_0_0','yystack_use_alloca','1','1'),('parrot','2_0_0','yytype_int16','1','1'),('parrot','2_0_0','yytype_int8','1','1'),('parrot','2_0_0','yytype_uint16','1','1'),('parrot','2_0_0','yytype_uint8','1','1'),('parrot','3_0_0','__clang__','2','2'),('parrot','3_0_0','__cplusplus','13','4'),('parrot','3_0_0','__cygwin__','2','2'),('parrot','3_0_0','__ia64__','14','4'),('parrot','3_0_0','__mingw32__','8','3'),('parrot','3_0_0','__sparcv9','1','1'),('parrot','3_0_0','_mcs_ver1','2','2'),('parrot','3_0_0','_msc_ver','2','1'),('parrot','3_0_0','_posix_priority_scheduling','2','2'),('parrot','3_0_0','_win32','29','8'),('parrot','3_0_0','atexit_destroy','4','2'),('parrot','3_0_0','code_end','1','1'),('parrot','3_0_0','code_start','2','1'),('parrot','3_0_0','detail_memory_debug','12','4'),('parrot','3_0_0','enabled','1','1'),('parrot','3_0_0','has_sysconf,','1','1'),('parrot','3_0_0','ipv6_v6only','1','1'),('parrot','3_0_0','linux','1','1'),('parrot','3_0_0','mapw32','2','2'),('parrot','3_0_0','ndebug','5','3'),('parrot','3_0_0','parrot_asserts_on','1','1'),('parrot','3_0_0','parrot_def_inet_aton','2','1'),('parrot','3_0_0','parrot_has_bsd_stat_extn','2','1'),('parrot','3_0_0','parrot_has_gmp','2','2'),('parrot','3_0_0','parrot_has_header_arpainet','1','1'),('parrot','3_0_0','parrot_has_header_dlfcn','1','1'),('parrot','3_0_0','parrot_has_header_netdb','1','1'),('parrot','3_0_0','parrot_has_header_netinetin','1','1'),('parrot','3_0_0','parrot_has_header_sal','1','1'),('parrot','3_0_0','parrot_has_header_sysmman','2','1'),('parrot','3_0_0','parrot_has_header_syssocket','1','1'),('parrot','3_0_0','parrot_has_header_sysstat','2','1'),('parrot','3_0_0','parrot_has_header_systypes','1','1'),('parrot','3_0_0','parrot_has_header_unistd','3','3'),('parrot','3_0_0','parrot_has_inf_nan','1','1'),('parrot','3_0_0','parrot_has_ipv6','3','2'),('parrot','3_0_0','parrot_has_negative_zero','2','1'),('parrot','3_0_0','parrot_has_readline','1','1'),('parrot','3_0_0','parrot_has_stat_atim','1','1'),('parrot','3_0_0','parrot_has_stat_atimespec','1','1'),('parrot','3_0_0','parrot_has_threads','8','5'),('parrot','3_0_0','parrot_in_core','3','2'),('parrot','3_0_0','path_max','1','1'),('parrot','3_0_0','pf_inet','1','1'),('parrot','3_0_0','pf_inet6','1','1'),('parrot','3_0_0','pf_local','1','1'),('parrot','3_0_0','pf_unix','1','1'),('parrot','3_0_0','s_islnk','1','1'),('parrot','3_0_0','s_splint_s','1','1'),('parrot','3_0_0','short','20','3'),('parrot','3_0_0','sock_dgram','1','1'),('parrot','3_0_0','sock_packet','1','1'),('parrot','3_0_0','sock_raw','1','1'),('parrot','3_0_0','sock_rdm','1','1'),('parrot','3_0_0','sock_seqpacket','1','1'),('parrot','3_0_0','sock_stream','1','1'),('parrot','3_0_0','test','3','3'),('parrot','3_0_0','unix','1','1'),('parrot','3_0_0','win32','13','5'),('parrot','3_0_0','yylex_param','1','1'),('parrot','3_0_0','yyparse_param','4','2'),('parrot','3_0_0','yyprint','1','1'),('parrot','4_0_0','__clang__','1','1'),('parrot','4_0_0','__cplusplus','1','1'),('parrot','4_0_0','__ia64__','1','1'),('parrot','4_0_0','__lcc__','3','2'),('parrot','4_0_0','_msc_ver','1','1'),('parrot','4_0_0','_sc_nprocessors_onln','4','2'),('parrot','4_0_0','_win32','18','5'),('parrot','4_0_0','blksize','2','1'),('parrot','4_0_0','check_compiler_offsetof_alignof','1','1'),('parrot','4_0_0','detail_memory_debug','4','2'),('parrot','4_0_0','has_sysconf,','1','1'),('parrot','4_0_0','has_threads','5','2'),('parrot','4_0_0','hasattribute_pure','1','1'),('parrot','4_0_0','in_spf_system','1','1'),('parrot','4_0_0','ipv6_v6only','1','1'),('parrot','4_0_0','memory_debug','2','1'),('parrot','4_0_0','parrot_has_compiler_offsetof_alignof','1','1'),('parrot','4_0_0','parrot_has_core_nci_thunks','1','1'),('parrot','4_0_0','parrot_has_extra_nci_thunks','1','1'),('parrot','4_0_0','parrot_has_float128','2','1'),('parrot','4_0_0','parrot_has_gmp','7','2'),('parrot','4_0_0','parrot_has_header_dlfcn','4','3'),('parrot','4_0_0','parrot_has_header_process','1','1'),('parrot','4_0_0','parrot_has_header_pthread','2','2'),('parrot','4_0_0','parrot_has_header_sysmman','1','1'),('parrot','4_0_0','parrot_has_header_sysutsname','11','3'),('parrot','4_0_0','parrot_has_header_unistd','1','1'),('parrot','4_0_0','parrot_has_ipv6','1','1'),('parrot','4_0_0','parrot_has_libffi','1','1'),('parrot','4_0_0','parrot_has_negative_zero','1','1'),('parrot','4_0_0','parrot_has_snprintf','2','1'),('parrot','4_0_0','parrot_has_threads','11','3'),('parrot','4_0_0','parrot_platform_lib_path_init_hook','1','1'),('parrot','4_0_0','short','3','2'),('parrot','4_0_0','thread_debug','8','1'),('parrot','4_0_0','win32','3','2'),('parrot','4_0_0','yyparse_param','2','2'),('parrot','5_0_0','short','2','1'),('parrot','6_0_0','__apple__','6','3'),('parrot','6_0_0','__clang__','3','1'),('parrot','6_0_0','__cplusplus','1','1'),('parrot','6_0_0','__freebsd__','1','1'),('parrot','6_0_0','__gnuc__','2','1'),('parrot','6_0_0','__ia64__','1','1'),('parrot','6_0_0','__lcc__','1','1'),('parrot','6_0_0','__mingw32__','1','1'),('parrot','6_0_0','__vax','2','2'),('parrot','6_0_0','_msc_ver','1','1'),('parrot','6_0_0','_use_std_stat','2','2'),('parrot','6_0_0','_win32','2','2'),('parrot','6_0_0','alternate_shebang','2','2'),('parrot','6_0_0','atexit_destroy','1','1'),('parrot','6_0_0','ceill','1','1'),('parrot','6_0_0','debug_fill_slack','6','1'),('parrot','6_0_0','detail_memory_debug','4','1'),('parrot','6_0_0','enabled','5','2'),('parrot','6_0_0','expl','1','1'),('parrot','6_0_0','fabsl','1','1'),('parrot','6_0_0','floorl','2','1'),('parrot','6_0_0','fmodl','1','1'),('parrot','6_0_0','has_longlong','1','1'),('parrot','6_0_0','hasattribute_cold','1','1'),('parrot','6_0_0','hasattribute_const','1','1'),('parrot','6_0_0','hasattribute_format','1','1'),('parrot','6_0_0','hasattribute_hot','1','1'),('parrot','6_0_0','hasattribute_malloc','1','1'),('parrot','6_0_0','hasattribute_never_works','1','1'),('parrot','6_0_0','hasattribute_nonnull','1','1'),('parrot','6_0_0','hasattribute_noreturn','1','1'),('parrot','6_0_0','hasattribute_pure','1','1'),('parrot','6_0_0','hasattribute_returns_nonnull','4','1'),('parrot','6_0_0','hasattribute_unused','1','1'),('parrot','6_0_0','hasattribute_warn_unused_result','2','1'),('parrot','6_0_0','labs','1','1'),('parrot','6_0_0','logl','1','1'),('parrot','6_0_0','memory_debug','15','1'),('parrot','6_0_0','naml$c_maxrss','1','1'),('parrot','6_0_0','ndebug','8','1'),('parrot','6_0_0','parrot_asserts_on','1','1'),('parrot','6_0_0','parrot_has_bsd_stat_extn','2','1'),('parrot','6_0_0','parrot_has_builtin_expect','1','1'),('parrot','6_0_0','parrot_has_float128','1','1'),('parrot','6_0_0','parrot_has_floorl','2','1'),('parrot','6_0_0','parrot_has_gmp','5','2'),('parrot','6_0_0','parrot_has_header_sysmman','1','1'),('parrot','6_0_0','parrot_has_header_unistd','3','1'),('parrot','6_0_0','parrot_has_labs','2','1'),('parrot','6_0_0','parrot_has_negative_zero','1','1'),('parrot','6_0_0','parrot_has_powl','3','1'),('parrot','6_0_0','parrot_has_setenv','1','1'),('parrot','6_0_0','parrot_has_snprintf','5','1'),('parrot','6_0_0','parrot_has_threads','3','1'),('parrot','6_0_0','parrot_has_unsetenv','1','1'),('parrot','6_0_0','parrot_in_core','3','2'),('parrot','6_0_0','parrot_in_extension','1','1'),('parrot','6_0_0','powl','1','1'),('parrot','6_0_0','short','4','1'),('parrot','6_0_0','test','1','1'),('parrot','6_0_0','test_rndvms','2','2'),('parrot','6_0_0','thread_debug','3','2'),('parrot','6_0_0','yyerror_verbose','1','1'),('parrot','6_0_0','yylex_param','3','1'),('parrot','6_0_0','yyoverflow','3','1'),('parrot','6_0_0','yyparse_param','3','1'),('parrot','6_0_0','yyprint','3','1'),('parrot','6_0_0','yystack_alloc','3','1'),('parrot','6_0_0','yytype_int8','3','1'),('parrot','6_0_0','yytype_uint16','3','1'),('parrot','7_0_0','__lcc__','2','1'),('parrot','7_0_0','_msc_ver','1','1'),('parrot','7_0_0','hasattribute_warn_unused_result','1','1'),('parrot','7_0_0','memory_debug','1','1'),('parrot','7_0_0','parrot_bufferlike_list','1','1'),('parrot','7_0_0','parrot_has_float128','1','1'),('parrot','7_0_0','parrot_has_stat_st_timespec_t','1','1'),('parrot','7_0_0','parrot_has_threads','1','1'),('parrot','7_0_0','struct_debug','1','1');
/*!40000 ALTER TABLE `parrot_metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-16 14:25:17
