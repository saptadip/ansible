# Description
The repository contains ansible codes for automatic setup of Raspberry Pi 3 on Raspbian OS. <br />
<br />Customization: <br />
--------------<br />
Set local timezone to CEST <br />
Install Python packages: virtualenv <br />
Install OS Packages: vi, git, tree, docker, nodejs, locate, dnsutils, dos2unix, tightvnc-server <br />
Reomve OS Packages: wolfram-engine <br />
Set history command to display date time format <br />
SSH config change: PermitRootLogin_NO, AllowUsers_pi <br />

# Pre-requisite:
- Hardware: Raspberry Pi 3
- Operating System: Raspbian GNU/Linux 8 (jessie)
- Software: Ansible 2.3.1.0 or higher
- Others: Stable internet connectivity

# How it works:
- With user "pi", create "projects" folder: <i><b> cd ~ && mkdir projects && cd projects </b></i>
- Clone the git repository: <i><b> git clone https://github.com/saptadip/ansible.git </i></b>
- Go inside "ansible" directory: <i><b> cd ansible </i></b>
- Add target server names/IPs in the <i><b>"host"</i></b> file under the group <i><b>"[docker-nodes]"</i></b>
- Run the playbook: <i><b>ansible-playbook rpi-setup-master-playbook.yml</i></b>

# Tips & Trciks
- Most of the customization parameters are defined under <i>"ansible/group_vars/docker-nodes.yml"</i> file.
- To install any additional OS package, add the package name under <b>apt_packages_to_install</b> variable.
- To install any additional OS package, add the package name under <b>apt_packages_to_uninstall</b> variable.
- To install any additional Python package, add the package name under <b>pip_packages_to_install</b> variable.
- To set a different timezone, change <b>local_timezone</b> variable.
- To install different version of NodeJs, change value of <b>nodejs_version</b> variable.
- To allow more users to connect through ssh to RPi, add the user name of <b>allowed_ssh_users</b> seperated by single space. Example: To allow three users with user name "user1", "user2" & "user3", set the variable to: </br><b>allowed_ssh_users user1 user2 user3</b>
