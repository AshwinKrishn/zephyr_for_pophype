# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(hello_world)

include_directories(src)

file(GLOB SRC_FILES
    "src/*.c"
)


#target_link_libraries(app PRIVATE openlibm_arm64)
target_sources( app PRIVATE ${SRC_FILES})
