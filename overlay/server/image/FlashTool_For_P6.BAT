echo off
title 华为P6百度云ROM一键刷机
color 3f

set "adb=tools/adb.exe"
set "fastboot=tools/fastboot.exe"

:STARTS
cls

echo. ==========================================================================
echo.
echo. 注意：
echo.        1.请使用USB线连接手机和电脑，并打开手机的USB调试模式；
echo.        2.请备份好当前用户数据。
echo.
echo.        请按任意键开始刷机！
echo.
echo.
echo. ==========================================================================
pause

:FLASH
cls

%adb kill-server
%adb start-server
echo.
echo. --- 连接设备中...
echo. --- 如果卡在这一步，请确认是否已打开调试或者正确安装好手机驱动
%adb wait-for-device

echo.
echo. --- 连接设备成功，正在重启到刷机模式...
%adb reboot bootloader

echo.
echo. --- 正在刷入系统镜像，请勿进行其它操作！
%fastboot flash system system.img
%fastboot flash cust cust.img
%fastboot reboot

echo.
%adb wait-for-device
echo. --- 系统镜像刷入成功！

:WIPEDATA
echo.
echo. --- 正在清除用户数据...
%adb wait-for-device
%adb push tools/wipe-data-command /data/local/tmp/command
%adb shell copy-cache.sh
%adb wait-for-device
echo. --- 正在执行，请等待...
%adb reboot recovery

echo.
%adb wait-for-device
echo. --- 完成！
echo.

:EXIT
pause
exit
