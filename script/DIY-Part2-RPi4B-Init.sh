# 修改默认的 LAN IPv4 地址
sed -i 's/192.168.1.1/192.168.100.1/' package/base-files/files/bin/config_generate

#支持 iPhone、Android USB 共享网络，无需手动配置 WAN
sed -i '/exit 0/i uci set network.usb_network=interface' package/lean/default-settings/files/zzz-default-settings
  # 树莓派4b 将 USB 网卡识别并设置成 erh1
sed -i "/exit 0/i uci set network.usb_network.ifname='eth1 usb0'" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set network.usb_network.proto=dhcp" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set network.usb_network.type=bridge" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set firewall.@zone[1].network='wan wan6 usb_network'" package/lean/default-settings/files/zzz-default-settings

# 板载 Wi-Fi 设置
sed -i "/exit 0/i uci set wireless.radio0.country='US'" package/lean/default-settings/files/zzz-default-settings
# Legacy = 11g(2.4G)|11a(5G)、AC = VHT20(20,40,80)、N = HT20(20,40,80)
sed -i "/exit 0/i uci set wireless.radio0.htmode='HT40'" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set wireless.default_radio0.ssid='OpenWRTRouter'" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set wireless.default_radio0.encryption='psk2'" package/lean/default-settings/files/zzz-default-settings
sed -i "/exit 0/i uci set wireless.default_radio0.key='openwrt'" package/lean/default-settings/files/zzz-default-settings