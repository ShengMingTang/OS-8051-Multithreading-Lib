cmake_minimum_required(VERSION 3.2)
set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic) # No linux target etc
# Prevent default configuration
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")

execute_process(COMMAND sdcc -c preemptive.c)
execute_process(COMMAND sdcc -c testpreemptive.c)
execute_process(COMMAND sdcc -o prep.ihx testpreemptive.rel preemptive.rel)
execute_process(COMMAND packihx prep.ihx > prep.hex)