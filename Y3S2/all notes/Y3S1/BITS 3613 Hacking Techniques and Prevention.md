**Cybersecurity Incident Report**
myCert Statistic 

##### Resources
- [hacksplaining](https://www.hacksplaining.com/)
- cve.mitre.org (Common Vulnerability Expoxure)
- exploit-db.com (Exploit Database)
- OSINT framework
Maltego
- owasp.org top 10 (vulnerability list)
- Shodan.io (info website)
- [Find info on registered domain](https://mynic.my/whois/)
- msf5 (metasploit exploit)
- meterpreter - advance payload injection
- hydra - bruteforce ftp
- sqlmap
- [hashID | hash-identifier](http://psypanda.github.io/hashID/)

Password for windows -> NLTM Format
-> Use bruteforce attack (encrypted library of password)

SNMP -> Protocol to monitor network

inurl: phpmyadmin

##### Footprinting and Reconnaissance

[nmap Scan Port](https://phoenixnap.com/kb/nmap-scan-open-ports)
[nmap Cheat Sheet](https://www.stationx.net/nmap-cheat-sheet/)

Layer 3 - IP protocols:
- IPv4
- IPv6
- ICMP
- ARP - address resolution protocol (relate MAC dan IP)

Layer 4 - Transport protocol:
- TCP
- UDP

> nmap -Y4 -A -v 192.168.202.138
> nmap -A -T4 -p- 10.10.10.4
> rustscan -a [ip] -p [port]



##### Research
- create program to buffer overflow
- [Network Protocol Cheat Sheet](https://www.exploit-db.com/docs/48120)
- Search: how to exploit buffer overflow in c / exploiting stack overflow
- Search: How to read network flag bits

![[metasploit cheat sheet.png]]

##### Random Notes

**Hacking Listen Port**
> nc -nvlp 1234