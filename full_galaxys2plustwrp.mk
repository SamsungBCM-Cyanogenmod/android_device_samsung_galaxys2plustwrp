# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/galaxys2plustwrp/galaxys2plustwrp.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxys2plustwrp
PRODUCT_NAME := full_galaxys2plustwrp
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9105P
PRODUCT_MANUFACTURER := samsung
