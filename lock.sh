#!/bin/bash
#variable warna
#export os,sys

me="\033[31;1m"
hi="\033[32;1m"
ku="\033[33;1m"
bi="\033[34;1m"
ung="\033[35;1m"
cy="\033[36;1m"
pu="\033[37;1m"

clear

logo(){
echo $cy "
          _ _ _ ____ _    _    ____ ____ _  _ ____    ___ ____ 
          | | | |___ |    |    |    |  | |\/| |___     |  |  | 
          |_|_| |___ |___ |___ |___ |__| |  | |___     |  |__| 
                                                            
              _  _ _   _    ___ ____ ____ _  _ _  _ _  _ 
              |\/|  \_/      |  |___ |__/ |\/| |  |  \/  
              |  |   |       |  |___ |  \ |  | |__| _/\_ 
                                                       

                    $me ""Code By KONPOI (Duocyberteam) ""
$hi "__________________________________________________________________________"
"""
}

login(){
logo
echo
echo $ku "                        Hai, Selamat Datang!            "
echo
echo
sleep 0.1
echo "                     Harap LOGIN terlebih dahulu.. "
echo
sleep 0.1
echo "        Untuk memasuki TERMUX.. Harap Masukan Password yang valid"
echo
echo
echo
sleep 0.1
echo
echo
echo -n "Masukan NAMA ANDA : "
read username
sleep 0.1
echo
read -p "Masukan PASSWORD :  " pass
sleep 0.1
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
}

ulang(){
ulang="s"
while [ $ulang = "s" ];
do
        sleep 0.02
done
}

fungsi(){
clear
login

if [ $pass = "buka1234" ]; 
then 
echo $hi "                             LOGIN SUKSES " 
sleep 2 
echo 
echo 
echo 
echo 
exit

else
echo
echo $cy "                  MAAF $username,PASSWORD YANG ANDA MASUKAN SALAH !           "
sleep 3
sleep 0.01
for i in ulang
do
      echo $fungsi
done
fungsi

fi
}

fungsi
