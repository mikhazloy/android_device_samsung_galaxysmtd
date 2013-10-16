# Release name
PRODUCT_RELEASE_NAME := GalaxyS

# Add telephony product
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit some common OmniROM stuff.
$(call inherit-product, vendor/custom/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxysmtd
PRODUCT_NAME := custom_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"
