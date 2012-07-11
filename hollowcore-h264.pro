TARGET = hollowcoreh264

# Qt isn't needed for this project
QT -= core
QT -= gui

TEMPLATE = lib

INCLUDEPATH += include
INCLUDEPATH += include/avc_h264
INCLUDEPATH += include/oscl

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

HEADERS += \
    avc_h264/dec/src/avcdec_lib.h \
    avc_h264/dec/src/avcdec_int.h \
    avc_h264/dec/src/avcdec_bitstream.h \
    avc_h264/common/include/avclib_common.h \
    avc_h264/common/include/avcint_common.h \
    include/avc_h264/avcdec_api.h \
    include/avc_h264/avcapi_common.h \
    include/oscl/oscl_types.h \
    include/oscl/osclconfig_check.h \
    include/oscl/osclconfig.h \
    include/oscl/oscl_base_macros.h \
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
    oscl/config/shared/osclconfig_global_new_delete.h \
    include/oscl/osclconfig_unix_common.h \
    include/oscl/osclconfig_limits_typedefs.h \
    include/oscl/osclconfig_ix86.h

OTHER_FILES += \
    README.md
