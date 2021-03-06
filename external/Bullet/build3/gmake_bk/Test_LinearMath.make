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
  OBJDIR     = obj/x64/Release/Test_LinearMath
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/Test_LinearMath_gmake_x64_release
  DEFINES   += 
  INCLUDES  += -I../../src -I../../test/Bullet2/Source -I../../test/Bullet2/Source/Tests
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -msse2 -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -s -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release
  LDDEPS    += ../../bin/libBulletDynamics_gmake_x64_release.so ../../bin/libBulletCollision_gmake_x64_release.so ../../bin/libLinearMath_gmake_x64_release.so
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/Test_LinearMath
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/Test_LinearMath_gmake_x64_debug
  DEFINES   += -D_DEBUG=1
  INCLUDES  += -I../../src -I../../test/Bullet2/Source -I../../test/Bullet2/Source/Tests
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug
  LDDEPS    += ../../bin/libBulletDynamics_gmake_x64_debug.so ../../bin/libBulletCollision_gmake_x64_debug.so ../../bin/libLinearMath_gmake_x64_debug.so
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/Utils.o \
	$(OBJDIR)/TestList.o \
	$(OBJDIR)/main.o \
	$(OBJDIR)/Test_v3sdiv.o \
	$(OBJDIR)/Test_dot3.o \
	$(OBJDIR)/Test_mindot.o \
	$(OBJDIR)/Test_3x3mulVM.o \
	$(OBJDIR)/Test_v3skew.o \
	$(OBJDIR)/Test_v3lerp.o \
	$(OBJDIR)/Test_quat_aos_neon.o \
	$(OBJDIR)/Test_3x3transposeTimes.o \
	$(OBJDIR)/Test_maxdot.o \
	$(OBJDIR)/Test_3x3mulM1M2.o \
	$(OBJDIR)/Test_qtnorm.o \
	$(OBJDIR)/Test_qtdot.o \
	$(OBJDIR)/Test_qtmulQV3.o \
	$(OBJDIR)/Test_v3cross.o \
	$(OBJDIR)/Test_qtmul.o \
	$(OBJDIR)/Test_btDbvt.o \
	$(OBJDIR)/Test_3x3timesTranspose.o \
	$(OBJDIR)/Test_3x3mulM.o \
	$(OBJDIR)/Test_v3rotate.o \
	$(OBJDIR)/Test_qtmulV3Q.o \
	$(OBJDIR)/Test_v3div.o \
	$(OBJDIR)/Test_v3triple.o \
	$(OBJDIR)/Test_3x3setRot.o \
	$(OBJDIR)/Test_v3dot.o \
	$(OBJDIR)/Test_3x3getRot.o \
	$(OBJDIR)/Test_3x3mulMV.o \
	$(OBJDIR)/Test_3x3transpose.o \
	$(OBJDIR)/Test_v3interp.o \
	$(OBJDIR)/Test_v3norm.o \

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
	@echo Linking Test_LinearMath
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
	@echo Cleaning Test_LinearMath
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

$(OBJDIR)/Utils.o: ../../test/Bullet2/Source/Utils.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/TestList.o: ../../test/Bullet2/Source/TestList.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/main.o: ../../test/Bullet2/Source/main.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3sdiv.o: ../../test/Bullet2/Source/Tests/Test_v3sdiv.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_dot3.o: ../../test/Bullet2/Source/Tests/Test_dot3.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_mindot.o: ../../test/Bullet2/Source/Tests/Test_mindot.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3mulVM.o: ../../test/Bullet2/Source/Tests/Test_3x3mulVM.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3skew.o: ../../test/Bullet2/Source/Tests/Test_v3skew.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3lerp.o: ../../test/Bullet2/Source/Tests/Test_v3lerp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_quat_aos_neon.o: ../../test/Bullet2/Source/Tests/Test_quat_aos_neon.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3transposeTimes.o: ../../test/Bullet2/Source/Tests/Test_3x3transposeTimes.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_maxdot.o: ../../test/Bullet2/Source/Tests/Test_maxdot.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3mulM1M2.o: ../../test/Bullet2/Source/Tests/Test_3x3mulM1M2.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_qtnorm.o: ../../test/Bullet2/Source/Tests/Test_qtnorm.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_qtdot.o: ../../test/Bullet2/Source/Tests/Test_qtdot.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_qtmulQV3.o: ../../test/Bullet2/Source/Tests/Test_qtmulQV3.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3cross.o: ../../test/Bullet2/Source/Tests/Test_v3cross.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_qtmul.o: ../../test/Bullet2/Source/Tests/Test_qtmul.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_btDbvt.o: ../../test/Bullet2/Source/Tests/Test_btDbvt.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3timesTranspose.o: ../../test/Bullet2/Source/Tests/Test_3x3timesTranspose.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3mulM.o: ../../test/Bullet2/Source/Tests/Test_3x3mulM.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3rotate.o: ../../test/Bullet2/Source/Tests/Test_v3rotate.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_qtmulV3Q.o: ../../test/Bullet2/Source/Tests/Test_qtmulV3Q.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3div.o: ../../test/Bullet2/Source/Tests/Test_v3div.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3triple.o: ../../test/Bullet2/Source/Tests/Test_v3triple.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3setRot.o: ../../test/Bullet2/Source/Tests/Test_3x3setRot.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3dot.o: ../../test/Bullet2/Source/Tests/Test_v3dot.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3getRot.o: ../../test/Bullet2/Source/Tests/Test_3x3getRot.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3mulMV.o: ../../test/Bullet2/Source/Tests/Test_3x3mulMV.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_3x3transpose.o: ../../test/Bullet2/Source/Tests/Test_3x3transpose.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3interp.o: ../../test/Bullet2/Source/Tests/Test_v3interp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Test_v3norm.o: ../../test/Bullet2/Source/Tests/Test_v3norm.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
