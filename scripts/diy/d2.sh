#!/bin/bash

# 修改默认IP和hostname
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/D2/g' package/base-files/files/bin/config_generate

# 修改opkg源
echo "src/gz openwrt_kiddin9 https://dl.openwrt.ai/latest/packages/mipsel_24kc" >> package/system/opkg/files/customfeeds.conf
