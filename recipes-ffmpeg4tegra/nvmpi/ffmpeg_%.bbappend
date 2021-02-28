SRC_URI_append = "https://github.com/jocover/jetson-ffmpeg/raw/master/ffmpeg_nvmpi.patch;name=nvmpipatch"
SRC_URI[nvmpipatch.sha256sum] = "db30e7929b877eefdec816a5573b0f1e74f1e3283a4e6ca3f415ab3fae43f8f5"

DEPENDS += "nvmpi"
do_configure[depends] += "nvmpi:do_populate_sysroot"

EXTRA_OECONF += "--enable-nvmpi"
PACKAGECONFIG += " x264 x265 libvorbis gpl"
