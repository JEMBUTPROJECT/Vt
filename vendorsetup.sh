# DT hals
rm -rf vendor/xiaomi/lavender;
rm -rf kernel/xiaomi/lavender;
git clone git@github.com:JEMBUTPROJECT/Vt.git vendor/xiaomi/lavender;
git clone -b WhyFu-EAS-QTI git@github.com:JEMBUTPROJECT/kernel_xiaomi_lavender_A13-4.4.git --depth=1 kernel/xiaomi/lavender

# replace HALs
rm -rf hardware/qcom-caf/msm8998/media;
rm -rf hardware/qcom-caf/msm8998/display;
rm -rf hardware/qcom-caf/msm8998/audio;
git clone -b arrow-13.0-caf-msm8998 https://github.com/ArrowOS/android_hardware_qcom_display hardware/qcom-caf/msm8998/display;
git clone -b arrow-13.0-caf-msm8998 https://github.com/ArrowOS/android_hardware_qcom_media hardware/qcom-caf/msm8998/media;
git clone -b arrow-13.0-caf-msm8998 https://github.com/ArrowOS/android_hardware_qcom_audio hardware/qcom-caf/msm8998/audio

## replace Vendor
#rm -rf vendor/risingOTA
#git clone -b thirteen git@github.com:JEMBUTPROJECT/android_vendor_RisingOTA.git
