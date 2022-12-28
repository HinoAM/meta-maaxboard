FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

KERNEL_DEF_CONFIG ??= "imx_v8_defconfig"
KERNEL_DEF_CONFIG_maaxboardnano = "maaxboard_nano_defconfig"
KERNEL_DEF_CONFIG_maaxboard = "maaxboard_defconfig"
KERNEL_DEF_CONFIG_maaxboardmini = "maaxboard_mini_defconfig"

SRC_URI_append = " file://maaxboard.dtsi;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-mini.dtsi;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-nano.dtsi;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-dcss-hdmi.dts;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-dcss-mipi.dts;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-dual-display.dts;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-lcdif-mipi.dts;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-usb0-device.dts;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-nano-mipi.dts;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-mini-mipi.dts;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-mini-device.dts;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-extended-gpio.dtsi;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-nano-extended-gpio.dtsi;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-mini-extended-gpio.dtsi;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard-dsi-common.dtsi;subdir=git/arch/arm64/boot/dts/freescale"
SRC_URI_append = " file://maaxboard_defconfig;subdir=git/arch/arm64/configs"
SRC_URI_append = " file://maaxboard_mini_defconfig;subdir=git/arch/arm64/configs"
SRC_URI_append = " file://maaxboard_nano_defconfig;subdir=git/arch/arm64/configs"


do_copy_defconfig_maaxboardbase () {
    install -d ${B}
    # copy latest imx_v8_defconfig to use for mx8
    mkdir -p ${B}
    cp ${S}/arch/arm64/configs/${KERNEL_DEF_CONFIG} ${B}/.config
    cp ${S}/arch/arm64/configs/${KERNEL_DEF_CONFIG} ${B}/../defconfig
}

# Auto load Wi-Fi(nxp8987) driver moal
# /etc/modprobe.d/moal.conf
KERNEL_MODULE_AUTOLOAD_maaxboardnano += "moal"
KERNEL_MODULE_PROBECONF_maaxboardnano += "moal"
module_conf_moal_maaxboardnano = "options moal mod_para=nxp/wifi_mod_para_sd8987.conf"
