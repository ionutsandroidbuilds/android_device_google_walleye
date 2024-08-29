# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/walleye/aosp_walleye.mk)

include device/google/wahoo/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_walleye
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := IonutGherman
MATRIXX_CHIPSET := Snapdragon 835
MATRIXX_BATTERY := 2700mah
MATRIXX_DISPLAY := 1080x1920

# Matrixx Flags
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1080
TARGET_IS_PIXEL := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:11/RP1A.201005.004.A1/6934943:user/release-keys

$(call inherit-product, vendor/google/walleye/walleye-vendor.mk)
