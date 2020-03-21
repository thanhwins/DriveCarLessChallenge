# Install script for directory: /home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/lane_detection/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/peripheral_driver/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/stereo_vision/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/ObjectRecognition/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/ObjectDetection/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/HAL/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/multilane/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/sign_detection/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/sign_recognize/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/radon/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/extract_info/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/openni2/cmake_install.cmake")
  include("/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/dlib/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ubuntu/DriverlessCarChallenge/jetson/carControl/src/0.3/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
