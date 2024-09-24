cmake_minimum_required(VERSION 3.28)

# create project
project(cflfac-lynarr)

set(CMAKE_C_STANDARD 11)
set(CMAKE_BUILD_TYPE "Release")

set(CPM_DOWNLOAD_VERSION 0.27.2) 
set(CPM_DOWNLOAD_LOCATION "${CMAKE_BINARY_DIR}/cmake/CPM_${CPM_DOWNLOAD_VERSION}.cmake")

if(NOT (EXISTS ${CPM_DOWNLOAD_LOCATION}))
    message(STATUS "Downloading CPM.cmake")
    file(DOWNLOAD https://github.com/TheLartians/CPM.cmake/releases/download/v${CPM_DOWNLOAD_VERSION}/CPM.cmake ${CPM_DOWNLOAD_LOCATION})
endif()

# add dependency
include(${CPM_DOWNLOAD_LOCATION})

CPMAddPackage(
  NAME libsais
  GITHUB_REPOSITORY IlyaGrebnov/libsais
  GIT_TAG v2.8.1
  OPTIONS
    "LIBSAIS_USE_OPENMP OFF"
    "LIBSAIS_BUILD_SHARED_LIB OFF"
)

# add executable
add_executable(duval src/duval.c src/algorithms.c)
add_executable(rDuval src/rDuval.c src/algorithms.c)
add_executable(suffix_array src/libsais.c src/algorithms.c)
add_executable(lrm_isa src/lrmisa.c src/algorithms.c)
add_executable(nsv_isa src/nsvisa.c src/algorithms.c)
    
# link dependencies
target_link_libraries(duval libsais)
target_link_libraries(rDuval libsais)
target_link_libraries(suffix_array libsais)
target_link_libraries(lrm_isa libsais)
target_link_libraries(nsv_isa libsais)

# include directories
target_include_directories(duval PRIVATE build/_dep/libsais_src/include)
target_include_directories(rDuval PRIVATE build/_dep/libsais_src/include)
target_include_directories(suffix_array PRIVATE build/_dep/libsais_src/include)
target_include_directories(lrm_isa PRIVATE build/_dep/libsais_src/include)
target_include_directories(nsv_isa PRIVATE build/_dep/libsais_src/include)

