#!/data/data/com.termux/files/usr/bin/bash
echo
DIRECTORY="/data/data/com.termux/files/usr/share/figlet"
if [ ! -d "$DIRECTORY" ]; then
apt update && apt install figlet
fi
figlet -f mini ...UBUNTU XENIAL...
echo
figlet INSCREVA-SE
figlet Android Noobs
k='\033[0;31m'
echo
echo "${k}▄▄▄█████▓ ▄████▄   ██░ ██ ▓█████  ██▓     ▒█████  ";
echo "${k}▓  ██▒ ▓▒▒██▀ ▀█  ▓██░ ██▒▓█   ▀ ▓██▒    ▒██▒  ██▒";
echo "${k}▒ ▓██░ ▒░▒▓█    ▄ ▒██▀▀██░▒███   ▒██░    ▒██░  ██▒";
echo "${k}░ ▓██▓ ░ ▒▓▓▄ ▄██▒░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██   ██░";
echo "${k}  ▒██▒ ░ ▒ ▓███▀ ░░▓█▒░██▓░▒████▒░██████▒░ ████▓▒░";
echo "${k}  ▒ ░░   ░ ░▒ ▒  ░ ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▒░▒░ ";
echo "${k}    ░      ░  ▒    ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░  ░ ▒ ▒░ ";
echo "${k}  ░      ░         ░  ░░ ░   ░     ░ ░   ░ ░ ░ ▒  ";
echo "${k}         ░ ░       ░  ░  ░   ░  ░    ░  ░    ░ ░  ";
echo "${k}         ░                                        ";
echo
echo "####################################################"
echo "|..............INSCREVA-SE NO CANAL................|"
echo "|.................Android Noobs....................|"
echo "####################################################"
echo
echo " 		SE CASO HOUVER ALGUM ERRO NO PROOT, NÃO SE PREOCUPE!"
echo " 		DESINSTALE O PROOT E INSTALE NOVAMENTE, SE O ERRO "
echo " 		PERSISTIR REMOVA E REINSTALE O APP TERMUX E REPITA"
echo " 		O PROCESSO DE INSTALAÇÃO DO UBUNTU"
echo
echo "${k}..............╦ ╦╔╗ ╦ ╦╔╗╔╔╦╗╦ ╦................";
echo "${k}..............║ ║╠╩╗║ ║║║║ ║ ║ ║................";
echo "${k}..............╚═╝╚═╝╚═╝╝╚╝ ╩ ╚═╝................";
echo
echo ".........SELECIONE A ARQUITETURA DO SEU DISPOSITIVO........."
echo " ___________________________________________________________"
echo
echo " 1) arm64/armv8 (64 bit)"
echo " 2) arm/armhf/armv7 (32 bit)"
echo " 3) i386 (x86-64 bit)"
echo " 4) VERIFIQUE A ARQUITETURA DO SEU DISPOSITIVO, CASO NÃO SAIBA "
echo " ___________________________________________________________"
read aarch
case $aarch in
1)
echo
echo "...........INSTALANDO OS PREREQUISITOS................"
echo
apt install proot wget tar -y
echo
echo ".........INSTALAÇÃO SUCEDIDA COM SUCESSO............."
echo
echo "............INSTALANDO UBUNTU XENIAL................."
echo
wget https://partner-images.canonical.com/core/artful/current/ubuntu-artful-core-cloudimg-amd64-root.tar.gz
echo
proot --link2symlink tar -xf ubuntu-artful-core-cloudimg-amd64-root.tar.gz
cd Ubuntu_Termux && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r Ubuntu_Termux -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > ubuntu.sh
echo
chmod 777 ubuntu.sh && termux-fix-shebang ubuntu.sh
echo
echo " PARA INICIAR O UBUNTU (XENIAL) DIGITE O COMANDO: ./ubuntu.sh "
;;
2)
echo
echo "...........INSTALANDO OS PREREQUISITOS................"
echo
apt install proot wget tar -y
echo
echo ".........INSTALAÇÃO SUCEDIDA COM SUCESSO............."
echo
echo "............INSTALANDO UBUNTU XENIAL................."
echo
wget https://partner-images.canonical.com/core/artful/current/ubuntu-artful-core-cloudimg-armhf-root.tar.gz
echo
proot --link2symlink tar -xf ubuntu-artful-core-cloudimg-armhf-root.tar.gz
cd Ubuntu_Termux && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r Ubuntu_Termux -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > ubuntu.sh
echo
chmod 777 ubuntu.sh && termux-fix-shebang ubuntu.sh
echo 
echo " PARA INICIAR O UBUNTU (XENIAL) DIGITE O COMANDO: ./ubuntu.sh 	"
;;
3)
echo
echo "...........INSTALANDO OS PREREQUISITOS................"
echo
apt install proot wget tar -y
echo
echo ".........INSTALAÇÃO SUCEDIDA COM SUCESSO............."
echo
echo "............INSTALANDO UBUNTU XENIAL................."
echo
wget https://partner-images.canonical.com/core/artful/current/ubuntu-artful-core-cloudimg-i386-root.tar.gz
echo
proot --link2symlink tar -xf ubuntu-artful-core-cloudimg-i386-root.tar.gz
cd Ubuntu_Termux && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r Ubuntu_Termux -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > ubuntu.sh
echo
chmod 777 ubuntu.sh && termux-fix-shebang ubuntu.sh
echo 
echo " PARA INICIAR O UBUNTU (XENIAL) DIGITE O COMANDO: ./ubuntu.sh 	"
;;
4)
echo
echo ".........A ARQUITETURA DO SEU DISPOSITIVO É:................."
aarch=`dpkg --print-architecture`
if [ $aarch = "aarch64" ] ; then
echo
echo "...OPS, SEU DISPOSITIVO É aarch64 E NÃO SE TEM ESSA OPÇÃO :'(,"
echo "................TENTE EM OUTRO APARELHO OK :)"
else
echo
echo $aarch
fi
;;
esac
