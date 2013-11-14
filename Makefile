# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# Only for baidu, otherwise do not set USER
#-----------------------------------------------------------------------------
USER := baidu

##############################################################################
# This value defines the base source branch, only use for baidu server build.
# when open this outside, delete this config
# Support values: rom-mtk, baidu-4.0
#-----------------------------------------------------------------------------
BAIDU_BASE_BRANCH := rom-4.2

##############################################################################
# This value defines which overlay should be choose, only use for baidu internal.
# Support values: rom-mtk, baidu-4.0
# when your product is mtk, you can choose rom-mtk, otherwise set it to baidu-4.0
#-----------------------------------------------------------------------------
BAIDU_FRAMEWORK_OVERLAY_TYPE := rom-4.2

##############################################################################
# This value defines which base this project should choose, only for baidu internal.
# Support values: S710, JRD77SS, YINS, YIGN
#-----------------------------------------------------------------------------
BAIDU_BASE_DEVICE := I9250

##############################################################################
# This value define to trigger server to build timely and daily
# if you want to enable server build, set BAIDU_SERVER_BUILD := true
# ----------------------------------------------------------------------------
BAIDU_SERVER_BUILD_ENABLE := true

##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# android 4.0: 27
# android 4.1: 28
# htc t328t is special one
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# Default DENSITY setting is hdpi
# this depends on the device's resolution
#-----------------------------------------------------------------------------
DENSITY := xhdpi

##############################################################################
# This value will control the method of pack or unpack image and so on
# you can use mtk/qualcomm/ti/nvidia
#-----------------------------------------------------------------------------
PLATFORM := k3v2

##############################################################################
# you can custom boot image and recovery image name
#-----------------------------------------------------------------------------
# BOOT_IMG := bootname
# RECOVERY_IMG := recoveryname

##############################################################################
# use for newproject, not unpack boot.img to BOOT, or not unpack recovery.img to RECOVERY
# Support Values:
# false, not unpack
#-----------------------------------------------------------------------------
# PRJ_UNPACK_BOOT_IMG := false
# PRJ_UNPACK_RECOVERY_IMG := false

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# true, use prebuilt boot.img/recovery.img
# flase, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, none boot.img/recovery.img
#-----------------------------------------------------------------------------
PREBUILT_BOOT_IMG :=
PREBUILT_RECOVERY_IMG :=

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app media/audio/notifications media/Pre-loaded media/video themes asr tts/lang_iflytek vendor/pittpatt etc/facerecognition

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
#vendor_remove_files := bin/zchgd

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := Bluetooth HwBluetoothImport

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
vendor_modify_apps := HwFMRadio

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework services hwframework telephony-common

##############################################################################
# Files which you want to saved in baidu directory
#-----------------------------------------------------------------------------
baidu_saved_files := bin/bootanimation fonts/Clockopia.ttf

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
# baidu_remove_apps := BaiduUpdate

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
# baidu_modify_apps := BaiduImageSearch

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_jars := android.policy

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# property to show/hide feature of defaultWrite Settings
override_property += \
    ro.baidu.default_write.settable=true \
    ro.baidu.recovery.pixelformat=RGB_565 \
	ro.baidu.secure=0 \
	ro.baidu.debuggable=1 \
	ro.call.record=1 \

# properties from cust.img
override_property += \
    persist.sys.primarysd=0 \
    ro.com.google.clientidbase=android-huawei \
    ro.config.browser_def_hw_nav=true \
    ro.config.browser_hw_nav_switch=true \
    ro.config.callrecord.enabled=1 \
    ro.config.callwait_vibrator=true \
    ro.config.delay_send_signal=true \
    ro.config.ds_verbose_log_on=true \
    ro.config.hide_sipcall=true \
    ro.config.hspap_hsdpa_open=1 \
    ro.config.hw_browser_operator=3 \
    ro.config.hw_ecclist_nocard=+120,+122 \
    ro.config.hw_ecclist_withcard=+112 \
    ro.config.hw_fake_ecc_list=110,120,122,999,119 \
    ro.config.hw_fastdormancy=false \
    ro.config.hwft_MatchNum=11 \
    ro.config.hw_globalEcc=false \
    ro.config.hw_glovemode_enabled=1 \
    ro.config.hw_opta=17 \
    ro.config.hw_optb=156 \
    ro.config.hw_voicerecord=true \
    ro.config.pre_apn_NotDel=true \
    ro.config.pre_apn_unable=true \
    ro.config.rebootAfterUnlockPUK=true \
    ro.config.updatelocation=true \
    ro.config.utkShowIcon=false \
    ro.huawei.cust.isChinaUnicom=true \
    ro.huawei.cust.isChinaUnicom=true \
    ro.modem.type=6260 \
    ro.product.cucc.rtsplive=true \
    ro.product.CustCVersion=C17 \
    ro.product.CustDVersion=D116SP01 \
    ro.product.hardwareversion=HD1UEDGEM \
    ro.product.model=HUAWEI P6-U06 \
    ro.product.only_2Gnetwork=true \
    ro.product.twotextlines=true \
    ro.unicom.catInfo=true \

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
remove_property += \
        ro.operator.optr \
        ro.operator.spec \
        ro.operator.seg


##############################################################################
# if NOT_CUSTOM_FRAMEWORK-RES is true, when build framework-res, the custom_app.sh will not be called!
# becarefull if you want to config this
# add this config just because sometimes apktool may failed to build framework-res after call custom_app.sh
#-----------------------------------------------------------------------------
NOT_CUSTOM_FRAMEWORK-RES := true

USE_FIVE_PARAM_FORMAT := true

include $(PORT_BUILD)/main.mk
