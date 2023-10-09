# Raspberry Pi & iPad Pro
An Ansible playbook to setup a Raspberry Pi. 
Immutability & Indempotency has been considered as part of this playbook
Some of the features installed into the Pi:
- Usb-c Gadget
- Plex media server
- Zsh with Starship
- QBittorrent
- Script to check Pi's Throttle state
- Tmux & theme
- Mosh
- Docker
- Boot behaviour
- VNC
- Overclocking Pi
- Snap Store
- ExFat external drive support with correct user read/write mask in the fstab

TODOs: Convert this to Galaxy Roles

----
Warning: This playbook modifies your boot config, make sure you don’t run this anywhere you can’t reformat and re-flash.
## Installation

- Flash the latest version of Raspberry Pi OS to a microSD card.
- Use the Raspberry Pi Imager to setup SSH during the flash steps of the Pi
- Insert the microSD card to and connect your Pi to boot it up and access it via ssh.
- Install Ansible and Git: `sudo apt update && sudo apt install -y python3-dev python3-pip libyaml-dev libffi-dev git && sudo pip3 install --no-binary pyyaml ansible`
- Clone this repository to your Pi
- Open the repo directory: 
- Run the Ansible playbook through the script: `./install.sh`
- After installation finishes, Pi will reboot on its own:
----
