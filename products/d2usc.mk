# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/samsung/d2usc/full_d2usc.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/chronos/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/chronos/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/d2-common

# Setup device specific product configuration.
PRODUCT_NAME := chronos_d2usc
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2usc
PRODUCT_MODEL := SCH-R530U
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2usc TARGET_DEVICE=d2usc BUILD_FINGERPRINT="samsung/d2usc/d2usc:4.1.2/JZO54K/R530UVXAMB1:user/release-keys" PRIVATE_BUILD_DESC="d2usc-user 4.1.2 JZO54K R530UVXAMB1 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
vendor/chronos/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
