cmake_minimum_required(VERSION 3.3)
project(fillit)

set(CMAKE_C_COMPILER  "/usr/bin/clang")
set(CMAKE_C_FLAGS "-Wall -Wextra -Werror")

set(SOURCE_FILES
    srcs/main.c)

include_directories(${PROJECT_SOURCE_DIR}/includes)
include_directories(${PROJECT_SOURCE_DIR}/libft)

add_executable(fillit ${SOURCE_FILES})

target_link_libraries(fillit ${PROJECT_SOURCE_DIR}/libft/libft.a)
