#!/bin/bash
[ -w /usr/local/bin ] && SUDO="" || SUDO=sudo
$SUDO apt-get update 
$SUDO apt-get install \
    curl  -y
# $SUDO apt-get install \
#     apt-transport-https \
#     ca-certificates \
#     curl \
#     gnupg-agent \
#     software-properties-common -y

# $SUDO curl -fsSL https://download.docker.com/linux/debian/gpg | $SUDO apt-key add -
# $SUDO add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/debian \
#    $(lsb_release -cs) \
#    stable"
# $SUDO apt-get update
# $SUDO apt-get install docker-ce docker-ce-cli containerd.io
cd /tmp
$SUDO curl -sL https://aka.ms/InstallAzureCLIDeb | $SUDO bash
cd /tmp
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl
$SUDO chmod +x ./kubectl
$SUDO mv ./kubectl /usr/local/bin
(cd /tmp;curl -LO https://get.helm.sh/helm-v3.4.0-linux-amd64.tar.gz;tar xvf helm-v3.4.0-linux-amd64.tar.gz;$SUDO mv linux-amd64/helm /usr/local/bin/)
$SUDO chmod +x /usr/local/bin/helm
helm version
$SUDO rm -rf /tmp/*



