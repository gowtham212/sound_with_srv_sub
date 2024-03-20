# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sound_package: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sound_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv" NAME_WE)
add_custom_target(_sound_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_package" "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv" ""
)

get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv" NAME_WE)
add_custom_target(_sound_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_package" "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv" ""
)

get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv" NAME_WE)
add_custom_target(_sound_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_package" "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv" ""
)

get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv" NAME_WE)
add_custom_target(_sound_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_package" "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_package
)
_generate_srv_cpp(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_package
)
_generate_srv_cpp(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_package
)
_generate_srv_cpp(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_package
)

### Generating Module File
_generate_module_cpp(sound_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sound_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sound_package_generate_messages sound_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_cpp _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_cpp _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_cpp _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_cpp _sound_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sound_package_gencpp)
add_dependencies(sound_package_gencpp sound_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sound_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sound_package
)
_generate_srv_eus(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sound_package
)
_generate_srv_eus(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sound_package
)
_generate_srv_eus(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sound_package
)

### Generating Module File
_generate_module_eus(sound_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sound_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sound_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sound_package_generate_messages sound_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_eus _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_eus _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_eus _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_eus _sound_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sound_package_geneus)
add_dependencies(sound_package_geneus sound_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sound_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_package
)
_generate_srv_lisp(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_package
)
_generate_srv_lisp(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_package
)
_generate_srv_lisp(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_package
)

### Generating Module File
_generate_module_lisp(sound_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sound_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sound_package_generate_messages sound_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_lisp _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_lisp _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_lisp _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_lisp _sound_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sound_package_genlisp)
add_dependencies(sound_package_genlisp sound_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sound_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sound_package
)
_generate_srv_nodejs(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sound_package
)
_generate_srv_nodejs(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sound_package
)
_generate_srv_nodejs(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sound_package
)

### Generating Module File
_generate_module_nodejs(sound_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sound_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sound_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sound_package_generate_messages sound_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_nodejs _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_nodejs _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_nodejs _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_nodejs _sound_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sound_package_gennodejs)
add_dependencies(sound_package_gennodejs sound_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sound_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_package
)
_generate_srv_py(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_package
)
_generate_srv_py(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_package
)
_generate_srv_py(sound_package
  "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_package
)

### Generating Module File
_generate_module_py(sound_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sound_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sound_package_generate_messages sound_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/PlaySong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_py _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/StopSong.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_py _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/SetVolume.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_py _sound_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv" NAME_WE)
add_dependencies(sound_package_generate_messages_py _sound_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sound_package_genpy)
add_dependencies(sound_package_genpy sound_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sound_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sound_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sound_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sound_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sound_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sound_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sound_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sound_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sound_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sound_package_generate_messages_py std_msgs_generate_messages_py)
endif()
