FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " file://maaxboard_defconfig;subdir=git/configs"
SRC_URI_append = " file://maaxboard_nano_defconfig;subdir=git/configs"
SRC_URI_append = " file://maaxboard_mini_defconfig;subdir=git/configs"
SRC_URI_append = " file://maaxboard.h;subdir=git/include/configs"
SRC_URI_append = " file://maaxboard_mini.h;subdir=git/include/configs"
SRC_URI_append = " file://maaxboard_nano.h;subdir=git/include/configs"
SRC_URI_append = " file://embest_env.h;subdir=git/include/configs"
SRC_URI_append = " file://imx8m;subdir=git/arch/arm/mach-imx"
SRC_URI_append = " file://maaxboard;subdir=git/board/embest"
SRC_URI_append = " file://maaxboard_mini;subdir=git/board/embest"
SRC_URI_append = " file://maaxboard_nano;subdir=git/board/freescale"
SRC_URI_append = " file://maaxboard.dts;subdir=git/arch/arm/dts"
SRC_URI_append = " file://maaxboard-mini.dts;subdir=git/arch/arm/dts"
SRC_URI_append = " file://maaxboard-nano-mipi.dts;subdir=git/arch/arm/dts"
SRC_URI_append = " file://maaxboard-nano.dtsi;subdir=git/arch/arm/dts"
SRC_URI_append = " file://maaxboard-nano-extended-gpio.dtsi;subdir=git/arch/arm/dts"

do_configure_append(){
    sed -i '2,1s/^/\ndtb-$(CONFIG_ARCH_IMX8M) += maaxboard.dtb\n /' ${S}/arch/arm/dts/Makefile
    sed -i '3,1s/^/\ndtb-$(CONFIG_ARCH_IMX8M) += maaxboard-mini.dtb\n /' ${S}/arch/arm/dts/Makefile
    sed -i '4,1s/^/\ndtb-$(CONFIG_ARCH_IMX8M) += maaxboard-nano-mipi.dtb\n /' ${S}/arch/arm/dts/Makefile
}