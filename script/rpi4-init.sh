#支持 iPhone、Android USB 共享网络，无需手动配置 WAN
# uci set network.usb_network=interface
  # 树莓派4b 将 USB 网卡识别并设置成 erh1
# uci set network.usb_network.ifname='eth1 usb0'
# uci set network.usb_network.proto=dhcp
# uci set network.usb_network.type=bridge
# uci set firewall.@zone[1].network='wan wan6 usb_network'

# 修改默认的 LAN IPv4 地址
sed -i 's/192.168.1.1/192.168.100.1' package/base-files/files/bin/config_generate
