#! /bin/sh
cat /etc/pihole/dhcp.leases | awk '{printf strftime("%F %T",$1) " | " $2 " | "}{printf "%-14s",$3}{printf" | " $4 "\n\r" }' | sort
echo -n "Total leases: "
cat /etc/pihole/dhcp.leases | wc --lines
echo
