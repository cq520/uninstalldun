#!/bin/bash

echo net.core.default_qdisc=fq >> /etc/sysctl.conf
echo net.ipv4.tcp_congestion_control=bbr >> /etc/sysctl.conf
sysctl -p
echo  "以开启BBR"
lsmod | grep bbr
echo  "BBR开启成功"
echo -e "=================================================================="
echo -e "=================================================================="

echo  "开启SHH远程登录"
echo PermitRootLogin yes >> /etc/ssh/sshd_config
echo PasswordAuthentication yes >> /etc/ssh/sshd_config
/etc/init.d/ssh restart
echo  "开启SHH远程登录成功"
rm -rf opbbrssh.sh