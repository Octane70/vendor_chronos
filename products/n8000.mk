# Specify phone tech before including full_phone
$(call inherit-product, vendor/chronos/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := n8000

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1200

# Inherit some common CM stuff.
$(call inherit-product, vendor/chronos/configs/common.mk)
$(call inherit-product, vendor/chronos/configs/common_versions.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/n8000/full_n8000.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n8000
PRODUCT_NAME := chronos_n8000
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N8000
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N8000 TARGET_DEVICE=GT-N8000 BUILD_FINGERPRINT="samsung/p4noterfxx/p4noterf:4.0.4/IMM76D/N8000XWALG9:user/release-keys" PRIVATE_BUILD_DESC="p4noterfxx-user 4.0.4 IMM76D N8000XWALG9 release-keys"
