cmake_minimum_required(VERSION 3.8)
project(AGiftCard)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -fpermissive")

find_package (OpenGL REQUIRED)
find_package (GLUT REQUIRED)

include_directories(${OPENGL_INCLUDE_DIR}  ${GLUT_INCLUDE_DIRS})

set(SOURCE_FILES main.cpp App.hpp App.cpp Scene.hpp Scene.cpp FlowerModel.hpp FlowerModel.cpp Surface.hpp Surface.cpp PetalSurface.hpp PetalSurface.cpp geometry.hpp mmath.h.hpp StemSurface.hpp StemSurface.cpp Vertex.hpp)

add_executable(bd_gift_card ${SOURCE_FILES})

target_link_libraries(bd_gift_card ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES})