#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"

    sed -i '/com.android.settings.ManageApplicationsSettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml

fi
