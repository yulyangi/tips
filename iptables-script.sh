#!/bin/bash

### set the policy
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

### delete all rules
iptables -t filter -F
iptables -t nat -F
iptables -t mangle -F
iptables -t raw -F

### delete all user-defined chains
iptables -X

### drop all incomming ssh traffic to 22 port
# iptables -A INPUT -p tcp --dport 22 -j DROP

### drop outgoing http and https traffic
# iptables -A OUTPUT -p tcp --dport 80 -j DROP
# iptables -A OUTPUT -p tcp --dport 443 -j DROP

# iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o enp0s3 -j SNAT --to-source 80.0.0.1 
