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
  OBJDIR     = obj/x32/Debug/terrainrlLearning
  TARGETDIR  = ../lib
  TARGET     = $(TARGETDIR)/libterrainrlLearning.so
  DEFINES   += -DDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -D_LINUX_
  INCLUDES  += -I.. -I../learning -I../util -I../external/Bullet/src -I../external -I../external/jsoncpp/include -I../external/caffe/include -I../external/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -I../external/3rdparty/include/hdf5 -I../external/3rdparty/include -I../external/3rdparty/include/openblas -I../external/3rdparty/include/lmdb -I/usr/local/cuda/include -I../external/OpenCV/include -I../external/caffe/src -I/usr/include/hdf5/serial
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -m32 -fPIC -ggdb -fPIC -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m32 -L/usr/lib32 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/lib `pkg-config --libs gl` `pkg-config --libs glu` -L../external/Bullet/bin -L../external/jsoncpp/build/debug/src/lib_json -L../external/caffe/build/lib -L../lib
  LIBS      += -lterrainrlUtil -lterrainrlAnim -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../lib/libterrainrlUtil.so ../lib/libterrainrlAnim.so
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release/terrainrlLearning
  TARGETDIR  = ../lib
  TARGET     = $(TARGETDIR)/libterrainrlLearning.so
  DEFINES   += -DNDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -D_LINUX_
  INCLUDES  += -I.. -I../learning -I../util -I../external/Bullet/src -I../external -I../external/jsoncpp/include -I../external/caffe/include -I../external/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -I../external/3rdparty/include/hdf5 -I../external/3rdparty/include -I../external/3rdparty/include/openblas -I../external/3rdparty/include/lmdb -I/usr/local/cuda/include -I../external/OpenCV/include -I../external/caffe/src -I/usr/include/hdf5/serial
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -O2 -m32 -fPIC -ggdb -fPIC -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m32 -L/usr/lib32 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/lib `pkg-config --libs gl` `pkg-config --libs glu` -L../external/Bullet/bin -L../external/jsoncpp/build/debug/src/lib_json -L../external/caffe/build/lib -L../lib
  LIBS      += -lterrainrlUtil -lterrainrlAnim -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../lib/libterrainrlUtil.so ../lib/libterrainrlAnim.so
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/terrainrlLearning
  TARGETDIR  = ../lib
  TARGET     = $(TARGETDIR)/libterrainrlLearning.so
  DEFINES   += -DDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -D_LINUX_
  INCLUDES  += -I.. -I../learning -I../util -I../external/Bullet/src -I../external -I../external/jsoncpp/include -I../external/caffe/include -I../external/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -I../external/3rdparty/include/hdf5 -I../external/3rdparty/include -I../external/3rdparty/include/openblas -I../external/3rdparty/include/lmdb -I/usr/local/cuda/include -I../external/OpenCV/include -I../external/caffe/src -I/usr/include/hdf5/serial
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -m64 -fPIC -ggdb -fPIC -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m64 -L/usr/lib64 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/lib `pkg-config --libs gl` `pkg-config --libs glu` -L../external/Bullet/bin -L../external/jsoncpp/build/debug/src/lib_json -L../external/caffe/build/lib -L../lib
  LIBS      += -lterrainrlUtil -lterrainrlAnim -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../lib/libterrainrlUtil.so ../lib/libterrainrlAnim.so
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/terrainrlLearning
  TARGETDIR  = ../lib
  TARGET     = $(TARGETDIR)/libterrainrlLearning.so
  DEFINES   += -DNDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -D_LINUX_
  INCLUDES  += -I.. -I../learning -I../util -I../external/Bullet/src -I../external -I../external/jsoncpp/include -I../external/caffe/include -I../external/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -I../external/3rdparty/include/hdf5 -I../external/3rdparty/include -I../external/3rdparty/include/openblas -I../external/3rdparty/include/lmdb -I/usr/local/cuda/include -I../external/OpenCV/include -I../external/caffe/src -I/usr/include/hdf5/serial
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -O2 -m64 -fPIC -ggdb -fPIC -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m64 -L/usr/lib64 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/lib `pkg-config --libs gl` `pkg-config --libs glu` -L../external/Bullet/bin -L../external/jsoncpp/build/debug/src/lib_json -L../external/caffe/build/lib -L../lib
  LIBS      += -lterrainrlUtil -lterrainrlAnim -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../lib/libterrainrlUtil.so ../lib/libterrainrlAnim.so
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/RNNTrainer.o \
	$(OBJDIR)/DMACELearner.o \
	$(OBJDIR)/AsyncSARSATrainer.o \
	$(OBJDIR)/ACLearner.o \
	$(OBJDIR)/AsyncCaclaDVTrainer.o \
	$(OBJDIR)/StochPGTrainer.o \
	$(OBJDIR)/AsyncCaclaTrainer.o \
	$(OBJDIR)/ACDLearner.o \
	$(OBJDIR)/AsyncQNetTrainer.o \
	$(OBJDIR)/ExpTuple.o \
	$(OBJDIR)/CaclaTrainer.o \
	$(OBJDIR)/AsyncMACEDPGTrainer.o \
	$(OBJDIR)/VarCaclaTrainer.o \
	$(OBJDIR)/VarNetTrainer.o \
	$(OBJDIR)/CaclaDVTrainer.o \
	$(OBJDIR)/RecurrentNet.o \
	$(OBJDIR)/NNSolver.o \
	$(OBJDIR)/QNetTrainer.o \
	$(OBJDIR)/MACETrainer.o \
	$(OBJDIR)/NeuralNet.o \
	$(OBJDIR)/ExpBuffer.o \
	$(OBJDIR)/DPGTrainer.o \
	$(OBJDIR)/NeuralNetTrainer.o \
	$(OBJDIR)/ACTrainer.o \
	$(OBJDIR)/SARSATrainer.o \
	$(OBJDIR)/ParamServer.o \
	$(OBJDIR)/AsyncMACETrainer.o \
	$(OBJDIR)/AsyncDPGTrainer.o \
	$(OBJDIR)/MACEDPGLearner.o \
	$(OBJDIR)/DMACETrainer.o \
	$(OBJDIR)/RNNLearner.o \
	$(OBJDIR)/AsyncACTrainer.o \
	$(OBJDIR)/MACEDPGTrainer.o \
	$(OBJDIR)/AsyncRNNTrainer.o \
	$(OBJDIR)/AsyncTrainer.o \
	$(OBJDIR)/AsyncDMACETrainer.o \
	$(OBJDIR)/NeuralNetLearner.o \
	$(OBJDIR)/TrainerInterface.o \
	$(OBJDIR)/CaclaFDTrainer.o \

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
	@echo Linking terrainrlLearning
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
	@echo Cleaning terrainrlLearning
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

