#!/bin/bash

# Получаем аргументы, которые вы передаете при запуске (eth0, udp, 1194)
eth=$1
proto=$2
port=$3

# Проверка: если аргументы не переданы, используем значения по умолчанию
if [ -z "$eth" ]; then
    eth="eth0"
fi
if [ -z "$proto" ]; then
    proto="udp"
fi
if [ -z "$port" ]; then
    port="1194"
fi

echo "Применяем правила для интерфейса: $eth, протокол: $proto, порт: $port"

# Разрешаем входящие подключения к OpenVPN
iptables -A INPUT -i "$eth" -m state --state NEW -p "$proto" --dport "$port" -j ACCEPT

# Разрешаем трафик на интерфейсе tun+
iptables -A INPUT -i tun+ -j ACCEPT
iptables -A FORWARD -i tun+ -j ACCEPT

# Разрешаем прохождение трафика через другие интерфейсы
iptables -A FORWARD -i tun+ -o "$eth" -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i "$eth" -o tun+ -m state --state RELATED,ESTABLISHED -j ACCEPT

# Включаем NAT (маскарадинг) для выхода клиентов в интернет
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o "$eth" -j MASQUERADE
