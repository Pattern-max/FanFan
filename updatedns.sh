#!/bin/bash

# 切换到AdGuardHome目录
cd /root/AdGuardHome

# 停止AdGuardHome服务
systemctl stop AdGuardHome

# 删除whitelist_full_combine.txt
rm whitelist_full_combine.txt

# 下载最新的whitelist_full_combine.txt文件
wget https://github.com/hezhijie0327/GFWList2AGH/raw/refs/heads/main/gfwlist2adguardhome_new/whitelist_full_combine.txt

# 启动AdGuardHome服务
systemctl start AdGuardHome