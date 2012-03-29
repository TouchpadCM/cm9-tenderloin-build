

NOTE: At this time, no cherry-picks/etc. are needed. Everything is merged.


The apply-cherry_picks.sh script applies the needed tweaks to the
existing CM repos for building on tenderloin (HP Touchpad).
This script should be run after doing a 'reposync'. Also, it should
be run on a "clean" set of repos. To ensure that the repos are "clean",
the command 'repo status' should show one line:

```
nothing to commit (working directory clean)
```


NOTE:
-----
The following lines were previously required to be added to the
file .repo/local_manifest.xml:

```xml
  <project path="vendor/qcom/opensource/omx/mm-core" name="CyanogenMod/android_vendor_qcom_opensource_omx_mm-core" />
  <project path="vendor/qcom/opensource/omx/mm-video" name="CyanogenMod/android_vendor_qcom_opensource_omx_mm-video" />
```

If these exist in that file, they SHOULD BE REMOVED since they are now
included in manifest.xml. You should remove them before doing a reposync.

