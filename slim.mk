# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/slim/config/common.mk)

# Inherit led flash settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/geeb/device.mk)

# Inherit from common hardware-specific part of the product configuration
$(call inherit-product, device/lge/gee-common/gee-common.mk)

PRODUCT_NAME := slim_geeb
PRODUCT_DEVICE := geeb
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

# Kernel inline build
TARGET_KERNEL_CONFIG := geeb_defconfig
TARGET_VARIANT_CONFIG := geeb_defconfig
TARGET_SELINUX_CONFIG := geeb_defconfig

$(call inherit-product, vendor/lge/gee/gee-vendor.mk)
