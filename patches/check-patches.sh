#!/bin/bash
cd ../../../..
cd frameworks/av
cd ../..
git apply -v --check ../../device/archos/persimmon/patches/frameworks_av/0001-Disable-usage-of-get_capture_position.patch
cd system/core
git apply -v --check ../../device/archos/persimmon/patches/system_core/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
git apply -v --check ../../device/archos/persimmon/patches/system_core/0002-Changes-for-more-level-log.patch
cd ../..
cd system/netd
git apply -v --check ../../device/archos/persimmon/patches/system_netd/0001-Enable-Tethering.patch
cd ../..
cd system/sepolicy
git apply -v --check ../../device/archos/persimmon/patches/system_sepolicy/0001-Revert-back-to-version-29.patch
cd ../../device/archos/persimmon/patches/
echo Patches Applied Successfully!
