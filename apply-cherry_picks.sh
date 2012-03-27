#!/bin/sh

# hax for tenderloin (hardware/qcom/display)
echo ">>> START 12781/1"
pushd hardware/qcom/display
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_hardware_qcom_display refs/changes/81/12781/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 12781/1"
echo ""

# libcutils/android_reboot: tenderloin hax to use HPalm restart_reasons
echo ">>> START 12782/1"
pushd system/core
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_system_core refs/changes/82/12782/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 12782/1"
echo ""

