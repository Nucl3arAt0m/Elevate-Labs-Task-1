# Nmap Scan Notes

## IP Address and Open Ports
- **IP**: `192.168.192.94`
- **Ports and Services**:
  - `22/tcp`: Open, SSH
  - `80/tcp`: Open, HTTP
  - `902/tcp`: Open, iss-realsecure

## Wireshark Findings
- Observed SYN-ACK responses from `192.168.192.94` on ports `22` and `80`.

## Service and Version Details
- **Port 22**:
  - **Service**: SSH
  - **Version**: OpenSSH 9.6p1 Ubuntu 3ubuntu13.12 (Ubuntu Linux; protocol 2.0)
- **Port 80**:
  - **Service**: HTTP
  - **Version**: Apache httpd 2.4.58 (Ubuntu)
- **Service Info**:
  - **OS**: Linux
  - **CPE**: `cpe:/o:linux:linux_kernel`

## Service Descriptions
- **Port 22 (SSH)**:
  - Used for secure remote login to Linux systems, secure file transfer, and command-line interface (CLI) access.
- **Port 80 (HTTP)**:
  - Used for serving websites over an unencrypted connection.
  - Handles web traffic from browsers.
  - Note: Since port 80 is not encrypted, HTTPS (port 443) is preferred for secure website browsing.
- **Port 902 (iss-realsecure)**:
  - Associated with VMware or ISS RealSecure, often used for virtualization or intrusion detection systems.

## Security Risks
- **Port 22 (SSH)**:
  - Risk of brute-force attacks if weak passwords are used.
- **Port 80 (HTTP)**:
  - Lack of encryption allows attackers to intercept sensitive data.
  - Vulnerable to Man-in-the-Middle (MITM) attacks.
- **Port 902 (iss-realsecure)**:
  - Potential vulnerabilities in VMware or ISS software if unpatched, exposing the system to exploits.

## Mitigations
- **Port 22 (SSH)**:
  - Implement SSH keys for authentication.
  - Restrict access via firewall (e.g., allow only specific IPs).
  - Keep SSH software updated to patch vulnerabilities.
- **Port 80 (HTTP)**:
  - Deploy a Web Application Firewall (WAF) to protect against web-based attacks.
  - Redirect HTTP traffic to HTTPS using Transport Layer Security (TLS).
  - Regularly update Apache server to address known vulnerabilities.
- **Port 902 (iss-realsecure)**:
  - Ensure VMware or ISS software is updated.
  - Restrict access to trusted networks via firewall rules.
