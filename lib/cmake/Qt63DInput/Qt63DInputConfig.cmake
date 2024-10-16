# Copyright (C) 2024 The Qt Company Ltd.
# SPDX-License-Identifier: BSD-3-Clause


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was QtModuleConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

cmake_minimum_required(VERSION 3.16...3.21)

include(CMakeFindDependencyMacro)

get_filename_component(_import_prefix "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_import_prefix "${_import_prefix}" REALPATH)

# Extra cmake code begin

# Extra cmake code end

# Find required dependencies, if any.
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt63DInputDependencies.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/Qt63DInputDependencies.cmake")
    _qt_internal_suggest_dependency_debugging(3DInput
        __qt_3DInput_pkg ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE)
endif()

# If *ConfigDependencies.cmake exists, the variable value will be defined there.
# Don't override it in that case.
if(NOT DEFINED "Qt63DInput_FOUND")
    set("Qt63DInput_FOUND" TRUE)
endif()

if (NOT QT_NO_CREATE_TARGETS AND Qt63DInput_FOUND)
    include("${CMAKE_CURRENT_LIST_DIR}/Qt63DInputTargets.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/Qt63DInputAdditionalTargetInfo.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/Qt63DInputExtraProperties.cmake"
        OPTIONAL)

    # DEPRECATED
    # Provide old style variables for includes, compile definitions, etc.
    # These variables are deprecated and only provided on a best-effort basis to facilitate porting.
    # Consider using target_link_libraries(app PRIVATE Qt63DInput) instead.
    set(Qt63DInput_LIBRARIES "Qt6::3DInput")

    get_target_property(_Qt63DInput_OWN_INCLUDE_DIRS
                        Qt6::3DInput INTERFACE_INCLUDE_DIRECTORIES)
    if(NOT _Qt63DInput_OWN_INCLUDE_DIRS)
        set(_Qt63DInput_OWN_INCLUDE_DIRS "")
    endif()

    if(TARGET Qt6::3DInputPrivate)
        get_target_property(_Qt63DInput_OWN_PRIVATE_INCLUDE_DIRS
                            Qt6::3DInputPrivate INTERFACE_INCLUDE_DIRECTORIES)
        if(NOT _Qt63DInput_OWN_PRIVATE_INCLUDE_DIRS)
            set(_Qt63DInput_OWN_PRIVATE_INCLUDE_DIRS "")
        endif()
    endif()

    get_target_property(Qt63DInput_DEFINITIONS
                        Qt6::3DInput INTERFACE_COMPILE_DEFINITIONS)
    if(NOT Qt63DInput_DEFINITIONS)
        set(Qt63DInput_DEFINITIONS "")
    else()
        set(updated_defs "")
        foreach(def IN LISTS  Qt63DInput_DEFINITIONS)
             if(def MATCHES "^[A-Za-z_]")
                 list(APPEND updated_defs "-D${def}")
             else()
                 list(APPEND updated_defs "${def}")
             endif()
        endforeach()
        set(Qt63DInput_DEFINITIONS "${updated_defs}")
        unset(updated_defs)
    endif()

    get_target_property(Qt63DInput_COMPILE_DEFINITIONS
                        Qt6::3DInput INTERFACE_COMPILE_DEFINITIONS)
    if(NOT Qt63DInput_COMPILE_DEFINITIONS)
        set(Qt63DInput_COMPILE_DEFINITIONS "")
    endif()

    set(Qt63DInput_INCLUDE_DIRS
        ${_Qt63DInput_OWN_INCLUDE_DIRS})

    set(Qt63DInput_PRIVATE_INCLUDE_DIRS
        ${_Qt63DInput_OWN_PRIVATE_INCLUDE_DIRS})

    foreach(_module_dep ${_Qt63DInput_MODULE_DEPENDENCIES})
        if(_module_dep MATCHES ".+Private$")
            set(_private_suffix "Private")
        else()
            set(_private_suffix "")
        endif()
        list(APPEND Qt63DInput${_private_suffix}_INCLUDE_DIRS
             ${Qt6${_module_dep}_INCLUDE_DIRS})
        list(APPEND Qt63DInput${_private_suffix}_PRIVATE_INCLUDE_DIRS
             ${Qt6${_module_dep}_PRIVATE_INCLUDE_DIRS})
        if(_private_suffix)
            list(APPEND Qt63DInput_PRIVATE_INCLUDE_DIRS
                ${Qt6${_module_dep}_PRIVATE_INCLUDE_DIRS})
        endif()
        list(APPEND Qt63DInput${_private_suffix}_DEFINITIONS
             ${Qt6${_module_dep}_DEFINITIONS})
        list(APPEND Qt63DInput${_private_suffix}_COMPILE_DEFINITIONS
             ${Qt6${_module_dep}_COMPILE_DEFINITIONS})
    endforeach()
    unset(_private_suffix)

    list(REMOVE_DUPLICATES Qt63DInput_INCLUDE_DIRS)
    list(REMOVE_DUPLICATES Qt63DInput_PRIVATE_INCLUDE_DIRS)
    list(REMOVE_DUPLICATES Qt63DInput_DEFINITIONS)
    list(REMOVE_DUPLICATES Qt63DInput_COMPILE_DEFINITIONS)
endif()

if (TARGET Qt6::3DInput)
    qt_make_features_available(Qt6::3DInput)

    foreach(extra_cmake_include )
        include("${CMAKE_CURRENT_LIST_DIR}/${extra_cmake_include}")
    endforeach()

    if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt63DInputPlugins.cmake")
        include("${CMAKE_CURRENT_LIST_DIR}/Qt63DInputPlugins.cmake")
    endif()

    list(APPEND QT_ALL_MODULES_FOUND_VIA_FIND_PACKAGE "3DInput")

    get_target_property(_qt_module_target_type "Qt6::3DInput" TYPE)
    if(NOT _qt_module_target_type STREQUAL "INTERFACE_LIBRARY")
        get_target_property(_qt_module_plugin_types
                            Qt6::3DInput MODULE_PLUGIN_TYPES)
        if(_qt_module_plugin_types)
            list(APPEND QT_ALL_PLUGIN_TYPES_FOUND_VIA_FIND_PACKAGE "${_qt_module_plugin_types}")
        endif()
    endif()


    # Load Module's BuildInternals should any exist
    if (Qt6BuildInternals_DIR AND
        EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt63DInputBuildInternals.cmake")
        include("${CMAKE_CURRENT_LIST_DIR}/Qt63DInputBuildInternals.cmake")
    endif()

    if(NOT QT_NO_CREATE_VERSIONLESS_TARGETS)
        if(CMAKE_VERSION VERSION_LESS 3.18 OR QT_USE_OLD_VERSION_LESS_TARGETS)
            include("${CMAKE_CURRENT_LIST_DIR}/Qt63DInputVersionlessTargets.cmake")
        else()
            include("${CMAKE_CURRENT_LIST_DIR}/Qt63DInputVersionlessAliasTargets.cmake")
        endif()
    endif()
else()

    set(Qt63DInput_FOUND FALSE)
    if(NOT DEFINED Qt63DInput_NOT_FOUND_MESSAGE)
        set(Qt63DInput_NOT_FOUND_MESSAGE
            "Target \"Qt6::3DInput\" was not found.")

        if(QT_NO_CREATE_TARGETS)
            string(APPEND Qt63DInput_NOT_FOUND_MESSAGE
                "Possibly due to QT_NO_CREATE_TARGETS being set to TRUE and thus "
                "${CMAKE_CURRENT_LIST_DIR}/Qt63DInputTargets.cmake was not "
                "included to define the target.")
        endif()
    endif()
endif()
