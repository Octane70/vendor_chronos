# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit IOKP common bits
$(call inherit-product, vendor/chronos/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/chronos/configs/gsm.mk)

# Mako Overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/mako

# Setup device specific product configuration
PRODUCT_NAME := chronos_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/mako:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.4.2 KOT49H 937116 release-keys"

PRODUCT_COPY_FILES += \
    vendor/chronos/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
