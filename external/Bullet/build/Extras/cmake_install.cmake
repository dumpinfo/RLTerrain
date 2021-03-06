# Install script for directory: /disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/Extras

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/Extras/Serialize/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/Extras/ConvexDecomposition/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/Extras/HACD/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/Extras/GIMPACTUtils/cmake_install.cmake")
  include("/disk4/MotionDev/DeepLocoTest/DeepLoco-0.81/external/Bullet/build/Extras/InverseDynamics/cmake_install.cmake")

endif()

