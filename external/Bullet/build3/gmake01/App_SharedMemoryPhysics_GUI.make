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
  OBJDIR     = obj/x64/Release/App_SharedMemoryPhysics_GUI
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/App_SharedMemoryPhysics_GUI_gmake_x64_release
  DEFINES   += -DB3_USE_STANDALONE_EXAMPLE -DGLEW_INIT_OPENGL11_FUNCTIONS=1 -DGLEW_STATIC -DGLEW_DYNAMIC_LOAD_ALL_GLX_FUNCTIONS=1 -DDYNAMIC_LOAD_X11_FUNCTIONS
  INCLUDES  += -I../../src -I../../examples/ThirdPartyLibs -I../../examples/ThirdPartyLibs/Glew -I../../examples/ThirdPartyLibs/optionalX11
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -msse2 -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -s -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lBulletInverseDynamics_gmake_x64_release -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release ../../bin/libOpenGL_Window_gmake_x64_release.a -lBullet3Common_gmake_x64_release ../../bin/libBussIK_gmake_x64_release.a -lBulletInverseDynamicsUtils -ldl -lpthread
  LDDEPS    += ../../bin/libBulletInverseDynamics_gmake_x64_release.so ../../bin/libBulletDynamics_gmake_x64_release.so ../../bin/libBulletCollision_gmake_x64_release.so ../../bin/libLinearMath_gmake_x64_release.so ../../bin/libOpenGL_Window_gmake_x64_release.a ../../bin/libBullet3Common_gmake_x64_release.so ../../bin/libBussIK_gmake_x64_release.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/App_SharedMemoryPhysics_GUI
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/App_SharedMemoryPhysics_GUI_gmake_x64_debug
  DEFINES   += -D_DEBUG=1 -DB3_USE_STANDALONE_EXAMPLE -DGLEW_INIT_OPENGL11_FUNCTIONS=1 -DGLEW_STATIC -DGLEW_DYNAMIC_LOAD_ALL_GLX_FUNCTIONS=1 -DDYNAMIC_LOAD_X11_FUNCTIONS
  INCLUDES  += -I../../src -I../../examples/ThirdPartyLibs -I../../examples/ThirdPartyLibs/Glew -I../../examples/ThirdPartyLibs/optionalX11
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lBulletInverseDynamics_gmake_x64_debug -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug ../../bin/libOpenGL_Window_gmake_x64_debug.a -lBullet3Common_gmake_x64_debug ../../bin/libBussIK_gmake_x64_debug.a -lBulletInverseDynamicsUtils -ldl -lpthread
  LDDEPS    += ../../bin/libBulletInverseDynamics_gmake_x64_debug.so ../../bin/libBulletDynamics_gmake_x64_debug.so ../../bin/libBulletCollision_gmake_x64_debug.so ../../bin/libLinearMath_gmake_x64_debug.so ../../bin/libOpenGL_Window_gmake_x64_debug.a ../../bin/libBullet3Common_gmake_x64_debug.so ../../bin/libBussIK_gmake_x64_debug.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/glew.o \
	$(OBJDIR)/IKTrajectoryHelper.o \
	$(OBJDIR)/PhysicsClient.o \
	$(OBJDIR)/PhysicsClientSharedMemory.o \
	$(OBJDIR)/PhysicsClientExample.o \
	$(OBJDIR)/PhysicsServerExample.o \
	$(OBJDIR)/PhysicsServerSharedMemory.o \
	$(OBJDIR)/PhysicsServer.o \
	$(OBJDIR)/PhysicsClientC_API.o \
	$(OBJDIR)/PosixSharedMemory.o \
	$(OBJDIR)/Win32SharedMemory.o \
	$(OBJDIR)/InProcessMemory.o \
	$(OBJDIR)/PhysicsDirect.o \
	$(OBJDIR)/PhysicsDirectC_API.o \
	$(OBJDIR)/PhysicsLoopBack.o \
	$(OBJDIR)/PhysicsLoopBackC_API.o \
	$(OBJDIR)/PhysicsClientSharedMemory_C_API.o \
	$(OBJDIR)/PhysicsClientSharedMemory2_C_API.o \
	$(OBJDIR)/PhysicsClientSharedMemory2.o \
	$(OBJDIR)/SharedMemoryCommandProcessor.o \
	$(OBJDIR)/PhysicsServerCommandProcessor.o \
	$(OBJDIR)/TinyRendererVisualShapeConverter.o \
	$(OBJDIR)/geometry.o \
	$(OBJDIR)/model.o \
	$(OBJDIR)/tgaimage.o \
	$(OBJDIR)/our_gl.o \
	$(OBJDIR)/TinyRenderer.o \
	$(OBJDIR)/SimpleCamera.o \
	$(OBJDIR)/MyMultiBodyCreator.o \
	$(OBJDIR)/BulletUrdfImporter.o \
	$(OBJDIR)/UrdfParser.o \
	$(OBJDIR)/urdfStringSplit.o \
	$(OBJDIR)/URDF2Bullet.o \
	$(OBJDIR)/BulletMJCFImporter.o \
	$(OBJDIR)/b3ResourcePath.o \
	$(OBJDIR)/b3Clock.o \
	$(OBJDIR)/RobotLoggingUtil.o \
	$(OBJDIR)/ChromeTraceUtil.o \
	$(OBJDIR)/btWorldImporter.o \
	$(OBJDIR)/btBulletWorldImporter.o \
	$(OBJDIR)/bChunk.o \
	$(OBJDIR)/bFile.o \
	$(OBJDIR)/bDNA.o \
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
	$(OBJDIR)/main_opengl_single_example.o \
	$(OBJDIR)/OpenGLGuiHelper.o \
	$(OBJDIR)/GL_ShapeDrawer.o \
	$(OBJDIR)/CollisionShape2TriangleMesh.o \
	$(OBJDIR)/b3ThreadSupportInterface.o \
	$(OBJDIR)/b3PosixThreadSupport.o \

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
	@echo Linking App_SharedMemoryPhysics_GUI
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
	@echo Cleaning App_SharedMemoryPhysics_GUI
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

