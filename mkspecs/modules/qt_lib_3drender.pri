QT.3drender.VERSION = 6.8.0
QT.3drender.name = Qt3DRender
QT.3drender.module = Qt63DRender
QT.3drender.libs = $$QT_MODULE_LIB_BASE
QT.3drender.ldflags = 
QT.3drender.includes = $$QT_MODULE_INCLUDE_BASE $$QT_MODULE_INCLUDE_BASE/Qt3DRender
QT.3drender.frameworks = 
QT.3drender.bins = $$QT_MODULE_BIN_BASE
QT.3drender.plugin_types = sceneparsers geometryloaders renderplugins renderers
QT.3drender.depends =  3dcore core opengl
QT.3drender.run_depends = concurrent
QT.3drender.uses = 
QT.3drender.module_config = v2
QT.3drender.DEFINES = QT_3DRENDER_LIB
QT.3drender.enabled_features = qt3d-opengl-renderer qt3d-rhi-renderer qt3d-vulkan
QT.3drender.disabled_features = 
QT_CONFIG += qt3d-opengl-renderer qt3d-rhi-renderer qt3d-vulkan
QT_MODULES += 3drender

