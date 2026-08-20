### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Kernels by Xiaomi Developers for Redmi Note 8 Pro (begonia).
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=begonia
device.name2=begoniain
supported.versions=11 - 15
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

# boot shell variables
BLOCK=/dev/block/platform/bootdevice/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=0;
NO_MAGISK_CHECK=1;
NO_VBMETA_PARTITION_PATCH=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot;

write_boot;
## end boot install
