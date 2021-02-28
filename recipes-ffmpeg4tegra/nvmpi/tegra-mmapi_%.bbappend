do_install_append() {
    install -d ${D}/usr/src/jetson_multimedia_api/
    cp -r --preserve=mode,timestamps ${S}/samples ${D}/usr/src/jetson_multimedia_api
    cp -r --preserve=mode,timestamps ${S}/include ${D}/usr/src/jetson_multimedia_api
}
FILES_${PN} += "/usr/src/jetson_multimedia_api"

sysroot_stage_all_append() {
  install -d ${SYSROOT_DESTDIR}/usr/src/jetson_multimedia_api/
  cp -r ${D}/usr/src/jetson_multimedia_api/* ${SYSROOT_DESTDIR}/usr/src/jetson_multimedia_api
}
