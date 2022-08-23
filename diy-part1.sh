#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# ./scripts/feeds update kenzo
# ./scripts/feeds update small
# ./scripts/feeds install -a -f -p kenzo
# ./scripts/feeds install -a -f -p small
# sed -i "/kenzo/d" "feeds.conf.default"
# sed -i "/small/d" "feeds.conf.default"

# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# ./scripts/feeds update helloworld
# ./scripts/feeds install -a -f -p helloworld
# sed -i "/helloworld/d" "feeds.conf.default"

# ./scripts/feeds clean
# ./scripts/feeds update -a
# ./scripts/feeds install -a
