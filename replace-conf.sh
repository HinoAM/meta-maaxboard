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
    echo "Exmaple: ./replace-conf.sh build-maaxboard    #command to replace maaxboard conf file"
    echo ""
}

if [[ $# -lt 2 ]] ; then
  usage
  exit 1
fi

rm -rf "../../$1/conf/bblayers.conf"
cp "conf/bblayers.conf.sample" "../../$1/conf/bblayers.conf"
printf "bblayers.conf maaxboards copied ... [OK]\n"

rm -rf "../../$1/conf/local.conf"

case $2 in
"maaxboard" )
     cp "conf/local.conf.sample" "../../$1/conf/local.conf"
     printf "local.conf for maaxboard copied ... [OK]\n"
     ;;
"maaxboard-mini" )
     cp "conf/local.conf.sample.mini" "../../$1/conf/local.conf"
     printf "local.conf maaxboard mini copied ... [OK]\n"
     ;; 
"maaxboard-nano" )
     cp "conf/local.conf.sample.nano" "../../$1/conf/local.conf"
     printf "local.conf maaxboard nano copied ... [OK]\n"
     ;;
 * )
     echo "error: arg[$2] do not support."
     usage
     exit 1     
     ;;
esac

printf "Done.\n"
exit 1



