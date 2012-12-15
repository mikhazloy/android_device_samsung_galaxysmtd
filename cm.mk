## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyS

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/galaxys_sc02b/full_galaxys_sc02b.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxys_sc02b
PRODUCT_NAME := cm_galaxys_sc02b
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-02B

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SC-02B TARGET_DEVICE=SC-02B BUILD_FINGERPRINT=samsung/SC-02B/SC-02B:2.3.6/GINGERBREAD/OMLC4:user/release-keys PRIVATE_BUILD_DESC="SC-02B-user 2.3.6 GINGERBREAD OMLC4 release-keys"
