#  _____ _                         
# /__   \ |__   ___ _ __ ___   ___ 
#   / /\/ '_ \ / _ \ '_ ` _ \ / _ \
#  / /  | | | |  __/ | | | | |  __/
#  \/   |_| |_|\___|_| |_| |_|\___|
                                 
# Clone community packages to package/community
mkdir package/community
pushd package/community

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
# rm -rf ../lean/luci-theme-argon

popd