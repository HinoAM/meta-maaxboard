FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
        file://imx8mm_mn_RDC_configuration_UART4_to_domain_0_A53.diff \
"

do_configure:append(){
    sed -i 's/IMX_BOOT_UART_BASE	?=	0x30890000/IMX_BOOT_UART_BASE	?=	0x30860000/g' ${S}/plat/imx/imx8m/imx8mm/platform.mk
}
