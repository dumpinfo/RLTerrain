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
  OBJDIR     = obj/x64/Release/App_PhysicsServerUDP
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/App_PhysicsServerUDP_gmake_x64_release
  DEFINES   += -DNO_SHARED_MEMORY
  INCLUDES  += -I../../examples/SharedMemory -I../../src -I../../examples/ThirdPartyLibs -I../../examples/ThirdPartyLibs/enet/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -msse2 -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -s -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../../bin/libenet_gmake_x64_release.a -lBullet3Common_gmake_x64_release -lBulletInverseDynamics_gmake_x64_release -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release ../../bin/libBussIK_gmake_x64_release.a -lBulletInverseDynamicsUtils
  LDDEPS    += ../../bin/libenet_gmake_x64_release.a ../../bin/libBullet3Common_gmake_x64_release.so ../../bin/libBulletInverseDynamics_gmake_x64_release.so ../../bin/libBulletDynamics_gmake_x64_release.so ../../bin/libBulletCollision_gmake_x64_release.so ../../bin/libLinearMath_gmake_x64_release.so ../../bin/libBussIK_gmake_x64_release.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/App_PhysicsServerUDP
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/App_PhysicsServerUDP_gmake_x64_debug
  DEFINES   += -D_DEBUG=1 -DNO_SHARED_MEMORY
  INCLUDES  += -I../../examples/SharedMemory -I../../src -I../../examples/ThirdPartyLibs -I../../examples/ThirdPartyLibs/enet/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../../bin/libenet_gmake_x64_debug.a -lBullet3Common_gmake_x64_debug -lBulletInverseDynamics_gmake_x64_debug -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug ../../bin/libBussIK_gmake_x64_debug.a -lBulletInverseDynamicsUtils
  LDDEPS    += ../../bin/libenet_gmake_x64_debug.a ../../bin/libBullet3Common_gmake_x64_debug.so ../../bin/libBulletInverseDynamics_gmake_x64_debug.so ../../bin/libBulletDynamics_gmake_x64_debug.so ../../bin/libBulletCollision_gmake_x64_debug.so ../../bin/libLinearMath_gmake_x64_debug.so ../../bin/libBussIK_gmake_x64_debug.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/IKTrajectoryHelper.o \
	$(OBJDIR)/PhysicsServerCommandProcessor.o \
	$(OBJDIR)/TinyRendererVisualShapeConverter.o \
	$(OBJDIR)/geometry.o \
	$(OBJDIR)/model.o \
	$(OBJDIR)/tgaimage.o \
	$(OBJDIR)/our_gl.o \
	$(OBJDIR)/TinyRenderer.o \
	$(OBJDIR)/SimpleCamera.o \
	$(OBJDIR)/MyMultiBodyCreator.o \
	$(OBJDIR)/BulletMJCFImporter.o \
	$(OBJDIR)/BulletUrdfImporter.o \
	$(OBJDIR)/UrdfParser.o \
	$(OBJDIR)/urdfStringSplit.o \
	$(OBJDIR)/URDF2Bullet.o \
	$(OBJDIR)/b3ResourcePath.o \
	$(OBJDIR)/b3Clock.o \
	$(OBJDIR)/RobotLoggingUtil.o \
	$(OBJDIR)/btWorldImporter.o \
	$(OBJDIR)/btBulletWorldImporter.o \
	$(OBJDIR)/bFile.o \
	$(OBJDIR)/bDNA.o \
	$(OBJDIR)/bChunk.o \
	$(OBJDIR)/btBulletFile.o \
	$(OBJDIR)/Wavefront2GLInstanceGraphicsShape.o \
	$(OBJDIR)/LoadMeshFromObj.o \
	$(OBJDIR)/LoadMeshFromCollada.o \
	$(OBJDIR)/tiny_obj_loader.o \
	$(OBJDIR)/tinystr.o \
	$(OBJDIR)/tinyxml.o \
	$(OBJDIR)/tinyxmlerror.o \
	$(OBJDIR)/tinyxmlparser.o \
	$(OBJDIR)/b3ImportMeshUtility.o \
	$(OBJDIR)/stb_image.o \
	$(OBJDIR)/main.o \

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
	@echo Linking App_PhysicsServerUDP
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
	@echo Cleaning App_PhysicsServerUDP
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

$(OBJDIR)/IKTrajectoryHelper.o: ../../examples/SharedMemory/IKTrajectoryHelper.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsServerCommandProcessor.o: ../../examples/SharedMemory/PhysicsServerCommandProcessor.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/TinyRendererVisualShapeConverter.o: ../../examples/SharedMemory/TinyRendererVisualShapeConverter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/geometry.o: ../../examples/TinyRenderer/geometry.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/model.o: ../../examples/TinyRenderer/model.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tgaimage.o: ../../examples/TinyRenderer/tgaimage.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/our_gl.o: ../../examples/TinyRenderer/our_gl.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/TinyRenderer.o: ../../examples/TinyRenderer/TinyRenderer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/SimpleCamera.o: ../../examples/OpenGLWindow/SimpleCamera.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/MyMultiBodyCreator.o: ../../examples/Importers/ImportURDFDemo/MyMultiBodyCreator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/BulletMJCFImporter.o: ../../examples/Importers/ImportMJCFDemo/BulletMJCFImporter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/BulletUrdfImporter.o: ../../examples/Importers/ImportURDFDemo/BulletUrdfImporter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/UrdfParser.o: ../../examples/Importers/ImportURDFDemo/UrdfParser.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/urdfStringSplit.o: ../../examples/Importers/ImportURDFDemo/urdfStringSplit.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/URDF2Bullet.o: ../../examples/Importers/ImportURDFDemo/URDF2Bullet.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/b3ResourcePath.o: ../../examples/Utils/b3ResourcePath.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/b3Clock.o: ../../examples/Utils/b3Clock.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/RobotLoggingUtil.o: ../../examples/Utils/RobotLoggingUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/btWorldImporter.o: ../../Extras/Serialize/BulletWorldImporter/btWorldImporter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/btBulletWorldImporter.o: ../../Extras/Serialize/BulletWorldImporter/btBulletWorldImporter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/bFile.o: ../../Extras/Serialize/BulletFileLoader/bFile.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/bDNA.o: ../../Extras/Serialize/BulletFileLoader/bDNA.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/bChunk.o: ../../Extras/Serialize/BulletFileLoader/bChunk.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/btBulletFile.o: ../../Extras/Serialize/BulletFileLoader/btBulletFile.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Wavefront2GLInstanceGraphicsShape.o: ../../examples/Importers/ImportObjDemo/Wavefront2GLInstanceGraphicsShape.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/LoadMeshFromObj.o: ../../examples/Importers/ImportObjDemo/LoadMeshFromObj.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/LoadMeshFromCollada.o: ../../examples/Importers/ImportColladaDemo/LoadMeshFromCollada.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tiny_obj_loader.o: ../../examples/ThirdPartyLibs/Wavefront/tiny_obj_loader.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tinystr.o: ../../examples/ThirdPartyLibs/tinyxml/tinystr.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tinyxml.o: ../../examples/ThirdPartyLibs/tinyxml/tinyxml.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tinyxmlerror.o: ../../examples/ThirdPartyLibs/tinyxml/tinyxmlerror.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tinyxmlparser.o: ../../examples/ThirdPartyLibs/tinyxml/tinyxmlparser.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/b3ImportMeshUtility.o: ../../examples/Importers/ImportMeshUtility/b3ImportMeshUtility.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/stb_image.o: ../../examples/ThirdPartyLibs/stb_image/stb_image.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/main.o: ../../examples/SharedMemory/udp/main.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
