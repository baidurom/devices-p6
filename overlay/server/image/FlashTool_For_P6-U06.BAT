echo off
title 华为P6-U06(联通版)一键刷入Recovery   （百度云ROM）
color 3f

set "adb=tools\adb.exe"
set "fastboot=tools\fastboot.exe"
SET SLEEP=ping 127.0.0.1 -n

:STARTS
cls
echo. ==========================================================================
echo. 
echo. 温馨提示：
echo.       本工具供大家刷入百度Recovery和恢复华为原厂Recovery
echo.       刷入百度云ROM包之前，请先刷入百度Recovery
echo.       想要恢复华为原厂系统，请先恢复华为Recovery
echo. 
echo. --------------------------------------------------------------------------
echo. 
echo. 请选择操作：
echo.
echo.        1. 刷入百度Recovery
echo.        2. 恢复华为Recovery(B120版本)
echo.
echo. ==========================================================================

:CHOOSE
set /p choice= "*请选择你要进行的操作（输入数字，回车）":
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto FLASH_BAIDU
if /i "%choice%"=="2" goto FLASH_VENDOR
echo 选择无效，请重新输入
goto CHOOSE

:FLASH_BAIDU
cls
echo. ==========================================================================
echo.
echo. 声明：
echo.        为保证手机系统运行稳定，请确认手机原厂系统版本是B120版本
echo.        如果手机原厂系统版本不是B120，请先更新到B120后再刷入百度云ROM
echo.        如果手机原厂系统版本是高版本用户，
echo.        请先使用本工具恢复华为Recovery(B120版本)后，再强刷华为B120版本系统
echo.        如有疑问，请访问百度云ROM论坛 P6(联通版)版块
echo.
echo. 注意：
echo.        请使用USB线连接手机和电脑，并打开手机的USB调试模式；
echo.        请备份好当前用户数据。
echo.        请提前在外置存储SD卡中放入最新的百度云ROM刷机包，
echo.        百度Recovery刷入完成后会直接重启到百度Recovery。
echo.
echo. --------------------------------------------------------------------------
echo.
echo.
echo.        请按任意键开始刷入百度Recovery！
echo.
echo.
echo. ==========================================================================
pause > NUL 2> NUL

cls
%adb% kill-server
%adb% start-server
echo.
echo. --- 连接设备中...
echo. --- 如果卡在这一步，请确认是否已打开调试或者正确安装好手机驱动
call :ADB_DEVICE

if %timeout% neq 0 goto :REBOOT_BOOTLOADER_1
echo.
echo. --- 连接手机超时！请重新检查手机状态后重试！
echo.
echo. --- 如果手机无法正常开机，请手动进入fastboot模式：
echo.
echo.     操作方法：连接数据线，长按电源键10秒关机，关机后，立即按住“音量减”，
echo.              手机重启会停在开机首屏界面（此时可以放开音量键）。
echo. 
echo. --- 手动操作完成后，请按键盘任意键继续...
pause > NUL 2> NUL
call :FASTBOOT_DEVICE

if %timeout% neq 0 goto :REBOOT_BOOTLOANDER_2
echo.
echo. --- 依旧无法连接手机！请严格按照步骤操作，请重试！
goto :EXIT

:REBOOT_BOOTLOADER_1

echo.
echo. --- 连接设备成功，正在重启到刷机模式...
%adb% reboot bootloader
%SLEEP% 6 > NUL

:REBOOT_BOOTLOANDER_2
echo.
echo. --- 正在刷入百度Recovery，请勿进行其它操作！
%fastboot% flash boot boot.img
%fastboot% flash recovery baidu-recovery.img
%fastboot% flash cust cust.img
%fastboot% reboot

