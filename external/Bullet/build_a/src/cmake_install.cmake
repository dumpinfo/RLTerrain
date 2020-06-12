# Install script for directory: /disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bullet" TYPE FILE FILES
    "/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/src/btBulletCollisionCommon.h"
    "/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/src/btBulletDynamicsCommon.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/Bullet3OpenCL/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/Bullet3Serialize/Bullet2FileLoader/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/Bullet3Dynamics/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/Bullet3Collision/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/Bullet3Geometry/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/Bullet3Common/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/BulletInverseDynamics/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/BulletSoftBody/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/BulletCollision/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/BulletDynamics/cmake_install.cmake")
  include("/disk2/MotionDev/TerrainTest/OKMIMIC/TerrainRLSim/external/Bullet/build_a/src/LinearMath/cmake_install.cmake")

endif()

