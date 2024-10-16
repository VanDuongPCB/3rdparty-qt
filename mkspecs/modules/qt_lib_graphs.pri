QT.graphs.VERSION = 6.8.0
QT.graphs.name = QtGraphs
QT.graphs.module = Qt6Graphs
QT.graphs.libs = $$QT_MODULE_LIB_BASE
QT.graphs.ldflags = 
QT.graphs.includes = $$QT_MODULE_INCLUDE_BASE $$QT_MODULE_INCLUDE_BASE/QtGraphs
QT.graphs.frameworks = 
QT.graphs.bins = $$QT_MODULE_BIN_BASE
QT.graphs.depends =  core gui quick quick3d
QT.graphs.run_depends = quickshapes_private quick3druntimerender_private qml
QT.graphs.uses = 
QT.graphs.module_config = v2
QT.graphs.DEFINES = QT_GRAPHS_LIB
QT.graphs.enabled_features = graphs-2d graphs-3d graphs-3d-bars3d graphs-3d-scatter3d graphs-3d-surface3d
QT.graphs.disabled_features = 
QT_CONFIG += graphs-2d graphs-3d graphs-3d-bars3d graphs-3d-scatter3d graphs-3d-surface3d
QT_MODULES += graphs

