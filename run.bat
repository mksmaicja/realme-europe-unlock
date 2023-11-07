@echo off

set dir=/data/local/tmp
set adb=adb -d

%adb% version
echo:
echo Device info:
%adb% shell "echo ro.build.product = $(getprop ro.build.product)"
%adb% shell "echo ro.product.name = $(getprop ro.product.name)"
%adb% shell "echo ro.build.oplus_nv_id = $(getprop ro.build.oplus_nv_id)"
%adb% shell "echo ro.build.display.full_id = $(getprop ro.build.display.full_id)"
%adb% shell "echo ro.build.fingerprint = $(getprop ro.build.fingerprint)"
echo:

%adb% shell rm -rf %dir%/dirtypipe-android %dir%/env-patcher %dir%/startup-root %dir%/magisk
%adb% push dirtypipe-android env-patcher startup-root magisk/ %dir%
%adb% shell chmod 755 %dir%/dirtypipe-android %dir%/env-patcher %dir%/startup-root %dir%/magisk/busybox %dir%/magisk/magiskinit %dir%/magisk/magisk
echo:
%adb% shell %dir%/dirtypipe-android -f /vendor/lib/libcamxifestriping.so
echo:

echo Waiting 30 seconds before checking if it worked...
timeout /t 30 /nobreak
%adb% shell "echo ro.product.name = $(getprop ro.product.name)"

pause
