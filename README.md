
# Summary

This short shell script reads the **dhcp.leases** file and delivers its output in a human readable manner aka table view.
dhcp.leases is created by [Dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html), a combined DNS and DHCP server. In case you configure it to act as DHCP in your network, it creates the file dhcp.leases to store the active DHCP leases.

[Pi-hole](https://pi-hole.net) is also using a modified Dnsmasq version in its core, so this script can also be used here if you need a sneak peek on your DHCP leases on your console. Actually, the path being used in the script refers to my PiHiole installation and you need to change it according to your environment.

Don't forget to make the script executable.

	chmod +x show_DHCP_lease.sh

## Example output

	pi@pihole ~> ./show_DHCP_lease.sh

	2023-11-27 09:50:40 | 04:b4:xx:44:c4:fd | 192.168.66.117 | TabletSamsungTabA10
	2023-11-27 10:13:59 | 3c:2a:uu:e7:80:8a | 192.168.66.44  | drucker
	2023-11-27 11:34:48 | 1c:zz:f9:d3:fb:8c | 192.168.66.120 | GoogleNestDoorbell

