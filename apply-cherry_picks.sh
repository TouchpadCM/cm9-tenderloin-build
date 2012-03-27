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


# Temporary branch for working QCOM OMX
echo ">>> START branch qcom-omx-merge"
pushd frameworks/base
git checkout github/qcom-omx-merge
popd
echo ">>> END branch qcom-omx-merge"
echo ""

# header changes for QCOM HAL update
echo ">>> START 14048/1"
pushd device/hp/tenderloin
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_device_hp_tenderloin refs/changes/48/14048/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 14048/1"
echo ""

# revert disabled libstagefrighthw
echo ">>> START revert 3cc23746ddecac49f0f0fcdc52c7d1714555041a"
pushd hardware/qcom/media
git revert --no-edit 3cc23746ddecac49f0f0fcdc52c7d1714555041a
popd
echo ">>> END revert 3cc23746ddecac49f0f0fcdc52c7d1714555041a"
echo ""

# add PRODUCT_PACKAGES for OMX
echo ">>> START 13629/1"
pushd device/hp/tenderloin
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_device_hp_tenderloin refs/changes/29/13629/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 13629/1"
echo ""

