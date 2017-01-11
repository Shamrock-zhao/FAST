# Download and set up zlib

include(cmake/Externals.cmake)

ExternalProject_Add(zlib
        PREFIX ${FAST_EXTERNAL_BUILD_DIR}/zlib
        BINARY_DIR ${FAST_EXTERNAL_BUILD_DIR}/zlib
        GIT_REPOSITORY "https://github.com/madler/zlib.git"
        GIT_TAG "v1.2.8"
        CMAKE_CACHE_ARGS
            -DCMAKE_BUILD_TYPE:STRING=Release
            -DCMAKE_VERBOSE_MAKEFILE:BOOL=OFF
            -DCMAKE_INSTALL_PREFIX:STRING=${FAST_EXTERNAL_INSTALL_DIR}
)

set(ZLIB_LIBRARY ${FAST_EXTERNAL_INSTALL_DIR}/lib/${CMAKE_SHARED_LIBRARY_PREFIX}z${CMAKE_SHARED_LIBRARY_SUFFIX})
list(APPEND LIBRARIES ${ZLIB_LIBRARY})
list(APPEND FAST_EXTERNAL_DEPENDENCIES zlib)