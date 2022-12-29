FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
        file://imx8mm_mn_RDC_configuration_UART4_to_domain_0_A53.diff \
"

do_configure_append(){
    sed -i 's/IMX_BOOT_UART_BASE		U(0x30890000)/IMX_BOOT_UART_BASE		U(0x30860000)/g' ${S}/plat/imx/imx8m/imx8mm/include/platform_def.h
}
