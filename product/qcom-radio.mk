# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.target=dpm1 \
    persist.radio.multisim.config=dsds \
    ro.config.always_show_roaming=true \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ril.ecclist=000,08,100,101,102,110,112,118,119,120,122,911,999 \
    ro.telephony.default_network=9,1 \
    persist.radio.jbims=1 \
    persist.radio.ROTATION_ENABLE=1 \
    persist.radio.VT_ENABLE=1 \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.radio.VT_USE_MDM_TIME=0 \
# NITZ
    persist.rild.nitz_plmn= \
    persist.rild.nitz_long_ons_0= \
    persist.rild.nitz_long_ons_1= \
    persist.rild.nitz_long_ons_2= \
    persist.rild.nitz_long_ons_3= \
    persist.rild.nitz_short_ons_0= \
    persist.rild.nitz_short_ons_1= \
    persist.rild.nitz_short_ons_2= \
    persist.rild.nitz_short_ons_3= \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    rild.libargs=-d /dev/smd0 \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.apn_delay=5000 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.dfr_mode_set=1 \
    persist.radio.no_wait_for_card=1 \
    persist.radio.oem_ind_to_both=false \
    persist.radio.relay_oprt_change=1

# RIL
ifeq ($(QCPATH),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml
endif
