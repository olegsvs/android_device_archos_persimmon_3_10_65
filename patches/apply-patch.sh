#!/bin/bash
cd ../../../..
cd frameworks/av
git apply -v ../../device/archos/50_cobalt/patches/framework_av/0001-Patch-for-6735-mtk.patch
git apply -v ../../device/archos/50_cobalt/patches/framework_av/0002-camera.patch
git apply -v ../../device/archos/50_cobalt/patches/framework_av/frameworks_av_videorecording_fix.patch
cd ../..
cd frameworks/base
git apply -v ../../device/archos/50_cobalt/patches/framework_base/0001-Patch-for-6735-mtk.patch
cd ../..
cd packages/apps/Settings/
git apply -v ../../../device/archos/50_cobalt/patches/packages_apps_Settings/0001-Patch-for-6735-mtk.patch
cd ../../..
cd frameworks/opt/telephony
git apply -v ../../../device/archos/50_cobalt/patches/framework_opt_telephony/0001-Patch-for-6735-mtk.patch
cd ../../..
cd hardware/libhardware
git apply -v ../../device/archos/50_cobalt/patches/hardware_libhardware/0001-Patch-for-6735-mtk.patch
cd ../..
cd hardware/libhardware_legacy
git apply -v ../../device/archos/50_cobalt/patches/hardware_libhardware_legacy/0001-Patch-for-6735-mtk.patch
cd ../..
cd packages/services/Telephony
git apply -v ../../../device/archos/50_cobalt/patches/packages_services_telephony/0001-Patch-for-6735-mtk.patch
cd ../../..
cd system/core
git apply -v ../../device/archos/50_cobalt/patches/system_core/0001-mt6735.patch
cd ../..
cd system/netd
git apply -v ../../device/archos/50_cobalt/patches/system_netd/0001-Patch-for-6735-mtk.patch
cd ../..
echo Patches Applied Successfully!
