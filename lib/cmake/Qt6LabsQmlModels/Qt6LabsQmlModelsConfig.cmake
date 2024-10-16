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
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsDependencies.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsDependencies.cmake")
    _qt_internal_suggest_dependency_debugging(LabsQmlModels
        __qt_LabsQmlModels_pkg ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE)
endif()

# If *ConfigDependencies.cmake exists, the variable value will be defined there.
# Don't override it in that case.
if(NOT DEFINED "Qt6LabsQmlModels_FOUND")
    set("Qt6LabsQmlModels_FOUND" TRUE)
endif()

if (NOT QT_NO_CREATE_TARGETS AND Qt6LabsQmlModels_FOUND)
    include("${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsTargets.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsAdditionalTargetInfo.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsExtraProperties.cmake"
        OPTIONAL)

    # DEPRECATED
    # Provide old style variables for includes, compile definitions, etc.
    # These variables are deprecated and only provided on a best-effort basis to facilitate porting.
    # Consider using target_link_libraries(app PRIVATE Qt6LabsQmlModels) instead.
    set(Qt6LabsQmlModels_LIBRARIES "Qt6::LabsQmlModels")

    get_target_property(_Qt6LabsQmlModels_OWN_INCLUDE_DIRS
                        Qt6::LabsQmlModels INTERFACE_INCLUDE_DIRECTORIES)
    if(NOT _Qt6LabsQmlModels_OWN_INCLUDE_DIRS)
        set(_Qt6LabsQmlModels_OWN_INCLUDE_DIRS "")
    endif()

    if(TARGET Qt6::LabsQmlModelsPrivate)
        get_target_property(_Qt6LabsQmlModels_OWN_PRIVATE_INCLUDE_DIRS
                            Qt6::LabsQmlModelsPrivate INTERFACE_INCLUDE_DIRECTORIES)
        if(NOT _Qt6LabsQmlModels_OWN_PRIVATE_INCLUDE_DIRS)
            set(_Qt6LabsQmlModels_OWN_PRIVATE_INCLUDE_DIRS "")
        endif()
    endif()

    get_target_property(Qt6LabsQmlModels_DEFINITIONS
                        Qt6::LabsQmlModels INTERFACE_COMPILE_DEFINITIONS)
    if(NOT Qt6LabsQmlModels_DEFINITIONS)
        set(Qt6LabsQmlModels_DEFINITIONS "")
    else()
        set(updated_defs "")
        foreach(def IN LISTS  Qt6LabsQmlModels_DEFINITIONS)
             if(def MATCHES "^[A-Za-z_]")
                 list(APPEND updated_defs "-D${def}")
             else()
                 list(APPEND updated_defs "${def}")
             endif()
        endforeach()
        set(Qt6LabsQmlModels_DEFINITIONS "${updated_defs}")
        unset(updated_defs)
    endif()

    get_target_property(Qt6LabsQmlModels_COMPILE_DEFINITIONS
                        Qt6::LabsQmlModels INTERFACE_COMPILE_DEFINITIONS)
    if(NOT Qt6LabsQmlModels_COMPILE_DEFINITIONS)
        set(Qt6LabsQmlModels_COMPILE_DEFINITIONS "")
    endif()

    set(Qt6LabsQmlModels_INCLUDE_DIRS
        ${_Qt6LabsQmlModels_OWN_INCLUDE_DIRS})

    set(Qt6LabsQmlModels_PRIVATE_INCLUDE_DIRS
        ${_Qt6LabsQmlModels_OWN_PRIVATE_INCLUDE_DIRS})

    foreach(_module_dep ${_Qt6LabsQmlModels_MODULE_DEPENDENCIES})
        if(_module_dep MATCHES ".+Private$")
            set(_private_suffix "Private")
        else()
            set(_private_suffix "")
        endif()
        list(APPEND Qt6LabsQmlModels${_private_suffix}_INCLUDE_DIRS
             ${Qt6${_module_dep}_INCLUDE_DIRS})
        list(APPEND Qt6LabsQmlModels${_private_suffix}_PRIVATE_INCLUDE_DIRS
             ${Qt6${_module_dep}_PRIVATE_INCLUDE_DIRS})
        if(_private_suffix)
            list(APPEND Qt6LabsQmlModels_PRIVATE_INCLUDE_DIRS
                ${Qt6${_module_dep}_PRIVATE_INCLUDE_DIRS})
        endif()
        list(APPEND Qt6LabsQmlModels${_private_suffix}_DEFINITIONS
             ${Qt6${_module_dep}_DEFINITIONS})
        list(APPEND Qt6LabsQmlModels${_private_suffix}_COMPILE_DEFINITIONS
             ${Qt6${_module_dep}_COMPILE_DEFINITIONS})
    endforeach()
    unset(_private_suffix)

    list(REMOVE_DUPLICATES Qt6LabsQmlModels_INCLUDE_DIRS)
    list(REMOVE_DUPLICATES Qt6LabsQmlModels_PRIVATE_INCLUDE_DIRS)
    list(REMOVE_DUPLICATES Qt6LabsQmlModels_DEFINITIONS)
    list(REMOVE_DUPLICATES Qt6LabsQmlModels_COMPILE_DEFINITIONS)
endif()

if (TARGET Qt6::LabsQmlModels)
    qt_make_features_available(Qt6::LabsQmlModels)

    foreach(extra_cmake_include )
        include("${CMAKE_CURRENT_LIST_DIR}/${extra_cmake_include}")
    endforeach()

    if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsPlugins.cmake")
        include("${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsPlugins.cmake")
    endif()

    list(APPEND QT_ALL_MODULES_FOUND_VIA_FIND_PACKAGE "LabsQmlModels")

    get_target_property(_qt_module_target_type "Qt6::LabsQmlModels" TYPE)
    if(NOT _qt_module_target_type STREQUAL "INTERFACE_LIBRARY")
        get_target_property(_qt_module_plugin_types
                            Qt6::LabsQmlModels MODULE_PLUGIN_TYPES)
        if(_qt_module_plugin_types)
            list(APPEND QT_ALL_PLUGIN_TYPES_FOUND_VIA_FIND_PACKAGE "${_qt_module_plugin_types}")
        endif()
    endif()


    # Load Module's BuildInternals should any exist
    if (Qt6BuildInternals_DIR AND
        EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsBuildInternals.cmake")
        include("${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsBuildInternals.cmake")
    endif()

    if(NOT QT_NO_CREATE_VERSIONLESS_TARGETS)
        if(CMAKE_VERSION VERSION_LESS 3.18 OR QT_USE_OLD_VERSION_LESS_TARGETS)
            include("${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsVersionlessTargets.cmake")
        else()
            include("${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsVersionlessAliasTargets.cmake")
        endif()
    endif()
else()

    set(Qt6LabsQmlModels_FOUND FALSE)
    if(NOT DEFINED Qt6LabsQmlModels_NOT_FOUND_MESSAGE)
        set(Qt6LabsQmlModels_NOT_FOUND_MESSAGE
            "Target \"Qt6::LabsQmlModels\" was not found.")

        if(QT_NO_CREATE_TARGETS)
            string(APPEND Qt6LabsQmlModels_NOT_FOUND_MESSAGE
                "Possibly due to QT_NO_CREATE_TARGETS being set to TRUE and thus "
                "${CMAKE_CURRENT_LIST_DIR}/Qt6LabsQmlModelsTargets.cmake was not "
                "included to define the target.")
        endif()
    endif()
endif()