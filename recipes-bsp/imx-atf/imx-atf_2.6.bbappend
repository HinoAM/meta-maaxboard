FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
        file://imx8mm_mn_RDC_configuration_UART4_to_domain_0_A53.diff \
"

EXTRA_OEMAKE += 'IMX_BOOT_UART_BASE=0x30860000'
