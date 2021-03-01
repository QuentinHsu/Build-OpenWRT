# 修改默认的 LAN IPv4 地址
sed -i 's/192.168.1.1/192.168.100.1/' package/base-files/files/bin/config_generate

# Add build date to index page
export orig_version="$(cat "package/base-files/files/etc/openwrt_release" | grep DISTRIB_DESCRIPTION | awk -F "'" '{print $2}')"
sed -i "s/${orig_version}/${orig_version} ($(date +"%Y-%m-%d"))/g" package/base-files/files/etc/openwrt_release


exit 0