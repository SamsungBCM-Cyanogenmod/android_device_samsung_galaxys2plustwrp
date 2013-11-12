LOCAL_PATH := device/samsung/galaxys2plustwrp

# Use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/init.capri_ss_s2vep.rc:root/init.capri_ss_s2vep.rc \
	$(LOCAL_PATH)/rootdir/ueventd.capri_ss_s2vep.rc:root/ueventd.capri_ss_s2vep.rc \
	$(LOCAL_PATH)/rootdir/init.bcm281x5.usb.rc:root/init.bcm281x5.usb.rc \
	$(LOCAL_PATH)/rootdir/init.log.rc:root/init.log.rc \
	$(LOCAL_PATH)/rootdir/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc
	
# common system.props for Galaxy S2 Plus
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=240 \
	ro.lcd_brightness=180 \
	ro.lcd_min_brightness=40 \
	persist.sys.usb.config=mtp,adb \
	ro.product.multi_touch_enabled=true \
	ro.product.max_num_touch=2 \
	ro.opengles.version=131072 \
	debug.hwui.render_dirty_regions=false \
	brcm.graphics.async_errors=true \
	ro.tvout.enable=true \
	hdmi.orientation.locked=false \
	persist.sys.hdmi.on=0 \
	persist.sys.videomode = 0 \
	persist.sys.hdmivideorotation =0 \
	brcm.hwc.no-hdmi-trans=1 \
	media.enable-commonsource=true \
	persist.brcm.gralloc.force_hdcp=1 \
	rild.libpath=/system/lib/libbrcm_ril.so \
	ro.ril.hsxpa=1 \
	ro.ril.gprsclass=10 \
	debug.composition.type=gpu \
	wifi.interface=wlan0 \
	mobiledata.interfaces=rmnet0 \
	ro.telephony.ril_class=SamsungBCMRIL

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_s2vep
PRODUCT_DEVICE := s2vep
