TARGET = hollowcore-h264

# Qt isn't needed for this project
QT -= core
QT -= gui



TEMPLATE = lib

# Exported header files
INCLUDEPATH += include

# Paths to internal header files
INCLUDEPATH += avc_h264/common/include
INCLUDEPATH += avc_h264/dec/include
INCLUDEPATH += oscl/osclbase/src
INCLUDEPATH += oscl/config/linux
INCLUDEPATH += oscl/config/shared

SOURCES += \
    avc_h264/dec/src/vlc.cpp \
    avc_h264/dec/src/slice.cpp \
    avc_h264/dec/src/residual.cpp \
    avc_h264/dec/src/pred_intra.cpp \
    avc_h264/dec/src/pred_inter.cpp \
    avc_h264/dec/src/itrans.cpp \
    avc_h264/dec/src/header.cpp \
    avc_h264/dec/src/avcdec_api.cpp \
    avc_h264/dec/src/avc_bitstream.cpp \
    avc_h264/common/src/reflist.cpp \
    avc_h264/common/src/mb_access.cpp \
    avc_h264/common/src/fmo.cpp \
    avc_h264/common/src/dpb.cpp \
    avc_h264/common/src/deblock.cpp

COMMON_HEADERS += \
    include/hollowcore-h264/avcdec_api.h \
    include/hollowcore-h264/avcapi_common.h \
    include/hollowcore-h264/oscl_types.h \
    include/hollowcore-h264/osclconfig_check.h \
    include/hollowcore-h264/osclconfig.h \
    include/hollowcore-h264/oscl_base_macros.h \
    include/hollowcore-h264/osclconfig_unix_common.h \
    include/hollowcore-h264/osclconfig_limits_typedefs.h \
    include/hollowcore-h264/osclconfig_ix86.h

HEADERS += \
    $$COMMON_HEADERS \
    avc_h264/dec/src/avcdec_lib.h \
    avc_h264/dec/src/avcdec_int.h \
    avc_h264/dec/src/avcdec_bitstream.h \
    avc_h264/common/include/avclib_common.h \
    avc_h264/common/include/avcint_common.h \
    oscl/config/linux/osclconfig_util.h \
    oscl/config/linux/osclconfig_time.h \
    oscl/config/linux/osclconfig_proc.h \
    oscl/config/linux/osclconfig_lib.h \
    oscl/config/linux/osclconfig_io.h \
    oscl/config/shared/osclconfig_util_check.h \
    oscl/config/shared/osclconfig_time_check.h \
    oscl/config/shared/osclconfig_proc_unix_common.h \
    oscl/config/shared/osclconfig_proc_check.h \
    oscl/config/shared/osclconfig_no_os.h \
    oscl/config/shared/osclconfig_lib_check.h \
    oscl/config/shared/osclconfig_io_check.h \
    oscl/config/shared/osclconfig_global_placement_new.h \
    oscl/config/shared/osclconfig_global_new_delete.h

OTHER_FILES += \
    README.md

header_files.files = $$COMMON_HEADERS
header_files.path = /usr/include/hollowcore-h264

target.path = /usr/lib
INSTALLS += target header_files

CONFIG -= x86_64
QT_CONFIG -= x86_64
CONFIG += x86
