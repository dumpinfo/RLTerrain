# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug32
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

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug/terrainrlUtil
  TARGETDIR  = ../lib
  TARGET     = $(TARGETDIR)/libterrainrlUtil.so
  DEFINES   += -DDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -D_LINUX_
  INCLUDES  += -I.. -I../util -I../external/Bullet/src -I../external -I../external/jsoncpp/include -I../external/caffe/include -I../external/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -I../external/3rdparty/include/hdf5 -I../external/3rdparty/include -I../external/3rdparty/include/openblas -I../external/3rdparty/include/lmdb -I/usr/local/cuda/include -I../external/OpenCV/include -I../external/caffe/src -I/usr/include/hdf5/serial
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -m32 -fPIC -ggdb -fPIC -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m32 -L/usr/lib32 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/lib `pkg-config --libs gl` `pkg-config --libs glu` -L../external/Bullet/bin -L../external/jsoncpp/build/debug/src/lib_json -L../external/caffe/build/lib
  LIBS      += -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release/terrainrlUtil
  TARGETDIR  = ../lib
  TARGET     = $(TARGETDIR)/libterrainrlUtil.so
  DEFINES   += -DNDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -D_LINUX_
  INCLUDES  += -I.. -I../util -I../external/Bullet/src -I../external -I../external/jsoncpp/include -I../external/caffe/include -I../external/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -I../external/3rdparty/include/hdf5 -I../external/3rdparty/include -I../external/3rdparty/include/openblas -I../external/3rdparty/include/lmdb -I/usr/local/cuda/include -I../external/OpenCV/include -I../external/caffe/src -I/usr/include/hdf5/serial
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -O2 -m32 -fPIC -ggdb -fPIC -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m32 -L/usr/lib32 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/lib `pkg-config --libs gl` `pkg-config --libs glu` -L../external/Bullet/bin -L../external/jsoncpp/build/debug/src/lib_json -L../external/caffe/build/lib
  LIBS      += -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/terrainrlUtil
  TARGETDIR  = ../lib
  TARGET     = $(TARGETDIR)/libterrainrlUtil.so
  DEFINES   += -DDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -D_LINUX_
  INCLUDES  += -I.. -I../util -I../external/Bullet/src -I../external -I../external/jsoncpp/include -I../external/caffe/include -I../external/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -I../external/3rdparty/include/hdf5 -I../external/3rdparty/include -I../external/3rdparty/include/openblas -I../external/3rdparty/include/lmdb -I/usr/local/cuda/include -I../external/OpenCV/include -I../external/caffe/src -I/usr/include/hdf5/serial
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -m64 -fPIC -ggdb -fPIC -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m64 -L/usr/lib64 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/lib `pkg-config --libs gl` `pkg-config --libs glu` -L../external/Bullet/bin -L../external/jsoncpp/build/debug/src/lib_json -L../external/caffe/build/lib
  LIBS      += -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/terrainrlUtil
  TARGETDIR  = ../lib
  TARGET     = $(TARGETDIR)/libterrainrlUtil.so
  DEFINES   += -DNDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -D_LINUX_
  INCLUDES  += -I.. -I../util -I../external/Bullet/src -I../external -I../external/jsoncpp/include -I../external/caffe/include -I../external/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -I../external/3rdparty/include/hdf5 -I../external/3rdparty/include -I../external/3rdparty/include/openblas -I../external/3rdparty/include/lmdb -I/usr/local/cuda/include -I../external/OpenCV/include -I../external/caffe/src -I/usr/include/hdf5/serial
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -O2 -m64 -fPIC -ggdb -fPIC -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m64 -L/usr/lib64 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/lib `pkg-config --libs gl` `pkg-config --libs glu` -L../external/Bullet/bin -L../external/jsoncpp/build/debug/src/lib_json -L../external/caffe/build/lib
  LIBS      += -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/Util.o \
	$(OBJDIR)/IndexManager.o \
	$(OBJDIR)/JsonUtil.o \
	$(OBJDIR)/BVHReader.o \
	$(OBJDIR)/Rand.o \
	$(OBJDIR)/PerlinNoise.o \
	$(OBJDIR)/MotionDB.o \
	$(OBJDIR)/ArgParser.o \
	$(OBJDIR)/MathUtil.o \
	$(OBJDIR)/Trajectory.o \
	$(OBJDIR)/FileUtil.o \

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
	@echo Linking terrainrlUtil
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
	@echo Cleaning terrainrlUtil
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
	-$(SILENT) cp $< $(OBJDIR)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/Util.o: ../util/Util.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/IndexManager.o: ../util/IndexManager.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/JsonUtil.o: ../util/JsonUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/BVHReader.o: ../util/BVHReader.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Rand.o: ../util/Rand.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/PerlinNoise.o: ../util/PerlinNoise.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/MotionDB.o: ../util/MotionDB.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ArgParser.o: ../util/ArgParser.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/MathUtil.o: ../util/MathUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Trajectory.o: ../util/Trajectory.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/FileUtil.o: ../util/FileUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)