# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel Prebuilt
TARGET_PREBUILT_KERNEL := device/asus/Z00T/kernel
TARGET_CUSTOM_KERNEL_HEADERS := device/asus/Z00T/include
BOARD_CUSTOM_BOOTIMG_MK := device/asus/Z00T/mkbootimg.mk
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.selinux=permissive msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100 --dt device/asus/Z00T/dt.img

# Recovery
RECOVERY_VARIANT=twrp
TARGET_RECOVERY_FSTAB := device/asus/Z00T/recovery/root/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partitions
#BOARD_BOOTIMAGE_PARTITION_SIZE := 10444800
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10526720
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1157627904
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 5207080960
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi
TW_NO_USB_STORAGE := true
