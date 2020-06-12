# Install script for directory: /disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/src

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bullet" TYPE FILE FILES
    "/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/src/btBulletCollisionCommon.h"
    "/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/src/btBulletDynamicsCommon.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/Bullet3OpenCL/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/Bullet3Serialize/Bullet2FileLoader/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/Bullet3Dynamics/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/Bullet3Collision/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/Bullet3Geometry/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/Bullet3Common/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/BulletInverseDynamics/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/BulletSoftBody/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/BulletCollision/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/BulletDynamics/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/src/LinearMath/cmake_install.cmake")

endif()

