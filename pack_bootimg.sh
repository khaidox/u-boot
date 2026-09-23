#!/usr/bin/env bash
# Pack U-Boot binary & DTB into Android Boot Image for Xiaomi Pyxis (SDM710)
set -e

BUILD_DIR="output"
OUT_NAME="pyxis_u-boot_aboot"
DTB_PATH=""

# Parse positional argument or flags
while [[ $# -gt 0 ]]; do
    case "$1" in
        -d|--dir) BUILD_DIR="$2"; shift 2 ;;
        -dtb|--dtb) DTB_PATH="$2"; shift 2 ;;
        -o|--out-name) OUT_NAME="$2"; shift 2 ;;
        -h|--help)
            echo "Usage: $0 [OUTPUT_DIR] [-d DIR] [-dtb DTB_PATH] [-o OUT_NAME]"
            exit 0 ;;
        -*)
            echo "Unknown option: $1"; exit 1 ;;
        *)
            BUILD_DIR="$1"; shift ;;
    esac
done

DTB_PATH="${DTB_PATH:-${BUILD_DIR}/dts/upstream/src/arm64/qcom/sdm710-xiaomi-pyxis.dtb}"
UBOOT_BIN="${BUILD_DIR}/u-boot-nodtb.bin"
UBOOT_GZ="${BUILD_DIR}/u-boot-nodtb.bin.gz"
TEMP_DTB="/tmp/uboot-dtb"
TS=$(date +'%Y%m%d_%H%M%S')
OUT_STAMP="${BUILD_DIR}/${OUT_NAME}_${TS}.img"
OUT_LATEST="${BUILD_DIR}/${OUT_NAME}.img"

ABS_BUILD_DIR=$(realpath "$BUILD_DIR" 2>/dev/null || echo "$BUILD_DIR")
ABS_UBOOT_BIN=$(realpath "$UBOOT_BIN" 2>/dev/null || echo "$UBOOT_BIN")
ABS_DTB=$(realpath "$DTB_PATH" 2>/dev/null || echo "$DTB_PATH")

if [ ! -f "$UBOOT_BIN" ]; then
    echo "Error: U-Boot binary not found at $ABS_UBOOT_BIN" && exit 1
fi
if [ ! -f "$DTB_PATH" ]; then
    echo "Error: DTB file not found at $ABS_DTB" && exit 1
fi

echo "==> Packing U-Boot image (Build dir: $ABS_BUILD_DIR)"
gzip -c "$UBOOT_BIN" > "$UBOOT_GZ"
cat "$UBOOT_GZ" "$DTB_PATH" > "$TEMP_DTB"

if [ ! -f "/tmp/mkbootimg.py" ]; then
    echo "==> Downloading mkbootimg.py & GKI helpers..."
    curl -sSL https://raw.githubusercontent.com/LineageOS/android_system_tools_mkbootimg/lineage-22.2/mkbootimg.py -o /tmp/mkbootimg.py
    mkdir -p /tmp/gki
    curl -sSL https://raw.githubusercontent.com/LineageOS/android_system_tools_mkbootimg/lineage-22.2/gki/generate_gki_certificate.py -o /tmp/gki/generate_gki_certificate.py
    touch /tmp/gki/__init__.py
    chmod +x /tmp/mkbootimg.py
fi

python3 /tmp/mkbootimg.py --kernel_offset 0x00008000 --pagesize 4096 --kernel "$TEMP_DTB" -o "$OUT_STAMP"
cp "$OUT_STAMP" "$OUT_LATEST"

ABS_STAMP=$(realpath "$OUT_STAMP")
ABS_LATEST=$(realpath "$OUT_LATEST")

echo "==> SUCCESS: Android boot image generated"
echo "    Versioned: $ABS_STAMP ($(ls -lh "$OUT_STAMP" | awk '{print $5}'))"
echo "    Latest:    $ABS_LATEST ($(ls -lh "$OUT_LATEST" | awk '{print $5}'))"
echo "==> Fastboot flash command:"
echo "    fastboot flash boot $ABS_LATEST"
