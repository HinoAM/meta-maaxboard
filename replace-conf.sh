#
#!/bin/bash
#
# This is a help script to copiy teh conf files for maaxboards
#
# Created by Mitsuki Hino in Dec 2022
#


function usage() {
    echo "Usage:"
    echo ""
    echo "./replace-conf.sh   [build] [type-board]"
    echo ""
    echo "Build is the build directory created before "
    echo "Variants supported are maaxboard / maaxboard-mini / maaxboard-nano"
    echo "Exmaple: ./replace-conf.sh build-maaxboard   maaxboard-mini  #command to replace maaxboard conf file"
    echo ""
    echo "Variants supported for iMX PoC desktop are maaxboard-desktop / maaxboard-mini-desktop / maaxboard-nano-desktop"
    echo "Exmaple: ./replace-conf.sh build-maaxboard-desktop  maaxboard-desktop  #command to replace maaxboard conf file"
    echo ""
}

if [[ $# -lt 2 ]] ; then
  usage
  exit 1
fi

rm -rf "../../$1/conf/bblayers.conf"
rm -rf "../../$1/conf/local.conf"

case $2 in
"maaxboard" )
     cp "conf/bblayers.conf.sample" "../../$1/conf/bblayers.conf"
     printf "bblayers.conf for maaxboard copied ... [OK]\n"
     cp "conf/local.conf.sample" "../../$1/conf/local.conf"
     printf "local.conf for maaxboard copied ... [OK]\n"
     ;;
"maaxboard-mini" )
     cp "conf/bblayers.conf.sample" "../../$1/conf/bblayers.conf"
     printf "bblayers.conf for maaxboard mini copied ... [OK]\n"
     cp "conf/local.conf.sample.mini" "../../$1/conf/local.conf"
     printf "local.conf maaxboard mini copied ... [OK]\n"
     ;; 
"maaxboard-nano" )
     cp "conf/bblayers.conf.sample" "../../$1/conf/bblayers.conf"
     printf "bblayers.conf for maaxboard nano copied ... [OK]\n"
     cp "conf/local.conf.sample.nano" "../../$1/conf/local.conf"
     printf "local.conf maaxboard nano copied ... [OK]\n"
     ;;
"maaxboard-desktop" )
     cp "conf/bblayers.conf.desktop.sample" "../../$1/conf/bblayers.conf"
     printf "bblayers.conf for maaxboard-desktop copied ... [OK]\n"
     cp "conf/local.conf.desktop.sample" "../../$1/conf/local.conf"
     printf "local.conf for maaxboard desktop copied ... [OK]\n"
     ;;
"maaxboard-mini-desktop" )
     cp "conf/bblayers.conf.desktop.sample" "../../$1/conf/bblayers.conf"
     printf "bblayers.conf for maaxboard-mini-desktop copied ... [OK]\n"
     cp "conf/local.conf.desktop.sample.mini" "../../$1/conf/local.conf"
     printf "local.conf maaxboard desktop mini copied ... [OK]\n"
     ;; 
"maaxboard-nano-desktop" )
     cp "conf/bblayers.conf.desktop.sample" "../../$1/conf/bblayers.conf"
     printf "bblayers.conf for maaxboard-nano-desktop copied ... [OK]\n"
     cp "conf/local.conf.desktop.sample.nano" "../../$1/conf/local.conf"
     printf "local.conf maaxboard desktop nano copied ... [OK]\n"
     ;;     
 * )
     echo "error: arg[$2] do not support."
     usage
     exit 1     
     ;;
esac

printf "Done.\n"
exit 1
