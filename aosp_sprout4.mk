PRODUCT_NAME := aosp_sprout4
PRODUCT_DEVICE := sprout4
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on sprout4
PRODUCT_MANUFACTURER := google
PRODUCT_RESTRICT_VENDOR_FILES := false

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# common sprout
$(call inherit-product, device/google/sprout-common/sprout.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.sprout.rc:root/init.sprout.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.sprout:root/fstab.sprout
