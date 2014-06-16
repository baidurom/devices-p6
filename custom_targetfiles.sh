
echo "in $0"

OUT_DIR=out/merged_target_files/
OUT_SYSTEM_DIR=out/merged_target_files/SYSTEM

mkdir -p out/server/image
cp -rf overlay/server/image/* out/server/image

