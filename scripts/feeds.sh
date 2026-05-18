#!/bin/bash

echo "Updating OpenWrt feeds configuration..."
sed -Ei 's|git.openwrt.org/(feed\|project)|github.com/openwrt|g' ./feeds.conf.default

cat >> ./feeds.conf.default <<EOF
# Extra feeds
# src-git openwrt_packages https://github.com/kenzok8/openwrt-packages
# src-git small https://github.com/kenzok8/small
src-git small_package https://github.com/kenzok8/small-package

# Extra packages
src-git luci_app_3ginfo_lite https://github.com/4IceG/luci-app-3ginfo-lite
src-git luci_app_lite_watchdog https://github.com/4IceG/luci-app-lite-watchdog
src-git luci_app_modemband https://github.com/4IceG/luci-app-modemband
src-git luci_app_sms_tool_js https://github.com/4IceG/luci-app-sms-tool-js
src-git luci_app_xray https://github.com/yichya/luci-app-xray
src-git modemband https://github.com/obsy/modemband
src-git my_pkg https://github.com/EXTVoid/My_PKG
src-git v2raya_openwrt https://github.com/v2rayA/v2raya-openwrt
src-git zapret https://github.com/remittor/zapret-openwrt;zap1
src-git zapret2 https://github.com/EXTVoid/zapret-openwrt;master
EOF
