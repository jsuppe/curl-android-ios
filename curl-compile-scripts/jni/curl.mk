CURL_COMMON_CFLAGS := \
  -DANDROID -DOPENSSL_NO_ASM -DOPENSSL_THREADS -D_REENTRANT -DBUILDING_LIBCURL \
  -DDSO_DLFCN -DHAVE_DLFCN_H -DOPENSSL_NO_CAST -DOPENSSL_NO_CAMELLIA \
  -DOPENSSL_NO_IDEA -DOPENSSL_NO_MDC2 -DOPENSSL_NO_SEED -DOPENSSL_NO_WHIRLPOOL\
  -Wno-sign-compare -Wno-incompatible-pointer-types-discards-qualifiers
CURL_COMMON_CFLAGS += \
  -DHAVE_CONFIG_H \
  -Wpointer-arith -Wwrite-strings -Wunused -Winline \
  -Wnested-externs -Wmissing-declarations -Wmissing-prototypes -Wno-long-long \
  -Wfloat-equal -Wno-multichar -Wno-format-nonliteral \
  -Wendif-labels -Wstrict-prototypes -Wdeclaration-after-statement \
  -Wno-system-headers -Wno-typedef-redefinition -Wno-unused-variable \
  -Wno-unused-function
CURL_CSOURCES := \
amigaos.c	    curl_fnmatch.c	dict.c		 gopher.c     http_chunks.c	ldap.c	     nwos.c	  sendf.c	  strdup.c	  version.c \
asyn-ares.c	    curl_gethostname.c	dotdot.c	 hash.c       http_digest.c	llist.c      openldap.c   share.c	  strequal.c	  warnless.c \
asyn-thread.c	    curl_gssapi.c	easy.c		 hmac.c       http_negotiate.c	md4.c	     parsedate.c  slist.c	  strerror.c	  wildcard.c \
base64.c	    curl_memrchr.c	escape.c	 hostasyn.c   http_ntlm.c	md5.c	     pingpong.c   smb.c		  strtok.c	  x509asn1.c \
conncache.c	    curl_multibyte.c	file.c		 hostcheck.c  http_proxy.c	memdebug.c   pipeline.c   smtp.c	  strtoofft.c \
connect.c	    curl_ntlm_core.c	fileinfo.c	 hostip4.c    idn_win32.c	mprintf.c    pop3.c	  socks.c	  system_win32.c \
content_encoding.c  curl_ntlm_wb.c	formdata.c	 hostip6.c    if2ip.c		multi.c      progress.c   socks_gssapi.c  telnet.c \
cookie.c	    curl_rtmp.c		ftp.c		 hostip.c     imap.c		netrc.c      rawstr.c	  socks_sspi.c	  tftp.c \
curl_addrinfo.c     curl_sasl.c		ftplistparser.c  hostsyn.c    inet_ntop.c	non-ascii.c  rtsp.c	  speedcheck.c	  timeval.c \
curl_des.c	    curl_sspi.c		getenv.c	 http2.c      inet_pton.c	nonblock.c   security.c   splay.c	  transfer.c \
curl_endian.c	    curl_threads.c	getinfo.c	 http.c       krb5.c		nwlib.c      select.c	  ssh.c		  url.c \
vauth/cleartext.c  vauth/digest.c	vauth/krb5_gssapi.c  vauth/ntlm.c	vauth/oauth2.c	       vauth/spnego_sspi.c \
vauth/cram.c	   vauth/digest_sspi.c	vauth/krb5_sspi.c    vauth/ntlm_sspi.c	vauth/spnego_gssapi.c  vauth/vauth.c \
vtls/axtls.c   vtls/darwinssl.c  vtls/gtls.c	 vtls/nss.c	 vtls/polarssl.c	     vtls/schannel.c \
vtls/cyassl.c  vtls/gskit.c	 vtls/mbedtls.c  vtls/openssl.c  vtls/polarssl_threadlock.c  vtls/vtls.c

CURL_LOCAL_SRC_FILES := $(addprefix ../../curl/lib/,$(CURL_CSOURCES))
CURL_LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/../../curl/include \
  $(LOCAL_PATH)/../../curl/lib \
  $(NDK_PATH)/platforms/$(TARGET_PLATFORM)/arch-arm/usr/include \
  $(LOCAL_PATH)/../../openssl/include
