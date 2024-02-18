#!/bin/bash
# Add_BPiM2_HDMI_Chrome_AutoStart
# sudo curl https://www.bi7jta.cn/files/AndyTaylorTweet/updateScripts/Patch_HDMI_Chrome_Change_LiveCaller.sh | sudo sh

# Remount root as writable
sudo mount -o remount,rw /

sudo touch /tmp/tmpUpdatePath.log; 
sudo chmod 777 /tmp/tmpUpdatePath.log; 

autostartConfig="";

#正确的if elseif
if [ -f /home/pi/.config/lxsession/LXDE-pi/autostart ]; then
   autostartConfig="/home/pi/.config/lxsession/LXDE-pi/autostart";
   echo "Find BPiM2 betty config file in ${autostartConfig}"
   	# 删除重复的项
	sudo sed -i "/@chromium-browser/d" ${autostartConfig} 
	# 重新添加
	sudo sed -i '$a@chromium-browser --noerrdialogs --start-fullscreen --incognito http://localhost/live' ${autostartConfig}
	cat ${autostartConfig}
fi
if [ -f "/home/pi-star/.config/lxsession/LXDE-pi/autostart" ]; then
   autostartConfig="/home/pi-star/.config/lxsession/LXDE-pi/autostart";
   echo "Find RPi4B Desktop config file in ${autostartConfig}"
   	# 删除重复的项
	sudo sed -i "/@chromium-browser/d" ${autostartConfig} 
	# 重新添加
	sudo sed -i '$a@chromium-browser --noerrdialogs --start-fullscreen --incognito http://localhost/live' ${autostartConfig}
	cat ${autostartConfig}
fi
if [ -f "/home/repeater/.config/lxsession/LXDE-pi/autostart" ]; then
   autostartConfig="/home/repeater/.config/lxsession/LXDE-pi/autostart";
   echo "Find J-STAR Desktop config file in ${autostartConfig}"
   	# 删除重复的项
	sudo sed -i "/@chromium-browser/d" ${autostartConfig} 
	# 重新添加
	sudo sed -i '$a@chromium-browser --noerrdialogs --start-fullscreen --incognito http://localhost/live' ${autostartConfig}
	cat ${autostartConfig}
fi
 
 
echo "完成，重启生效！Done, Reboot to use " 