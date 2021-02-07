# Raspberry Pi & iPad Pro
An Ansible playbook to enable ethernet over USB

----
I recently found out that it is possible to configure a Raspberry Pi to be used over a **single** USB cable. The configuration for the **Zero** is pretty straight forward:

## Raspberry Pi Zero
- Flash the latest version of Raspberry Pi OS to a microSD card.
- Create an empty file called `ssh`, no extension, just `ssh`.
- On your computer, open the `boot` partition.
- Open the `config.txt` file and add `dtoverlay=dwc2` as a new line.
- Open the `cmdline.txt` file and insert `modules-load=dwc2,g_ether` after `rootwait`. This is a one-line file, don’t add new lines or spaces.
After this, you can simply connect your Raspberry Pi Zero to the iPad Pro and connect via **ssh** using `raspberry.local` as the address.
---- 
## Raspberry Pi 4
The configuration needed to use the Raspberry Pi 4 over USB-C is a bit more complex. Since USB is not directly connected to the processor -as in the Zero-, we can’t just make the changes on the microSD card on the computer, we need to do it directly on the Pi.
I’ve set up an Ansible playbook in order to make this process a bit easier, so here you’ll find instructions on how to use this playbook. 

#### Ansible Playbook
Ansible is a software tool that provides simple but powerful automation for cross-platform support. In this project I used it to automate all the steps required to configure the Raspberry Pi 4.

Warning: This playbook modifies your boot config, make sure you don’t run this anywhere you can’t reformat and re-flash.
#### Installation
I rarely use a display and keyboard with my Raspberry Pi, I prefer to do everything over ssh/vnc while connected to a network, so this guide will assume you will be doing the same.

- Flash the latest version of Raspberry Pi OS to a microSD card.
- You need to enable ssh on the Pi, for this, create an empty file called `ssh` in the root directory of the `boot` partition, no extension, just `ssh`.
- Insert the microSD card to and connect your Pi to boot it up and access it via ssh.
- Install Ansible and Git: `sudo apt update && sudo apt install -y python3-dev python3-pip libyaml-dev libffi-dev git && sudo pip3 install --no-binary pyyaml ansible`
- Clone this repository to your Pi `git clone https://github.com/danmunoz/raspberry-pi-usb-network.git`
- Open the repo directory: `cd raspberry-pi-usb-network`
- Run the Ansible playbook: `ansible-playbook main.yml`
- After installation finishes, shut down the Pi: `sudo shutdown -h now`
- 
After this, you can simply connect your Raspberry Pi 4 to the iPad Pro and connect via ssh using `raspberry.local` or `10.55.0.1` as the address.

Hopefully this will be helpful for anyone looking to use the Raspberry Pi with an iPad Pro, feel free to reach out if you know how to improve this process.

---- 
#### Manual Configuration
In case you'd rather configure this manually, you can find instructions on the post I used to figure this out: [Ben Hardill’s Blog](https://www.hardill.me.uk/wordpress/2019/11/02/pi4-usb-c-gadget/).
