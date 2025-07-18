# Elevate-Labs-Task-1
## Day 1: Nmap Cybersecurity Task
### Overview
This repository contains the deliverables for Day 1 of my cybersecurity internship with Elevate Labs, completed on June 23, 2025. The task involves using Nmap to perform a TCP SYN scan on a local network, analyzing results, and documenting findings. The goal is to identify live hosts, open ports, associated services, and potential security risks, with optional packet analysis using Wireshark.
### Task Requirements

1. Install Nmap from the official website.
2. Find the local IP range (e.g., 192.168.1.0/24).
3. Run nmap -sS 192.168.1.0/24 for a TCP SYN scan.
4. Note IP addresses and open ports found.
5. Optionally analyze packet capture with Wireshark.
6. Research common services on open ports.
7. Identify potential security risks.
8. Save scan results as text or HTML.

### Tools Used

-> Nmap: Network scanning tool (version 7.95).

-> Wireshark: Packet analysis tool (version 4.2.5).

-> xsltproc: For converting Nmap XML to HTML.

-> Git: Version control for repository management.

-> Ubuntu 24.04 LTS: Operating system.

### Execution Steps

1. #### Installed Nmap:
   
   ```sudo apt update && sudo apt install nmap```

      -> Verified: ``nmap --version``


2. #### Found Local IP Range:
   `ip addr show | grep inet`


      -> Output: ```inet 192.168.192.94/24```, range: ```192.168.192.255/24```.


3. #### Ran TCP SYN Scan:
   
   ```sudo nmap -sS 192.168.1.0/24 -oN scan_results.txt -oX scan_results.xml```


      -> Converted XML to HTML:
   
   ```xsltproc scan_results.xml -o scan_results.html```
    




5. #### Noted IPs and Ports (see notes.md)


6. #### Wireshark Analysis:
      -> Captured scan traffic on wlp1s0 interface.

      -> Filtered: tcp.flags.syn == 1.

      -> Saved as nmap_capture.pcap.

      -> Findings: Confirmed SYN-ACK responses for open ports.


7. #### Researched Services (see notes.md):
      -> Port 22: SSH (OpenSSH, remote access).

      -> Port 80: HTTP (Apache/Nginx, web server).


8. #### Identified Risks (see notes.md):
     -> Port 22: Brute-force risk; mitigated by SSH keys.
   
     -> Port 80: Web exploits; mitigated by updates.


9. #### Saved Results:
     -> Text: scan_results.txt
   
     -> HTML: scan_results.html



### Files in Repository

-> scan_results.txt: Nmap text output.

-> scan_results.xml: Nmap XML output.

-> scan_results.html: HTML report.

-> notes.md: IPs, ports, services, risks, and Wireshark findings.

-> nmap_capture.pcap: Wireshark capture (optional).

-> nmap_scan.sh: Bash script for scan automation.

### Automation Script

nmap_scan.sh: Automates Nmap scan and HTML conversion.

  ```chmod +x nmap_scan.sh```
  
  ```./nmap_scan.sh```



### Learnings

-> Understood TCP SYN scanning and its stealth nature.

-> Learned to parse Nmap outputs and convert to HTML.

-> Gained experience with Wireshark for packet analysis.

-> Improved Linux command-line skills and debugging.

-> Recognized importance of network security assessments.



### Acknowledgments
  Thank you to Elevate Labs for this opportunity to learn cybersecurity hands-on.     I’m excited to grow over the next 30 days!