$(OBJDIR)/RNNTrainer.o: ../learning/RNNTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DMACELearner.o: ../learning/DMACELearner.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncSARSATrainer.o: ../learning/AsyncSARSATrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ACLearner.o: ../learning/ACLearner.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncCaclaDVTrainer.o: ../learning/AsyncCaclaDVTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/StochPGTrainer.o: ../learning/StochPGTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncCaclaTrainer.o: ../learning/AsyncCaclaTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ACDLearner.o: ../learning/ACDLearner.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncQNetTrainer.o: ../learning/AsyncQNetTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ExpTuple.o: ../learning/ExpTuple.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/CaclaTrainer.o: ../learning/CaclaTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncMACEDPGTrainer.o: ../learning/AsyncMACEDPGTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/VarCaclaTrainer.o: ../learning/VarCaclaTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/VarNetTrainer.o: ../learning/VarNetTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/CaclaDVTrainer.o: ../learning/CaclaDVTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/RecurrentNet.o: ../learning/RecurrentNet.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NNSolver.o: ../learning/NNSolver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/QNetTrainer.o: ../learning/QNetTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/MACETrainer.o: ../learning/MACETrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NeuralNet.o: ../learning/NeuralNet.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ExpBuffer.o: ../learning/ExpBuffer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DPGTrainer.o: ../learning/DPGTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NeuralNetTrainer.o: ../learning/NeuralNetTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ACTrainer.o: ../learning/ACTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SARSATrainer.o: ../learning/SARSATrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ParamServer.o: ../learning/ParamServer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncMACETrainer.o: ../learning/AsyncMACETrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncDPGTrainer.o: ../learning/AsyncDPGTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/MACEDPGLearner.o: ../learning/MACEDPGLearner.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DMACETrainer.o: ../learning/DMACETrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/RNNLearner.o: ../learning/RNNLearner.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncACTrainer.o: ../learning/AsyncACTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/MACEDPGTrainer.o: ../learning/MACEDPGTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncRNNTrainer.o: ../learning/AsyncRNNTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncTrainer.o: ../learning/AsyncTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncDMACETrainer.o: ../learning/AsyncDMACETrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NeuralNetLearner.o: ../learning/NeuralNetLearner.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/TrainerInterface.o: ../learning/TrainerInterface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/CaclaFDTrainer.o: ../learning/CaclaFDTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
