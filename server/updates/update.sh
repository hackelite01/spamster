cd $HOME/spamster/server/updates                                     
update(){                                                                                                             
if wget --spider https://raw.githubusercontent.com/hackelite01/spamster/master/update.v2.0 2>/dev/null; then
cs $HOME/spamster/server/updates
rm *.txt
echo "spmster" > update.txt
else
clear
echo
echo
echo
echo
echo
echo
echo
echo
echo -e "\e[92m          SPAMSTER UPDATED V2.0 \e[91mNO UPDATES AVAILABLE FOR NOW...!\e[92m\e[0m"
echo -e "\e[96m                ╔═══════════════════════════════════╗\e[0m"
echo -e "\e[96m                ║       \e[93mSPAMSTER\e[96m Uptodate\e[93m V2.0\e[96m         ║\e[0m"
echo -e "\e[96m                ║        No Updates \e[93mRolled Out\e[96m      ║\e[0m"
echo -e "\e[96m                ║                                   ║\e[0m"
echo -e "\e[96m                ╚═══════════════════════════════════╝\e[0m"
echo
echo
echo
echo
echo
sleep 5.0
cd $HOME/spamster
bash spamster.sh
fi
}
update
 
option(){
if [ -f "$HOME/spamster/server/updates/update.txt" ];then
$dbox
else
echo
fi
}
option
 
dbox(){
clear
echo
echo
echo
echo
echo
echo
echo
echo
echo -e "\e[92m                 SPAMSTER NEW UPDATE V2.1 IS AVAILABLE\e[0m"
echo -e "\e[96m                ╔═══════════════════════════════════╗\e[0m"
echo -e "\e[96m                ║  \e[93mSpamster\e[96m Update Is avaialbe\e[93m V2.1\e[96m    ║\e[0m"
echo -e "\e[96m                ║    To Update The \e[93mSpamster\e[96m Tool       ║\e[0m"
echo -e "\e[96m                ║                                   ║\e[0m"
echo -e "\e[96m                ║         Select \e[92my\e[96m to update\e[96m        ║\e[0m"
echo -e "\e[96m                ║                (\e[93mOR\e[96m)               \e[96m║\e[0m"
echo -e "\e[96m                ║        Select \e[91mt\e[96m to terminate\e[96m      ║\e[0m"
echo -e "\e[96m                ╚═══════════════════════════════════╝\e[0m"
echo
echo
echo
echo
echo
echo -en "\e[32mSELECT OPTION [\e[93my/\e[93mt\e[32m]\e[96m: \e[0m "
read updater
if [[ $updater = y ]];then
clear
sleep 0.5
cd $HOME
rm -rf spamster
echo
cd $HOME
sleep 1
echo -e "         \e[96mUPDATE IS GOING ON, PLEASE WAIT FOR A WHILE...!\e[0m"
echo
printf "                     \e[96m["
# While process is running...
while git clone https://github.com/hackelite01/spamster 2> /dev/null; do 
    printf  "\e[92m▓▓▓▓\e[0m"
    sleep 1
done
printf "\e[96m]\e[0m"
echo
echo
echo
printf "\e[96m                  UPDATE SUCCESSFULL (v1.3)..!\e[0m"
sleep 2.0
cd $HOME/spamster
bash setup
elif [ $updater = t ];then
clear
echo -e "                   \e[96mUPDATE TERMINATED......!\e[0m"
sleep 4.0
cd $HOME/spamster
bash spamster
else
clear
echo -e "                   \e[96mREBOOTING SPAMSTER......!\e[0m"
sleep 4.0
cd $HOME/spamster
bash spamster
echo
fi
}
dbox
