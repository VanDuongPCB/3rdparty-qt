# Additional target information for Qt6Bluetooth
if(NOT DEFINED QT_DEFAULT_IMPORT_CONFIGURATION)
    set(QT_DEFAULT_IMPORT_CONFIGURATION RELWITHDEBINFO)
endif()
__qt_internal_promote_target_to_global_checked(Qt6::Bluetooth)
get_target_property(_qt_imported_location Qt6::Bluetooth IMPORTED_LOCATION_RELWITHDEBINFO)
get_target_property(_qt_imported_implib Qt6::Bluetooth IMPORTED_IMPLIB_RELWITHDEBINFO)
get_target_property(_qt_imported_link_dependencies Qt6::Bluetooth IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO)
get_target_property(_qt_imported_location_default Qt6::Bluetooth IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_implib_default Qt6::Bluetooth IMPORTED_IMPLIB_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_link_dependencies_default Qt6::Bluetooth IMPORTED_LINK_DEPENDENT_LIBRARIES_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::Bluetooth" for configuration "Release"
set_property(TARGET Qt6::Bluetooth APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)

if(_qt_imported_location)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_LOCATION_RELEASE "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_IMPLIB_RELEASE "${_qt_imported_implib}")
endif()
if(_qt_imported_link_dependencies)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "${_qt_imported_link_dependencies}")
endif()

# Import target "Qt6::Bluetooth" for configuration "MinSizeRel"
set_property(TARGET Qt6::Bluetooth APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_IMPLIB_MINSIZEREL "${_qt_imported_implib}")
endif()
if(_qt_imported_link_dependencies)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "${_qt_imported_link_dependencies}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
if(_qt_imported_implib_default)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_IMPLIB "${_qt_imported_implib_default}")
endif()
if(_qt_imported_link_dependencies_default)
    set_property(TARGET Qt6::Bluetooth PROPERTY IMPORTED_LINK_DEPENDENT_LIBRARIES "${_qt_imported_link_dependencies_default}")
endif()
__qt_internal_promote_target_to_global_checked(Qt6::BluetoothPrivate)

unset(_qt_imported_location)
unset(_qt_imported_location_default)
unset(_qt_imported_soname)
unset(_qt_imported_soname_default)
unset(_qt_imported_link_dependencies)
unset(_qt_imported_link_dependencies_default)
unset(_qt_imported_objects)
unset(_qt_imported_objects_default)
unset(_qt_imported_clr)
unset(_qt_imported_clr_default)
unset(_qt_imported_configs)
