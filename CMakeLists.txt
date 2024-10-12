cmake_minimum_required(VERSION 3.10)
project(Calculator)

# Створення статичної бібліотеки
add_library(calculator STATIC add.c subtract.c)

# Створення виконуваного файлу
add_executable(main main.c)

# Лінкування бібліотеки до виконуваного файлу
target_link_libraries(main calculator)
