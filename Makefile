##### Change the following for your environment:
COMPILE_OPTS =		$(INCLUDES) -I/usr/local/include -I. -O2 -DSOCKLEN_T=socklen_t -D_LARGEFILE_SOURCE=1 -D_FILE_OFFSET_BITS=64
C =			c
C_COMPILER =		cc
C_FLAGS =		$(COMPILE_OPTS) $(CPPFLAGS) $(CFLAGS)
CPP =			cpp
CPLUSPLUS_COMPILER =	c++
CPLUSPLUS_FLAGS =	$(COMPILE_OPTS) -Wall -DBSD=1 $(CPPFLAGS) $(CXXFLAGS)
OBJ =			o
LINK =			c++ -o 
LINK_OPTS =		-L. $(LDFLAGS)
CONSOLE_LINK_OPTS =	$(LINK_OPTS)
LIBRARY_LINK =		ar cr 
LIBRARY_LINK_OPTS =	
LIB_SUFFIX =			a
LIBS_FOR_CONSOLE_APPLICATION = -lssl -lcrypto -lpthread-2.25
LIBS_FOR_GUI_APPLICATION =
EXE =
##### End of variables to change

LIVEMEDIA_DIR = liveMedia
GROUPSOCK_DIR = groupsock
USAGE_ENVIRONMENT_DIR = UsageEnvironment
BASIC_USAGE_ENVIRONMENT_DIR = BasicUsageEnvironment

RTSPSERVER_DIR = rtspserver

all:
	cd $(LIVEMEDIA_DIR) ; $(MAKE)
	cd $(GROUPSOCK_DIR) ; $(MAKE)
	cd $(USAGE_ENVIRONMENT_DIR) ; $(MAKE)
	cd $(BASIC_USAGE_ENVIRONMENT_DIR) ; $(MAKE)
	cd $(RTSPSERVER_DIR) ; $(MAKE)
	@echo
	@echo "For more information about this source code (including your obligations under the LGPL), please see our FAQ at http://live555.com/liveMedia/faq.html"

install:
	cd $(LIVEMEDIA_DIR) ; $(MAKE) install
	cd $(GROUPSOCK_DIR) ; $(MAKE) install
	cd $(USAGE_ENVIRONMENT_DIR) ; $(MAKE) install
	cd $(BASIC_USAGE_ENVIRONMENT_DIR) ; $(MAKE) install
	cd $(RTSPSERVER_DIR) ; $(MAKE) install

clean:
	cd $(LIVEMEDIA_DIR) ; $(MAKE) clean
	cd $(GROUPSOCK_DIR) ; $(MAKE) clean
	cd $(USAGE_ENVIRONMENT_DIR) ; $(MAKE) clean
	cd $(BASIC_USAGE_ENVIRONMENT_DIR) ; $(MAKE) clean
	cd $(RTSPSERVER_DIR) ; $(MAKE) clean

distclean: clean
	-rm -f $(LIVEMEDIA_DIR)/Makefile $(GROUPSOCK_DIR)/Makefile \
	  $(USAGE_ENVIRONMENT_DIR)/Makefile $(BASIC_USAGE_ENVIRONMENT_DIR)/Makefile \
	  $(RTSPSERVER_DIR)/Makefile $(MEDIA_SERVER_DIR)/Makefile
