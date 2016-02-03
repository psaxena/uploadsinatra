
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
n=$(NULLCMD)
ECHO1 = $(V:1=@$n)
ECHO = $(ECHO1:0=@echo)

#### Start of system configuration section. ####

srcdir = .
topdir = C:/Ruby19/include/ruby-1.9.1
hdrdir = C:/Ruby19/include/ruby-1.9.1
arch_hdrdir = C:/Ruby19/include/ruby-1.9.1/$(arch)
VPATH = $(srcdir);$(arch_hdrdir)/ruby;$(hdrdir)/ruby

DESTDIR = C:
prefix = $(DESTDIR)/Ruby19
exec_prefix = $(prefix)
rubylibprefix = $(prefix)/lib/$(RUBY_BASE_NAME)
bindir = $(exec_prefix)/bin
sbindir = $(exec_prefix)/sbin
libexecdir = $(exec_prefix)/libexec
datadir = $(prefix)/share
sysconfdir = $(prefix)/etc
sharedstatedir = $(DESTDIR)/etc
localstatedir = $(DESTDIR)/var
libdir = $(exec_prefix)/lib
includedir = $(prefix)/include
oldincludedir = $(DESTDIR)/usr/include
infodir = $(datadir)/info
mandir = $(datadir)/man
ridir = $(datadir)/ri
docdir = $(datadir)/doc/$(RUBY_BASE_NAME)
sitedir = $(rubylibprefix)/site_ruby
vendordir = $(rubylibprefix)/vendor_ruby
rubyhdrdir = $(includedir)/$(RUBY_BASE_NAME)-$(ruby_version)
sitehdrdir = $(rubyhdrdir)/site_ruby
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
rubylibdir = $(rubylibprefix)/$(ruby_version)
archdir = $(rubylibdir)/$(arch)
sitelibdir = $(sitedir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendorarchdir = $(vendorlibdir)/$(sitearch)

NULLCMD = 

CC = cl -nologo
CXX = $(CC)
LIBRUBY = $(RUBY_SO_NAME).lib
LIBRUBY_A = $(RUBY_SO_NAME)-static.lib
LIBRUBYARG_SHARED = $(LIBRUBY)
LIBRUBYARG_STATIC = $(LIBRUBY_A)
OUTFLAG = -Fe
COUTFLAG = -Fo

RUBY_EXTCONF_H = extconf.h
cflags   = 
optflags = 
debugflags = 
warnflags = 
CFLAGS   =  -MD -Zi -W2 -wd4996 -we4028 -we4142 -Ox -fp:fast -arch:SSE -Y-  -Zm600 $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"    -IC:/PROGRA~1/POSTGR~1/9.1/include
CXXFLAGS = $(CFLAGS) -MD -Zi -W2 -wd4996 -we4028 -we4142 -Ox -fp:fast -arch:SSE -Y-  -Zm600
ldflags  = -incremental:no -debug -opt:ref -opt:icf -LC:/PROGRA~1/POSTGR~1/9.1/lib
dldflags = -incremental:no -debug -opt:ref -opt:icf -dll $(LIBPATH)
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = cl -nologo -LD
LDSHAREDXX = $(LDSHARED)
AR = lib -nologo
EXEEXT = .exe

RUBY_BASE_NAME = ruby
RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = msvcr90-ruby191
arch = i386-mswin32_90
sitearch = i386-msvcr90
ruby_version = 1.9.1
ruby = C:/Ruby19/bin/ruby
RUBY = $(ruby:/=\)
RM = $(RUBY) -run -e rm -- -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = $(RUBY) -run -e rmdir -- -p
MAKEDIRS = @$(RUBY) -run -e mkdir -- -p
INSTALL = @$(RUBY) -run -e install -- -vp
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 0644
COPY = @$(RUBY) -run -e cp -- -v

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -libpath:. -libpath:$(libdir)
DEFFILE = $(TARGET)-$(arch).def

CLEANFILES = mkmf.log $(DEFFILE)
DISTCLEANFILES = vc*.pdb
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) libpq.lib  unicows.lib oldnames.lib user32.lib advapi32.lib shell32.lib ws2_32.lib imagehlp.lib  
SRCS = pg.c pg_connection.c pg_result.c
OBJS = pg.obj pg_connection.obj pg_result.obj
TARGET = pg_ext
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = C:/Ruby19/lib/ruby/gems/1.9.1/gems/pg-0.13.2/lib$(target_prefix)
RUBYARCHDIR = C:/Ruby19/lib/ruby/gems/1.9.1/gems/pg-0.13.2/lib$(target_prefix)
HDRDIR        = $(rubyhdrdir)/ruby$(target_prefix)
ARCHHDRDIR    = $(rubyhdrdir)/$(arch)/ruby$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so 
CLEANOBJS     = *.obj $(TARGET)-$(arch).exp $(TARGET)-$(arch).lib $(TARGET)-$(arch).pdb *.bak

all:    $(DLLIB)
static: $(STATIC_LIB)
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-rb

clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-rb-default clean-rb
		@-$(RM) $(CLEANLIBS:/=\) $(CLEANOBJS:/=\) $(CLEANFILES:/=\)

distclean-rb-default::
distclean-rb::
distclean-so::
distclean: clean distclean-so distclean-rb-default distclean-rb
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES:/=\)
		@-$(RMDIRS) $(DISTCLEANDIRS:/=\)

realclean: distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	@-$(MAKEDIRS) $(@D:/=\)
	$(INSTALL_PROG) $(DLLIB:/=\) $(@D:/=\)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default:
	$(ECHO) installing default pg_ext libraries
$(RUBYARCHDIR):
	$(Q) $(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .obj

{$(hdrdir)}.cc.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(topdir)}.cc.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(srcdir)}.cc.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

.cc.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(hdrdir)}.mm.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(topdir)}.mm.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(srcdir)}.mm.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

.mm.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(hdrdir)}.cxx.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(topdir)}.cxx.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(srcdir)}.cxx.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

.cxx.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(hdrdir)}.cpp.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(topdir)}.cpp.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(srcdir)}.cpp.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

.cpp.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(hdrdir)}.c.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\=/)

{$(topdir)}.c.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\=/)

{$(srcdir)}.c.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\=/)

.c.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\=/)

{$(hdrdir)}.m.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\=/)

{$(topdir)}.m.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\=/)

{$(srcdir)}.m.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\=/)

.m.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\=/)

$(DLLIB): $(DEFFILE) $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	@-$(RM) $(@:/=\)
	$(Q) $(LDSHARED) -Fe$(@) $(OBJS) $(LIBS) $(LOCAL_LIBS) -link $(DLDFLAGS) -implib:$(*F:.so=)-$(arch).lib -pdb:$(*F:.so=)-$(arch).pdb -def:$(DEFFILE)
	$(Q) @if exist $(@).manifest $(RUBY) -run -e wait_writable -- -n 10 $(@)
	$(Q) @if exist $(@).manifest mt -nologo -manifest $(@).manifest -outputresource:$(@);2
	$(Q) @if exist $(@).manifest $(RM) $(@:/=\).manifest



$(DEFFILE): 
	$(ECHO) generating $(@:\=/)
	$(Q) $(RUBY) -e "puts 'EXPORTS', '' + 'Init_$(TARGET)'.sub(/\..*\z/,'')"  > $@

$(OBJS): {.;$(VPATH)}$(hdrdir)/ruby.h {.;$(VPATH)}$(hdrdir)/ruby/defines.h $(arch_hdrdir)/ruby/config.h $(RUBY_EXTCONF_H)
