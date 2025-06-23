#!/bin/bash
# File: nmap_scan.sh
IP_RANGE="192.168.192.0/24"  # Replace with your range
sudo nmap -sS $IP_RANGE -oN scan_results.txt -oX scan_results.xml
xsltproc scan_results.xml -o scan_results.html
