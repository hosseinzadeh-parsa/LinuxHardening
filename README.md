LinuxHardening
This repository provides tools, scripts, and configurations to enhance the security of Linux-based systems through system hardening techniques. It includes recommendations for securing user accounts, configuring firewalls, managing services, and applying kernel-level protections.
Table of Contents

Overview
Features
Installation
Usage
Contributing
License

Overview
The LinuxHardening repository is designed to help system administrators and security enthusiasts secure Linux environments. It includes shell scripts, configuration files, and documentation to implement best practices for Linux system security, such as disabling unnecessary services, enforcing strong permissions, and configuring secure network settings.
Features

User Account Hardening: Scripts to enforce strong password policies and disable unused accounts.
Firewall Configuration: Templates for setting up iptables or nftables rules.
Service Management: Tools to disable unnecessary services and secure running ones.
Kernel Hardening: Configurations for sysctl parameters to enhance security.
File Permissions: Scripts to audit and enforce secure file permissions.

Installation

Clone the repository:git clone https://github.com/hosseinzadeh-parsa/LinuxHardening.git
cd LinuxHardening


Ensure you have the necessary permissions to run scripts (e.g., sudo for system-wide changes).
Install any required dependencies (e.g., bash, iptables, or auditd):sudo apt-get install bash iptables auditd



Usage

Review Scripts: Check the scripts in the scripts/ directory to understand their purpose.
Run Hardening Scripts: Execute the desired scripts with appropriate permissions. For example:sudo bash scripts/harden_users.sh


Apply Configurations: Copy configuration files (e.g., sysctl.conf) to the appropriate system directories:sudo cp configs/sysctl.conf /etc/sysctl.d/90-hardening.conf
sudo sysctl -p /etc/sysctl.d/90-hardening.conf


Verify Changes: Use the provided audit scripts to check the system’s security posture:bash scripts/audit.sh



Note: Always back up your system before applying changes, as some configurations may affect system behavior.
Contributing
Contributions are welcome! To contribute:

Fork the repository.
Create a new branch (git checkout -b feature-branch).
Commit your changes (git commit -m "Add new feature").
Push to the branch (git push origin feature-branch).
Open a pull request.

Please ensure your contributions align with Linux security best practices and include clear documentation.
License
This project is licensed under the MIT License. See the LICENSE file for details.
