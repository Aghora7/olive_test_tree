# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from olive device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := olivewood
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := aosp_olivewood
PRODUCT_MODEL := Redmi 8A Dual

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := olivewood
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.0.1.0.QCNINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/olive/olive:10/QKQ1.191014.001/V12.0.1.0.QCNINXM:user/release-keys

TARGET_GAPPS_ARCH := arm64
