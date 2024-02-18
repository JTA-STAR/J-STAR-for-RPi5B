#!/bin/bash
# Add_BPiM2_HDMI_Chrome_AutoStart
# sudo curl https://www.bi7jta.cn/files/AndyTaylorTweet/updateScripts/Patch_Change_CSS_to_PinkColor.sh | sudo sh

if [ "$(id -u)" != "0" ]; then
  echo -e "You need to be root to run this command...\n"
  exit 1
fi

# Remount root as writable
sudo mount -o remount,rw / 

rm pistar-css-Color_pink.ini
curl -OL https://www.bi7jta.cn/files/AndyTaylorTweet/updateScripts/pistar-css-Color_pink.ini; 

if [ ! -s pistar-css-Color_pink.ini ]; then
  echo "CSS文件下载失败，大小为零"
  exit 1
else
  echo "文件大小不为零"
  cp pistar-css-Color_pink.ini /etc/pistar-css.ini
fi

echo "完成，刷新生效！Done, Refresh to use " 