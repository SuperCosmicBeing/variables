sudo curl -sL https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/android_build_env.sh | sh
cd
sudo apt install aria2
aria2c https://tdrive.derpsakura.workers.dev/0:/ccache/derpc.tar.gz -x4 -s50
tar xf derpc.tar.gz
rm -rf derpc.tar.gz
aria2c https://github.com/rclone/rclone/releases/download/v1.56.0/rclone-v1.56.0-linux-amd64.zip
unzip rclone-v1.56.0-linux-amd64.zip
cd rclone-v1.56.0-linux-amd64
sudo cp rclone /bin
cd /data
mkdir derp
cd derp
repo init -u git://github.com/DerpFest-11/manifest.git -b 11 --depth=1
git clone https://github.com/SuperCosmicBeing/frostmanifest -b eleven --depth=1 .repo/local_manifests
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
cd vendor/gms
rm gms_full.mk
wget https://raw.githubusercontent.com/SuperCosmicBeing/variables/master/gms_full.mk
cd ../..
