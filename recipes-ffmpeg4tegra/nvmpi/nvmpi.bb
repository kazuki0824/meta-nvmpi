#   LICENSE
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

DEPENDS = "pkgconfig-native tegra-libraries tegra-mmapi libv4l2-minimal"
RDEPENDS_${PN} = "tegra-libraries libv4l2-minimal"

SRC_URI += "git://github.com/jocover/jetson-ffmpeg.git;protocol=https"
SRC_URI += "file://nv.patch"

PV = "1.0+git${SRCPV}"
SRCREV = "7baa3d8232478b82799a90c37b86a986e4df1df2"

FILES_${PN} += "/usr/include/nvmpi.h \
                /usr/lib/libnvmpi.so.1.0.0 \
                /usr/lib/libnvmpi.so \
                /usr/lib/pkgconfig/nvmpi.pc"

S = "${WORKDIR}/git"

inherit cmake

EXTRA_OECMAKE = "-DBITBAKE_SYSROOT=${WORKDIR}/recipe-sysroot"

do_install_append () {
    rm -fr ${D}/usr/share
}