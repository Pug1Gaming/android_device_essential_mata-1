# Inherit some common potato stuff.
$(call inherit-product, vendor/potato/config/common_full_phone.mk)


# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/essential/mata/mata-vendor.mk)

# Device
$(call inherit-product, device/essential/mata/device.mk)

TARGET_RECOVERY_FSTAB := device/essential/mata/rootdir/etc/fstab.mata

# Device identifiers
PRODUCT_DEVICE := mata
PRODUCT_NAME := potato_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_RELEASE_NAME := mata




PRODUCT_ACTIONABLE_COMPATIBLE_PROPERTY_DISABLE := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

PRODUCT_CHARACTERISTICS := nosdcard
