# Minimum required CMake version 
cmake_minimum_required(VERSION 2.6)

# Fourier Volume Rendeing
PROJECT(OSG)

# Add CMake modules 
SET(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/CMake)

# OpenGL & GLU & GLUT  
FIND_PACKAGE(OpenGL REQUIRED)
FIND_PACKAGE(GLUT REQUIRED)

IF(OPENGL_FOUND)
    MESSAGE(STATUS "OpenGL found...")
    MESSAGE("-- OpenGL include directory : ${OPENGL_INCLUDE_DIR}")
    MESSAGE("-- OpenGL library directory : ${OPENGL_LIBRARY}")
    INCLUDE_DIRECTORIES(${OPENGL_INCLUDE_DIR})
    LINK_LIBRARIES(${OPENGL_LIBRARY})
ELSE(OPENGL_FOUND)
    MESSAGE(FATAL_ERROR "OpenGL NOT FOUND")
ENDIF(OPENGL_FOUND)

IF(GLUT_FOUND)
    MESSAGE(STATUS  "GLUT FOUND ...")
    MESSAGE("GLUT include directory : ${GLUT_INCLUDE_DIR}")
    MESSAGE("GLUT library directory : ${GLUT_LIBRARY}")
    INCLUDE_DIRECTORIES(${GLUT_INCLUDE_DIR}/GL)
    LINK_LIBRARIES(${GLUT_LIBRARY})
ELSE(GLUT_FOUND)
    MESSAGE(FATAL_ERROR "GLUT NOT FOUND")
ENDIF(GLUT_FOUND)


# Find OpenSceneGraph 
find_package(OpenSceneGraph REQUIRED osgUtil osgDB osgAnimation osgFX osgViewer osgGA osgManipulator osgParticle osgShadow osgSim osgTerrain osgText osgUtil osgVolume osgWidget)
if (OpenSceneGraph_FOUND)
    MESSAGE("-- Found OpenSceneGraph")
elseif (OpenSceneGraph_FOUND)
    MESSAGE("-- OpenSceneGraph NOT FOUND")
endif(OpenSceneGraph_FOUND)


# Adding the OpenSceneGraph include directies to my include list  
INCLUDE_DIRECTORIES(${OPENSCENEGRAPH_INCLUDE_DIRS})

# Adding OpenSceneGraph libraries to OPENSCENEGRAPH_LIBS
LINK_LIBRARIES(${OPENSCENEGRAPH_LIBRARIES})

# Add the heade files to the include directories
INCLUDE_DIRECTORIES("${OPENGL_INCLUDE_DIR}")

# Include FindCUDA.cmake 
INCLUDE(FindCUDA_Local)

# Include directories 
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})

# Generate the executable considering CUDA stuff :)
ADD_EXECUTABLE(osgVolume osgVolume.cpp)
ADD_EXECUTABLE(osgModel osgModel.cpp)
ADD_EXECUTABLE(runOSG runOSG.cpp)