echo.
echo. --- 百度Recovery刷入成功!
echo.
echo. --- 正在重启到百度Recovery...
echo.     
echo. --- 如果无法进入百度Recovery，可以手动操作：
echo.     操作方法：连接数据线，长按电源键10秒关机，关机后，立即按住“音量加”，
echo.              手机进入百度Recovery（此时可以放开音量键）。
echo.
%adb% wait-for-device
%adb% reboot recovery
call :ADB_DEVICE
echo. --- 已经进入百度Recovery！
echo.
echo. --- 请根据刷机步骤，刷入百度云ROM刷机包!
echo. --- 完成！

goto :EXIT

:FLASH_VENDOR
cls
echo. ==========================================================================
echo.
echo. 注意：
echo.        请确保手机是正常开机状态; 如果无法正常开机，请进入Recovery模式
echo.        
echo.        请使用USB线连接手机和电脑，并打开手机的USB调试模式；
echo.
echo. --------------------------------------------------------------------------
echo.
echo. 进入Recovery方法：
echo.        1、长按手机电源键10秒；关机后立即按住电源键+音量上键，进入Recovery模式；
echo.        2、手机连接数据线，长按手机电源键10秒；关机后立即按住音量上键，进入Recovery模式；
echo.
echo. --------------------------------------------------------------------------
echo.
echo.        请按任意键开始刷入恢复华为Recovery！
echo.
echo.
echo. ==========================================================================
pause > NUL 2> NUL

cls
%adb% kill-server
%adb% start-server
echo.
echo. --- 连接设备中...
echo. --- 如果卡在这一步，请确认是否已打开调试或者正确安装好手机驱动
call :ADB_DEVICE

if %timeout% neq 0 goto :REBOOT_BOOTLOADER_3
echo.
echo. --- 连接手机超时！请重新检查手机状态后重试！
echo.
echo. --- 如果手机无法正常开机，请手动进入fastboot模式：
echo.
echo.     操作方法：连接数据线，长按电源键10秒关机，关机后，立即按住“音量减”，
echo.              手机重启会停在开机首屏界面（此时可以放开音量键）。
echo. 
echo. --- 手动操作完成后，请按键盘任意键继续...
pause > NUL 2> NUL
call :FASTBOOT_DEVICE

if %timeout% neq 0 goto :REBOOT_BOOTLOADER_4
echo.
echo. --- 依旧无法连接手机！请严格按照步骤操作，请重试！
goto :EXIT

:REBOOT_BOOTLOADER_3
echo.
echo. --- 连接设备成功，正在重启到刷机模式...
%adb% reboot bootloader
%SLEEP% 6 > NUL

:REBOOT_BOOTLOADER_4
echo. 
echo. --- 正在恢复华为Recovery，请勿进行其它操作！
%fastboot% flash recovery huawei-recovery.img
%fastboot% reboot

echo.
%adb% wait-for-device
echo. --- 华为Recovery恢复成功！

:EXIT
echo.
echo. *** 请按任意键退出，或直接关闭!
echo.
pause > NUL 2> NUL
exit

:ADB_DEVICE
set timeout=6
:CHECK_DEVICE
set /a timeout-=1
if %timeout% equ 0 goto :ADB_DEVICE_RETURN
echo.       查找设备...  (剩余次数: %timeout%)
%SLEEP% 3 > NUL 
%adb% devices > tmp.log
for /f "delims=:" %%i in ('findstr /n . "tmp.log"') do set linenum=%%i
del tmp.log
if %linenum% leq 1 goto :CHECK_DEVICE
:ADB_DEVICE_RETURN
goto :EOF

:FASTBOOT_DEVICE
set timeout=6
:CHECK_FASTBOOT_DEVICE
set /a timeout-=1
if %timeout% equ 0 goto :FASTBOOT_DEVICE_RETURN
echo.       查找设备...  (剩余次数: %timeout%)
%SLEEP% 3 > NUL 
%fastboot% devices > tmp.log
for /f "delims=:" %%i in ('findstr /n . "tmp.log"') do set linenum=%%i
del tmp.log
if %linenum% lss 1 goto :CHECK_FASTBOOT_DEVICE
:FASTBOOT_DEVICE_RETURN
goto :EOF
