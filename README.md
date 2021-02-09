# Build OpenWRT
## 关于固件

### 机型

| 厂商       | 机型 | 编译      |
| ------------ | ---- | ----------- |
| Raspberry Pi | 4B   | [Lean·master](https://github.com/QuentinHsu/Build-OpenWRT/actions?query=workflow%3A%22Build+RPi4B+Lean%27+OpenWRT%22) |

### 默认后台控制页面访问地址

**192.168.100.1**

### 插件

只记录特定功能的插件：

- 系统
  - TTYD 终端
- 服务
  - Pass Wall
  - ShadowSocksR Plus+
  - 上网时间控制
  - UPnP
- 网络
  - Turbo ACC 网络加速设置 - Shortcut FE 版

### 特色

- 插上受驱动支持的 USB 转以太网口网卡，自动配置 WAN 口联网。
  - 无需手动配置 WAN 口。
- 支持 iPhone、Android 通过 USB 共享网络。

## Acknowledgments

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

- [P3TERX](https://github.com/P3TERX)
- [SuLingGG](https://github.com/SuLingGG)
- [seatle](https://github.com/owner888)
- [Wait](https://github.com/itswait)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © P3TERX
