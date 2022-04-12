#!/bin/bash -xve
#written by S.Ito

exec 2> /tmp/setup.log		#シェルスクリプトでログを記録

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko		#rtmouse.koがデバイスドライバ本体

sleep 1				#すぐにはデバイスファイルができないので待つ
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0	#安全のためにモーター電源オフ
