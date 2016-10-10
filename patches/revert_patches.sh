cd ../../../../
rm -rf frameworks/av
rm -rf frameworks/base
rm -rf framework/opt/telephony
rm -rf hardware/libhardware
rm -rf hardware/libhardware_legacy
rm -rf packages/apps/Settings
rm -rf packages/services/telephony
rm -rf system/core
rm -rf system/netd

repo sync frameworks/av
repo sync frameworks/base
repo sync framework/opt/telephony
repo sync hardware/libhardware
repo sync hardware/libhardware_legacy
repo sync packages/apps/Settings
repo sync packages/services/telephony
repo sync system/core
repo sync system/netd

