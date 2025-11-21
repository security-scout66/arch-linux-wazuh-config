# Wazuh configuration files for Arch Linux (deskop single-node)

When I was deploying a single-node Wazuh server using Docker, as well as Wazuh agent provided by official AUR, I realised it didn't work so smoothly as I expect it would be. 

This repository contains some configuration files that might be useful if you want to install Wazuh on your local Arch Linux machine, as a part of a home lab or for real security information and events management.
Let's assume you've already done the following:

1. Pulled official Wazuh repository and Docker images for single-node installation
2. Initialized Wazuh containers using Docker Compose.
3. Downloaded and installed the Wazuh agent from AUR.

To make the Wazuh server and agent work with each other, you will need to do the following:

1. First, create a unit file for Wazuh agent, if it was not created automatically. You will need to edit the "ExecStart" parameter since the provided wazuh-control executable does not activate all neccessary components for some reason.
2. Make a separate script which handles the Wazuh agent components initialization. I made a small and dirty script which launches all components, makes them send verbose logs to particular log files, and read a configuration file, specified by it's full path, since it seems like all components are harcoded to look into "etc/" directory, which is nonexistent.
3. Make changes to the "/var/ossec/etc/ossec.conf" file. Replace all relative "etc/" paths with full paths and make some additional changes to include files/directories you need to check. I included checks for all important Linux files I could think of, as well as logs by Wazuh components and rsyslog log files.
4. I changed the "<config-profile>" option to "generic, linux" instead of "centos".