$(OBJDIR)/glew.o: ../../examples/ThirdPartyLibs/Glew/glew.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/IKTrajectoryHelper.o: ../../examples/SharedMemory/IKTrajectoryHelper.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsClient.o: ../../examples/SharedMemory/PhysicsClient.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsClientSharedMemory.o: ../../examples/SharedMemory/PhysicsClientSharedMemory.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsClientExample.o: ../../examples/SharedMemory/PhysicsClientExample.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsServerExample.o: ../../examples/SharedMemory/PhysicsServerExample.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsServerSharedMemory.o: ../../examples/SharedMemory/PhysicsServerSharedMemory.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsServer.o: ../../examples/SharedMemory/PhysicsServer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsClientC_API.o: ../../examples/SharedMemory/PhysicsClientC_API.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PosixSharedMemory.o: ../../examples/SharedMemory/PosixSharedMemory.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Win32SharedMemory.o: ../../examples/SharedMemory/Win32SharedMemory.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/InProcessMemory.o: ../../examples/SharedMemory/InProcessMemory.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsDirect.o: ../../examples/SharedMemory/PhysicsDirect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsDirectC_API.o: ../../examples/SharedMemory/PhysicsDirectC_API.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsLoopBack.o: ../../examples/SharedMemory/PhysicsLoopBack.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsLoopBackC_API.o: ../../examples/SharedMemory/PhysicsLoopBackC_API.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsClientSharedMemory_C_API.o: ../../examples/SharedMemory/PhysicsClientSharedMemory_C_API.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsClientSharedMemory2_C_API.o: ../../examples/SharedMemory/PhysicsClientSharedMemory2_C_API.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/PhysicsClientSharedMemory2.o: ../../examples/SharedMemory/PhysicsClientSharedMemory2.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/SharedMemoryCommandProcessor.o: ../../examples/SharedMemory/SharedMemoryCommandProcessor.cpp
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
$(OBJDIR)/BulletMJCFImporter.o: ../../examples/Importers/ImportMJCFDemo/BulletMJCFImporter.cpp
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
$(OBJDIR)/ChromeTraceUtil.o: ../../examples/Utils/ChromeTraceUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/btWorldImporter.o: ../../Extras/Serialize/BulletWorldImporter/btWorldImporter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/btBulletWorldImporter.o: ../../Extras/Serialize/BulletWorldImporter/btBulletWorldImporter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/bChunk.o: ../../Extras/Serialize/BulletFileLoader/bChunk.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/bFile.o: ../../Extras/Serialize/BulletFileLoader/bFile.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/bDNA.o: ../../Extras/Serialize/BulletFileLoader/bDNA.cpp
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
$(OBJDIR)/main_opengl_single_example.o: ../../examples/StandaloneMain/main_opengl_single_example.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/OpenGLGuiHelper.o: ../../examples/ExampleBrowser/OpenGLGuiHelper.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/GL_ShapeDrawer.o: ../../examples/ExampleBrowser/GL_ShapeDrawer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/CollisionShape2TriangleMesh.o: ../../examples/ExampleBrowser/CollisionShape2TriangleMesh.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/b3ThreadSupportInterface.o: ../../examples/MultiThreading/b3ThreadSupportInterface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/b3PosixThreadSupport.o: ../../examples/MultiThreading/b3PosixThreadSupport.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
