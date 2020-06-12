# GNU Make project makefile autogenerated by Premake
ifndef config
  config=release64
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/Test_InverseDynamicsKinematics
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/Test_InverseDynamicsKinematics_gmake_x64_release
  DEFINES   += 
  INCLUDES  += -I../../test/InverseDynamics -I../../src -I../../examples/InverseDynamics -I../../Extras/InverseDynamics -I../../test/gtest-1.7.0/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -msse2 -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -s -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lBulletDynamics_gmake_x64_release -lBulletInverseDynamics_gmake_x64_release -lBullet3Common_gmake_x64_release -lLinearMath_gmake_x64_release ../../bin/libgtest_gmake_x64_release.a -lBulletInverseDynamicsUtils -lpthread
  LDDEPS    += ../../bin/libBulletDynamics_gmake_x64_release.so ../../bin/libBulletInverseDynamics_gmake_x64_release.so ../../bin/libBullet3Common_gmake_x64_release.so ../../bin/libLinearMath_gmake_x64_release.so ../../bin/libgtest_gmake_x64_release.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/Test_InverseDynamicsKinematics
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/Test_InverseDynamicsKinematics_gmake_x64_debug
  DEFINES   += -D_DEBUG=1
  INCLUDES  += -I../../test/InverseDynamics -I../../src -I../../examples/InverseDynamics -I../../Extras/InverseDynamics -I../../test/gtest-1.7.0/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lBulletDynamics_gmake_x64_debug -lBulletInverseDynamics_gmake_x64_debug -lBullet3Common_gmake_x64_debug -lLinearMath_gmake_x64_debug ../../bin/libgtest_gmake_x64_debug.a -lBulletInverseDynamicsUtils -lpthread
  LDDEPS    += ../../bin/libBulletDynamics_gmake_x64_debug.so ../../bin/libBulletInverseDynamics_gmake_x64_debug.so ../../bin/libBullet3Common_gmake_x64_debug.so ../../bin/libLinearMath_gmake_x64_debug.so ../../bin/libgtest_gmake_x64_debug.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/test_invdyn_kinematics.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking Test_InverseDynamicsKinematics
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning Test_InverseDynamicsKinematics
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	-$(SILENT) cp $< $(OBJDIR)
else
	$(SILENT) xcopy /D /Y /Q "$(subst /,\,$<)" "$(subst /,\,$(OBJDIR))" 1>nul
endif
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
endif

$(OBJDIR)/test_invdyn_kinematics.o: ../../test/InverseDynamics/test_invdyn_kinematics.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
