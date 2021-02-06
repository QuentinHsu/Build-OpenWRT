# 修改默认的 LAN IPv4 地址
sed -i 's/192.168.1.1/192.168.100.1/' package/base-files/files/bin/config_generate

#支持 iPhone、Android USB 共享网络，无需手动配置 WAN
sed -i '/exit 0/i uci set network.usb_network=interface' package/lean/default-settings/files/zzz-default-settings
  # 树莓派4b 将 USB 网卡识别并设置成 erh1
sed -i "/exit 0/i uci set network.usb_network.ifname='eth1 usb0'" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set network.usb_network.proto=dhcp" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set network.usb_network.type=bridge" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set firewall.@zone[1].network='wan wan6 usb_network'" package/lean/default-settings/files/zzz-default-settings