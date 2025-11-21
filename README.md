# Wazuh configuration files for Arch Linux (deskop single-node)

When I was deploying a single-node Wazuh server using Docker, as well as Wazuh agent provided by official AUR, I realised it didn't work so smoothly as I expect it would be. 

This repository contains some configuration files that might be useful if you want to install Wazuh on your local Arch Linux machine, as a part of a home lab or for real security information and events management.

Let's assume you've already done the following:

1. Pulled official Wazuh repository and Docker images for single-node installation
2. Initialized Wazuh containers using Docker Compose.
3. Downloaded and installed the Wazuh agent from AUR.
