#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::GrpcQuick" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::GrpcQuick APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::GrpcQuick PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/Qt6GrpcQuick.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "Qt6::Core;Qt6::Grpc;Qt6::Qml;Qt6::QmlNetwork"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/Qt6GrpcQuick.dll"
  )

list(APPEND _cmake_import_check_targets Qt6::GrpcQuick )
list(APPEND _cmake_import_check_files_for_Qt6::GrpcQuick "${_IMPORT_PREFIX}/lib/Qt6GrpcQuick.lib" "${_IMPORT_PREFIX}/bin/Qt6GrpcQuick.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
