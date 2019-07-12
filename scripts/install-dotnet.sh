#!/bin/bash
# Register Microsoft key and feed
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
wget -q https://packages.microsoft.com/config/debian/9/prod.list

# create dir
mv prod.list /etc/apt/sources.list.d/microsoft-prod.list

# chown dir
chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
chown root:root /etc/apt/sources.list.d/microsoft-prod.list

# Install the .NET SDK
apt-get install apt-transport-https ca-certificates
apt-get update
apt-get install dotnet-sdk-2.2
