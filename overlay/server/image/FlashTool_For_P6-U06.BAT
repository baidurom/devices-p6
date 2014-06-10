echo off
title 华为P6-U06(联通版)百度云ROM一键刷机
color 3f

set "adb=tools\adb.exe"
set "fastboot=tools\fastboot.exe"

:STARTS
cls

echo. ==========================================================================
echo.
echo. 声明：
echo.        为保证手机系统运行稳定，请确认手机原厂系统版本是B120版本
echo.        如果手机原厂系统版本不是B120，请先更新到B120后再刷入百度云ROM
echo.        如有疑问，请访问百度云ROM论坛 P6(联通版)版块
echo.
echo. 注意：
echo.        请使用USB线连接手机和电脑，并打开手机的USB调试模式；
echo.        请备份好当前用户数据。
echo.
echo. --------------------------------------------------------------------------
echo.
echo. 请选择刷机后是否清除手机数据：
echo.
echo.        1.清除数据（从原厂系统或其它ROM刷到百度云ROM，必须清除数据）
echo.        2.不清除数据
echo.
echo. ==========================================================================

:CHOOSE
set /p choice= "*请选择你要进行的操作（输入数字，回车）":
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto FORMAT_WARNING
if /i "%choice%"=="2" goto NOT_FORMAT
echo 选择无效，请重新输入
goto CHOOSE

:FORMAT_WARNING
cls
echo.
echo. --- 开始刷机，刷机后将清除手机数据
goto FLASH

:NOT_FORMAT
cls
echo.
echo. --- 开始刷机，刷机后不清除手机数据
goto FLASH

:FLASH
%adb% kill-server
%adb% start-server
echo.
echo. --- 连接设备中...
echo. --- 如果卡在这一步，请确认是否已打开调试或者正确安装好手机驱动
%adb% wait-for-device

echo.
echo. --- 连接设备成功，正在重启到刷机模式...
%adb% reboot bootloader

echo.
echo. --- 正在刷入系统镜像，请勿进行其它操作！
%fastboot% flash system system.img
%fastboot% flash cust cust.img
%fastboot% reboot

echo.
%adb% wait-for-device
echo. --- 系统镜像刷入成功！

if /i "%choice%"=="2" goto FINISH

:WIPEDATA
echo.
echo. --- 正在清除用户数据...
%adb% wait-for-device

:ADBREADY
echo waiting for adb status...
ping 127.0.0.1 -n 3 > nul
%adb% shell getprop persist.adb.ready > adb.stat
set /p adbstat=<adb.stat
if not %adbstat%x==1x goto :ADBREADY
del adb.stat

%adb% wait-for-device
echo. --- 正在执行，请等待...
%adb% shell recovery-wipe-data

:FINISH
echo.
%adb% wait-for-device
echo. --- 刷机完成！
echo.

:EXIT
pause > NUL 2> NUL
exit
