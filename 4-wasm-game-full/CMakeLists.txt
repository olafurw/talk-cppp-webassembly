cmake_minimum_required(VERSION 3.2)
project(game)

set(CMAKE_EXECUTABLE_SUFFIX ".html")

add_executable(game box.cpp game_logic.cpp)

set(EM_FLAGS "")
set(EM_FLAGS "${EM_FLAGS} -fsanitize=address --profiling")
set(EM_FLAGS "${EM_FLAGS} --shell-file ../index.html --preload-file ../assets@/assets/")
set(EM_FLAGS "${EM_FLAGS} -O2 -g -gsource-map --source-map-base http://localhost:8080/")
set(EM_FLAGS "${EM_FLAGS} -s USE_SDL=2 -s USE_SDL_TTF=2")
set(EM_FLAGS "${EM_FLAGS} -s INITIAL_MEMORY=256MB -s TOTAL_MEMORY=256MB -s ALLOW_MEMORY_GROWTH=1")
set_target_properties(game PROPERTIES LINK_FLAGS ${EM_FLAGS})