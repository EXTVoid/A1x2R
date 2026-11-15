#!/bin/bash

echo "Remove packages"
FOLDER=("openwrt_packages" "small" "small_package")
for i in "${FOLDER[@]}"; do
	if [ -d "./feeds/$i" ]; then
		rm -rif ./feeds/"$i"/{base-files,luci-app-3ginfo-lite,luci-app-lite-watchdog,luci-app-modemband,luci-app-sms-tool-js,modemband,sms-tool}
	fi
done
