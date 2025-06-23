IP: 192.168.192.94

PORT    STATE SERVICE
22/tcp  open  ssh
80/tcp  open  http
902/tcp open  iss-realsecure

Observed SYN-ACK respones from 192.168.192.94 on port 22 and 80

PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 9.6p1 Ubuntu 3ubuntu13.12 (Ubuntu Linux; protocol 2.0)
80/tcp open  http    Apache httpd 2.4.58 ((Ubuntu))
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

port 22 is used for secure remote login to linux systems, secure file transfer and CLI

port 80 is used for http service, Serving websites over an unencrypted connection and is also used for web traffic from browsers. Since this port is not encrypted, HTTPS is used for secure website browsing (port 443)

Risks from open ports:

--> On open port 22, there is riskmof brute force attacksa if wek passwords are used
--> On port 80, since there is not encryption, it allows attackers to intercept sensitive data and allow them to perform Man-In-The-Middle attacks.

Mitigations:

--> On port 22: Implement SSH keys and restrict access via firewall. 
		Keep SSH software updated.

--> On port 80: Use WAF(Web Application Firewall) 
		Redirect HTTP to HTTPS using TLS(Transport Laper Security).
		

		
